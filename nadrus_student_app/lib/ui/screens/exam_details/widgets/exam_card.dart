import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:nadrus_student_app/models/data/exam/exam.dart';

import '../../../resources/colors/colors.dart';

class ExamCard extends StatelessWidget {
  final Exam exam;
  const ExamCard({required this.exam, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 105,
      margin: const EdgeInsets.only(bottom: 12),
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 8),
      decoration: BoxDecoration(
          color: DesignColors.white,
          boxShadow: [
            BoxShadow(
              color: const Color(0xFF5C5050).withOpacity(0.05),
              blurRadius: 3,
              spreadRadius: 2,
              offset: const Offset(0, 2),
            ),
          ],
          borderRadius: BorderRadius.circular(8)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              if (exam.date != null)
                Padding(
                  padding: const EdgeInsets.only(bottom: 16.0),
                  child: Text(
                    exam.date!,
                    style: const TextStyle(
                      fontSize: 12,
                      color: Color(0XFFD6D5DC),
                    ),
                  ),
                ),
              if (exam.title != null)
                Text(
                  exam.title!,
                  style: const TextStyle(
                    fontSize: 18,
                  ),
                ),
              if (exam.description != null)
                Text(
                  exam.description!,
                  style: const TextStyle(
                    fontSize: 18,
                  ),
                ),
            ],
          ),
          if (exam.description != null)
            Text(
              "marks_out_of".tr(
                namedArgs: {
                  "mark": exam.deservedScore(),
                  "full_mark": exam.totalScore?.toString() ?? "0",
                },
              ),
              style: const TextStyle(fontSize: 18),
            ),
          // const Text(
          //   "وسط", //todo
          //   style: TextStyle(fontSize: 18, color: DesignColors.primaryColor),
          // ),
        ],
      ),
    );
  }
}
