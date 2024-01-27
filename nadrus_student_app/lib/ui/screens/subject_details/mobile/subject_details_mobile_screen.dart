import 'package:flutter/material.dart';
import 'package:flutterx_live_data/flutterx_live_data.dart';
import 'package:nadrus_student_app/models/data/lesson/lesson.dart';
import 'package:nadrus_student_app/ui/core/layouts/base_scroll_view.dart';
import 'package:nadrus_student_app/ui/core/layouts/theme_widget.dart';
import 'package:nadrus_student_app/ui/screens/subject_details/widgets/lesson_card.dart';
import 'package:nadrus_student_app/ui/shared/customized_app_bar.dart';
import 'package:nadrus_student_app/ui/shared/screen_title.dart';
import 'package:nadrus_student_app/ui/widgets/animations/animated_column.dart';
import "package:nadrus_student_app/ui/widgets/instance/instance_builder.dart";

import '../../../../config/ui_config.dart';
import '../../../widgets/base_bottom_sheet_dialog.dart';
import "../viewmodels/subject_details_viewmodel.dart";
import '../widgets/lesson_details_bottom_sheet.dart';

class SubjectDetailsMobileScreen extends StatelessWidget {
  const SubjectDetailsMobileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InstanceBuilder<SubjectDetailsViewModel>(
      builder: (viewModel) {
        return ThemeWidget(
          builder: (context, theme) {
            return Column(
              children: [
                CustomizedAppBar(
                    title: viewModel.params.subject.value!.name ?? ""),
                SizedBox(
                  height: screenSize(context).height - 127,
                  child: BaseScrollView(
                    child: AnimatedColumn(
                      children: [
                        const SizedBox(height: 23),
                        screenTitle(viewModel.params.subject.value?.name ?? ""),
                        LiveDataBuilder<List<Lesson>>(
                          data: viewModel.params.allLessons,
                          builder: (context, allLessons) {
                            if (allLessons.isNotEmpty) {
                              return SizedBox(
                                height: 128.0 * allLessons.length,
                                child: ListView.builder(
                                  shrinkWrap: true,
                                  physics: const NeverScrollableScrollPhysics(),
                                  itemBuilder: (context, index) {
                                    return LessonCard(
                                        loadDetails: () {
                                          viewModel
                                              .getLessonDetails(
                                                  allLessons[index].id)
                                              .then(
                                                (value) async => {
                                                  if (value != null)
                                                    {
                                                      await BaseBottomSheetDialog
                                                          .showBottomSheet(
                                                        context: context,
                                                        borderRadius: 0,
                                                        child:
                                                            LessonDetailsBottomSheet(
                                                          lessonDetails: value,
                                                        ),
                                                      )
                                                    }
                                                },
                                              );
                                        },
                                        lesson: allLessons[index],
                                        isFirstElementInTree:
                                            (index == 0) ? true : false);
                                  },
                                  itemCount: allLessons.length,
                                ),
                              );
                            }

                            return const SizedBox.shrink();
                          },
                        ),
                        const SizedBox(height: 42),
                      ],
                    ),
                  ),
                ),
              ],
            );
          },
        );
      },
    );
  }
}
