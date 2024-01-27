import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutterx_live_data/flutterx_live_data.dart';
import 'package:nadrus_teacher_app/router/app_router.dart';
import 'package:nadrus_teacher_app/ui/core/layouts/theme_widget.dart';
import 'package:nadrus_teacher_app/ui/screens/create_exam/widgets/create_exam_success_dialog.dart';
import 'package:nadrus_teacher_app/ui/screens/create_exam/widgets/date_filter.dart';
import 'package:nadrus_teacher_app/ui/shared/selectable_lists/lessons_list.dart';
import 'package:nadrus_teacher_app/ui/shared/selectable_lists/minutes_of_exam_list.dart';
import 'package:nadrus_teacher_app/ui/widgets/base_pop_up_dialog.dart';
import "package:nadrus_teacher_app/ui/widgets/instance/instance_builder.dart";

import '../../../core/layouts/base_scroll_view.dart';
import '../../../shared/screen_top_bar.dart';
import '../../../shared/selectable_lists/exam_type_list.dart';
import '../../../widgets/animations/animated_column.dart';
import '../../../widgets/buttons/customized_button.dart';
import '../../main/widgets/customized_appbar.dart';
import "../viewmodels/create_exam_viewmodel.dart";

class CreateExamMobileScreen extends StatelessWidget {
  const CreateExamMobileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InstanceBuilder<CreateExamViewModel>(
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
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        /// Screen title session grade and class name
                        ScreenTopBar(title: "quiz".tr()),
                        const SizedBox(height: 20),

                        ///Exam Type
                        _title("exam_type"),
                        ExamTypeList(
                            isSurprise: viewModel.params.isSurpriseExam),
                        const SizedBox(height: 30),

                        ///Exam Date

                        LiveDataBuilder<bool>(
                          data: viewModel.params.isSurpriseExam,
                          builder: (context, value) {
                            if (value) {
                              return Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  _title("duration"),
                                  MinutesOfExamList(
                                      selectedMinutesOfExam: viewModel
                                          .params.selectedMinutesOfExam)
                                ],
                              );
                            }
                            return Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                _title("date"),
                                DateFilter(
                                  date: viewModel.params.date,
                                  callback: (date) {
                                    viewModel.params.date.postValue(date);
                                    appRouter.pop();
                                  },
                                ),
                              ],
                            );
                          },
                        ),
                        const SizedBox(height: 30),

                        ///Exam Content
                        _title("exam_content"),
                        SelectableLessonsList(
                            lessons: viewModel.params.suggestedLessons),
                        const SizedBox(height: 30),
                        LiveDataBuilder<bool>(
                          data: viewModel.params.isSurpriseExam,
                          builder: (context, isSurpriseExam) {
                            return LiveDataBuilder<int>(
                              data: viewModel.params.selectedMinutesOfExam,
                              builder: (context, selectedMinutesOfExam) {
                                return SizedBox(
                                  width: double.infinity,
                                  child: CustomizedButton(
                                    //enabled: value.isNotEmpty,
                                    callback: () {
                                      /// Create exam
                                      viewModel.createExam();
                                      BasePopUpDialog.showPopup(
                                        context: context,
                                        child: CreateExamSuccessDialog(
                                          isSurprise: isSurpriseExam,
                                          timerDuration: selectedMinutesOfExam,
                                          done: () {
                                            appRouter.pop();
                                          },
                                        ),
                                      );
                                    },
                                    child: Text("start_quiz".tr()),
                                  ),
                                );
                              },
                            );
                          },
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

  _title(String text) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 14),
      child: Text(
        text.tr(),
        style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w300),
      ),
    );
  }
}
