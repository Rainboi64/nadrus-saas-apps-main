import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:nadrus_student_app/models/data/details/details.dart';
import 'package:nadrus_student_app/models/data/lesson_details/lesson_details.dart';
import 'package:nadrus_student_app/router/app_router.dart';
import 'package:nadrus_student_app/ui/widgets/animations/animated_gesture.dart';
import 'package:nadrus_student_app/ui/widgets/buttons/customized_button.dart';

import '../../../../models/data/exam/exam.dart';
import '../../../../models/data/homework/homework.dart';
import '../../../../models/data/whiteboard/whiteboard.dart';
import '../../../resources/colors/colors.dart';
import '../widgets/homework_card.dart';

class LessonDetailsBottomSheet extends StatefulWidget {
  final LessonDetails? lessonDetails;
  const LessonDetailsBottomSheet({required this.lessonDetails, super.key});

  @override
  State<LessonDetailsBottomSheet> createState() =>
      _LessonDetailsBottomSheetState();
}

class _LessonDetailsBottomSheetState extends State<LessonDetailsBottomSheet> {
  late Details details;
  bool hasDetails = false;
  bool hasExams = false;

  initValues() {
    if (widget.lessonDetails != null) {
      if (widget.lessonDetails!.details.isNotEmpty) {
        details = widget.lessonDetails!.details[0];
        hasDetails = true;
      }
      if (widget.lessonDetails!.exams.isNotEmpty) {
        hasExams = true;
      }
    }
  }

  @override
  void initState() {
    initValues();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return !hasDetails && !hasExams
        ? const SizedBox.shrink()
        : SizedBox(
            height: 540,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 25.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          ///Lesson Name

                          if (hasDetails &&
                              details.lesson != null &&
                              details.lesson!.name != null)
                            Text(
                              details.lesson!.name!,
                              style: const TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.w500,
                              ),
                            ),

                          /// Lesson Date
                          if (hasDetails &&
                              details.lesson != null &&
                              details.date != null)
                            Text(
                              details.date!,
                              style: const TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w300,
                                color: Color(0XFFD6D5DC),
                              ),
                            ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 32),

                    /// Lesson's Homeworks
                    if (hasDetails && details.homeworks.isNotEmpty)
                      _buildHomeworksSection(details.homeworks),

                    ///Lesson's Exams
                    if (hasExams && widget.lessonDetails!.exams.isNotEmpty)
                      _buildExamsSection(widget.lessonDetails!.exams),

                    ///Lesson's Whiteboards
                    if (hasDetails && details.whiteboards.isNotEmpty)
                      _buildWhiteboardsSection(details.whiteboards),
                  ],
                ),

                ///Done button
                Padding(
                  padding: const EdgeInsets.only(bottom: 33.0),
                  child: SizedBox(
                    width: double.infinity,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(34.0),
                      child: CustomizedButton(
                        edgeInsets: const EdgeInsets.symmetric(vertical: 11),
                        child: Text("done".tr()),
                        callback: () => appRouter.pop(),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          );
  }

  _buildHomeworksSection(List<Homework> homeworks) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _subtitle(text: "lesson_homeworks".tr(), padding: 0),
        SizedBox(
          height: 160,
          child: ListView.separated(
            separatorBuilder: (context, index) => const SizedBox(
              width: 12.0,
            ),
            scrollDirection: Axis.horizontal,
            itemCount: homeworks.length,
            itemBuilder: (context, index) =>
                HomeworkCard(homework: homeworks[index]),
          ),
        ),
        const SizedBox(height: 30),
      ],
    );
  }

  _buildExamsSection(List<Exam> exams) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _subtitle(text: "lesson_exams".tr()),
        SizedBox(
          height: 60.0 * exams.length,
          child: ListView.builder(
            itemCount: exams.length,
            itemBuilder: (context, index) => Padding(
              padding: const EdgeInsets.only(bottom: 12.0),
              child: _shadowedContainer(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      exams[index].description.toString(),
                      style: const TextStyle(fontSize: 18),
                    ),
                    Text(
                      "marks_out_of".tr(
                        namedArgs: {
                          "mark": exams[index].deservedScore(),
                          "full_mark":
                              exams[index].totalScore?.toString() ?? "0",
                        },
                      ),
                      style: const TextStyle(fontSize: 18),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
        const SizedBox(height: 26),
      ],
    );
  }

  _buildWhiteboardsSection(List<Whiteboard> whiteboards) {
    int length = whiteboards.length;
    return AnimatedGesture(
      callback: () {
        appRouter.push(WhiteboardGallery(whiteboards: whiteboards));
      },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _subtitle(text: "lesson_whiteboards".tr()),
          _shadowedContainer(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "num_of_pictures".tr(namedArgs: {"model": length.toString()}),
                  style: const TextStyle(fontSize: 18),
                ),
                Text(
                  "show_all".tr(),
                  style: const TextStyle(
                      fontSize: 18, color: DesignColors.primaryColor),
                )
              ],
            ),
          ),
          const SizedBox(height: 35),
        ],
      ),
    );
  }

  _subtitle({required String text, double padding = 13.0}) => Padding(
        padding: EdgeInsets.only(bottom: padding),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              text,
              style:
                  const TextStyle(fontSize: 16, fontWeight: FontWeight.normal),
            ),
          ],
        ),
      );

  _shadowedContainer(
          {required Widget child,
          EdgeInsetsGeometry? padding =
              const EdgeInsets.fromLTRB(8, 11, 8, 14)}) =>
      Container(
          padding: padding,
          decoration: BoxDecoration(
            color: DesignColors.white,
            borderRadius: BorderRadius.circular(8.0),
            boxShadow: [
              BoxShadow(
                color: const Color(0xFF5C5050).withOpacity(0.05),
                blurRadius: 3,
                spreadRadius: 2,
                offset: const Offset(0, 2),
              ),
            ],
          ),
          child: child);
}
