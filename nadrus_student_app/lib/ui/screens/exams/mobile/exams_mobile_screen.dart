import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutterx_live_data/flutterx_live_data.dart';
import 'package:nadrus_student_app/models/data/exam/exam.dart';
import 'package:nadrus_student_app/ui/core/layouts/theme_widget.dart';
import 'package:nadrus_student_app/ui/screens/exams/widgets/exam_card.dart';
import "package:nadrus_student_app/ui/widgets/instance/instance_builder.dart";

import '../../../../models/data/exam_collection/exam_collection.dart';
import '../../../core/layouts/base_scroll_view.dart';
import '../../../shared/screen_title.dart';
import '../../../widgets/animations/animated_column.dart';
import "../viewmodels/exams_viewmodel.dart";

class ExamsMobileScreen extends StatelessWidget {
  ExamsMobileScreen({Key? key}) : super(key: key);
  List<Exam> x = [
    const Exam(title: "الفصل الأول", subjects: [], scores: []),
    const Exam(title: "الامتحان النهائي", subjects: [], scores: [])
  ];
  @override
  Widget build(BuildContext context) {
    return InstanceBuilder<ExamsViewModel>(
      builder: (viewModel) {
        return ThemeWidget(
          builder: (context, theme) {
            return BaseScrollView(
              child: LiveDataBuilder<List<ExamCollection>>(
                data: viewModel.params.allExamCollection,
                builder: (context, allExamCollection) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 24.0),
                    child: AnimatedColumn(
                      children: [
                        const SizedBox(height: 23),
                        screenTitle("exams".tr()),
                        const SizedBox(height: 14),
                        if (allExamCollection.isNotEmpty)
                          Wrap(
                              spacing:
                                  20.0, // Adjust the spacing between items as needed
                              runSpacing:
                                  16.0, // Adjust the run spacing as needed
                              children: allExamCollection
                                  .map((e) => ExamCard(examCollection: e))
                                  .toList()),
                      ],
                    ),
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
