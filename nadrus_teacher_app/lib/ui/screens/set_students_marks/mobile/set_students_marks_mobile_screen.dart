import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutterx_live_data/flutterx_live_data.dart';
import 'package:nadrus_teacher_app/ui/core/layouts/theme_widget.dart';
import 'package:nadrus_teacher_app/ui/screens/set_students_marks/widgets/enter_mark_pop_up_dialog.dart';
import 'package:nadrus_teacher_app/ui/screens/set_students_marks/widgets/student_mark_setter_widget.dart';
import 'package:nadrus_teacher_app/ui/widgets/base_pop_up_dialog.dart';
import "package:nadrus_teacher_app/ui/widgets/instance/instance_builder.dart";

import '../../../../router/app_router.dart';
import '../../../core/layouts/base_scroll_view.dart';
import '../../../shared/screen_top_bar.dart';
import '../../../widgets/animations/animated_column.dart';
import '../../../widgets/buttons/customized_button.dart';
import '../../main/widgets/customized_appbar.dart';
import "../viewmodels/set_students_marks_viewmodel.dart";

class SetStudentsMarksMobileScreen extends StatelessWidget {
  const SetStudentsMarksMobileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InstanceBuilder<SetStudentsMarksViewModel>(
      builder: (viewModel) {
        return ThemeWidget(
          builder: (context, theme) {
            return BaseScrollView(
              child: Column(
                children: [
                  customizedAppBar(),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(24, 24, 24, 35),
                    child: AnimatedColumn(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        /// Screen title session grade and class name
                        ScreenTopBar(title: "enter_marks".tr()),

                        const SizedBox(height: 20),
                        LiveDataBuilder(
                          data: viewModel.params.students,
                          builder: (context, value) {
                            return SizedBox(
                              height: 60.0 * value.length + 21.0,
                              child: ListView.builder(
                                // shrinkWrap: true,
                                itemCount: value.length,
                                itemBuilder: (context, index) =>
                                    StudentMarkSetterWidget(
                                  setMark: () {
                                    BasePopUpDialog.showPopup(
                                      context: context,
                                      child: EnterMarkPopDialog(
                                          completeMark: "10",
                                          deservedScore:
                                              viewModel.params.deservedScore,
                                          student: value[index],
                                          sendMark: (mark) {
                                            if (mark != null) {
                                              viewModel.setMark(
                                                  value[index], mark);
                                            }
                                          }),
                                    );
                                  },
                                  student: value[index],
                                ),
                              ),
                            );
                          },
                        ),
                        SizedBox(
                          width: double.infinity,
                          child: CustomizedButton(
                            callback: () {
                              appRouter.replaceAll([const Main()]);
                            },
                            child: Text("done".tr()),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 24),
                ],
              ),
            );
          },
        );
      },
    );
  }
}
