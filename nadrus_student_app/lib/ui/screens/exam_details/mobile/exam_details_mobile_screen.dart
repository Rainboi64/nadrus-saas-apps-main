import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutterx_live_data/flutterx_live_data.dart';
import 'package:nadrus_student_app/models/data/exam/exam.dart';
import 'package:nadrus_student_app/models/data/exam_collection/exam_collection.dart';
import 'package:nadrus_student_app/models/data/subject/subject.dart';
import 'package:nadrus_student_app/ui/core/layouts/theme_widget.dart';
import 'package:nadrus_student_app/ui/screens/exam_details/widgets/exam_card.dart';
import 'package:nadrus_student_app/ui/screens/exam_details/widgets/subject_tab.dart';
import "package:nadrus_student_app/ui/widgets/instance/instance_builder.dart";

import '../../../shared/customized_app_bar.dart';
import '../../../shared/screen_title.dart';
import '../../../widgets/animations/animated_column.dart';
import '../../../widgets/animations/animated_gesture.dart';
import "../viewmodels/exam_details_viewmodel.dart";

class ExamDetailsMobileScreen extends StatelessWidget {
  const ExamDetailsMobileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InstanceBuilder<ExamDetailsViewModel>(
      builder: (viewModel) {
        return ThemeWidget(
          builder: (context, theme) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: LiveDataBuilder<ExamCollection?>(
                data: viewModel.params.examCollection,
                builder: (context, examCollection) {
                  return Column(
                    children: [
                      if (examCollection != null &&
                          examCollection.title != null)
                        CustomizedAppBar(title: examCollection.title!),
                      AnimatedColumn(
                        children: [
                          const SizedBox(height: 23),
                          screenTitle("exams".tr()),
                          const SizedBox(height: 14),
                          LiveDataBuilder<List<Subject>>(
                            data: viewModel.params.allSubjects,
                            builder: (context, allSubjects) {
                              return SizedBox(
                                height: 40,
                                child: ListView.separated(
                                  itemCount: allSubjects.length,
                                  shrinkWrap: true,
                                  separatorBuilder: (context, index) =>
                                      const SizedBox(width: 8),
                                  itemBuilder: (context, index) =>
                                      AnimatedGesture(
                                    callback: () {
                                      viewModel.changeIndex(index);
                                    },
                                    child: SubjectTab(
                                        subjectName:
                                            allSubjects[index].name.toString(),
                                        isSelected:
                                            allSubjects[index].selected),
                                  ),
                                  scrollDirection: Axis.horizontal,
                                ),
                              );
                            },
                          ),
                          const SizedBox(height: 12),
                          LiveDataBuilder<int>(
                            data: viewModel.params.selectedIndex,
                            builder: (context, selectedIndex) {
                              return LiveDataBuilder<List<Exam>>(
                                data: viewModel.params.allExams,
                                builder: (context, allExams) {
                                  return SizedBox(
                                    height: 117.0 * allExams.length,
                                    child: ListView.builder(
                                        shrinkWrap: true,
                                        physics:
                                            const NeverScrollableScrollPhysics(),
                                        itemBuilder: (context, index) {
                                          return ExamCard(
                                              exam: allExams[index]);
                                        },
                                        itemCount: allExams.length),
                                  );
                                },
                              );
                            },
                          ),
                        ],
                      ),
                    ],
                  );
                },
              ),
            );
          },
        );
      },
    );
  }
}
