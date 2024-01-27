import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutterx_live_data/flutterx_live_data.dart';
import 'package:nadrus_teacher_app/models/data/student/student.dart';
import 'package:nadrus_teacher_app/ui/core/layouts/theme_widget.dart';
import "package:nadrus_teacher_app/ui/widgets/instance/instance_builder.dart";

import '../../../core/layouts/base_scroll_view.dart';
import '../../../shared/screen_top_bar.dart';
import '../../../shared/students_widgets/selectable_students_grid.dart';
import '../../../widgets/animations/animated_column.dart';
import '../../../widgets/buttons/customized_button.dart';
import '../../main/widgets/customized_appbar.dart';
import "../viewmodels/oral_test_viewmodel.dart";

class OralTestMobileScreen extends StatelessWidget {
  const OralTestMobileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InstanceBuilder<OralTestViewModel>(
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
                        ScreenTopBar(title: "oral_test".tr()),

                        SelectableStudentsGrid(
                          students: viewModel.params.students,
                          selectedStudents: viewModel.params.selectedStudents,
                        ),

                        const SizedBox(height: 30),
                        LiveDataBuilder<List<Student>>(
                            data: viewModel.params.selectedStudents,
                            builder: (context, value) {
                              return SizedBox(
                                width: double.infinity,
                                child: CustomizedButton(
                                  enabled: value.isNotEmpty,
                                  callback: () {
                                    /// Create exam
                                    viewModel.createExamsCollection();
                                  },
                                  child: Text("start".tr()),
                                ),
                              );
                            }),
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
