import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:nadrus_teacher_app/ui/core/layouts/theme_widget.dart';
import 'package:nadrus_teacher_app/ui/resources/colors/colors.dart';
import 'package:nadrus_teacher_app/ui/shared/students_widgets/selectable_students_grid.dart';
import 'package:nadrus_teacher_app/ui/widgets/base_pop_up_dialog.dart';
import 'package:nadrus_teacher_app/ui/widgets/buttons/customized_button.dart';
import "package:nadrus_teacher_app/ui/widgets/instance/instance_builder.dart";

import '../../../core/layouts/base_scroll_view.dart';
import '../../../shared/screen_top_bar.dart';
import '../../../widgets/animations/animated_column.dart';
import '../../main/widgets/customized_appbar.dart';
import "../viewmodels/check_homeworks_viewmodel.dart";
import '../widgets/check_homeworks_pop_up_dialog.dart';

class CheckHomeworksMobileScreen extends StatelessWidget {
  const CheckHomeworksMobileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InstanceBuilder<CheckHomeworksViewModel>(
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
                        /// Screen title
                        ScreenTopBar(title: "check_homework".tr()),

                        SelectableStudentsGrid(
                            students: viewModel.params.students),

                        const SizedBox(height: 30),
                        SizedBox(
                          width: double.infinity,
                          child: CustomizedButton(
                            callback: () {
                              viewModel.checkHomework().then((value) {
                                //show pop up
                                BasePopUpDialog.showPopup(
                                  context: context,
                                  barrierColor: DesignColors.white,
                                  child: CheckHomeworksPopUpDialog(
                                    students: viewModel.params.students,
                                    sendMessageToParents: () {
                                      //chose students which there selected is false
                                    },
                                  ),
                                );
                              });
                            },
                            child: Text("save_check_homework".tr()),
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
