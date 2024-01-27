import 'package:dotted_border/dotted_border.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:nadrus_student_app/models/data/homework/homework.dart';
import 'package:nadrus_student_app/ui/shared/ring_widget.dart';
import 'package:nadrus_student_app/ui/widgets/buttons/customized_button.dart';

import '../../../resources/colors/colors.dart';

class HomeworkCard extends StatefulWidget {
  final Homework homework;
  final Function() solve;
  final Function() unSolve;
  const HomeworkCard({
    Key? key,
    required this.homework,
    required this.solve,
    required this.unSolve,
  }) : super(key: key);

  @override
  State<HomeworkCard> createState() => _HomeworkCardState();
}

class _HomeworkCardState extends State<HomeworkCard> {
  double radius = 18.0;

  Color dottedBorderColor = Colors.transparent;
  bool isPressable = true;
  Color cardColor = Colors.white;
  Color buttonColor = DesignColors.primaryColor;
  Widget? buttonWidget;
  HomeworkStatus? homeworkStatus;
  @override
  void initState() {
    setCardDesign();
    super.initState();
  }

  setCardDesign() {
    homeworkStatus = widget.homework.getHomeworkStatuses();
    switch (homeworkStatus!) {
      case HomeworkStatus.solvedAndCorrected:
        {
          dottedBorderColor = DesignColors.primaryColor;
          isPressable = false;
          cardColor = const Color(0XFFECFBFF);
          buttonWidget = Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(Icons.check),
              const SizedBox(width: 17),
              Text("solved_and_corrected".tr()),
            ],
          );
        }
      case HomeworkStatus.solvedAndNotCorrected:
        {
          dottedBorderColor = DesignColors.primaryColor;
          isPressable = true;
          cardColor = const Color(0XFFECFBFF);
          buttonWidget = Text("solved_and_not_corrected".tr());
        }
      case HomeworkStatus.notSolvedAndCorrected:
        {
          dottedBorderColor = const Color(0XFFE05D8A);
          isPressable = false;
          cardColor = const Color(0XFFFFEFF4);
          buttonColor = const Color(0XFFE05D8A);
          buttonWidget = Text("not_solved_and_corrected".tr());
        }
      case HomeworkStatus.notSolvedAndNotCorrected:
        {
          dottedBorderColor = Colors.transparent;
          isPressable = true;
          cardColor = Colors.white;
          buttonWidget = Text("not_solved_and_not_corrected".tr());
        }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsetsDirectional.only(end: 32),
      child: Stack(
        alignment: Alignment.center,
        children: [
          DottedBorder(
            borderType: BorderType.RRect,
            dashPattern: const [5],
            radius: Radius.circular(radius),
            strokeCap: StrokeCap.round,
            strokeWidth: 1,
            color: dottedBorderColor,
            child: Container(
              width: 291,
              height: 274,
              // margin: const EdgeInsets.only(bottom: 24),
              padding: const EdgeInsets.all(18),
              decoration: BoxDecoration(
                color: cardColor,
                borderRadius: BorderRadius.circular(radius),
                boxShadow: [
                  BoxShadow(
                    color: const Color(0xFF5C5050).withOpacity(0.04),
                    blurRadius: 5,
                    spreadRadius: 6,
                    offset: const Offset(0, 2),
                  ),
                ],
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      if (widget.homework.subjectNotNull())
                        Text(
                          widget.homework.subjectName(),
                          style: const TextStyle(
                              color: Color(0XFFD6D5DC),
                              fontSize: 12,
                              fontWeight: FontWeight.w300),
                        ),
                      RingWidget(
                        size: 26,
                        color: buttonColor,
                      ),
                    ],
                  ),
                  const SizedBox(height: 50),
                  Text(
                    widget.homework.content ?? "",
                    style: const TextStyle(
                        color: DesignColors.textColor,
                        fontSize: 28,
                        fontWeight: FontWeight.w600),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 320,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(34),
                  child: SizedBox(
                    width: 158,
                    child: CustomizedButton(
                        buttonColor: buttonColor,
                        enabled: isPressable,
                        edgeInsets: const EdgeInsets.fromLTRB(0, 10, 0, 12),
                        callback: () {
                          if (isPressable) {
                            if (homeworkStatus ==
                                HomeworkStatus.notSolvedAndNotCorrected) {
                              widget.solve();
                            }
                            if (homeworkStatus ==
                                HomeworkStatus.solvedAndNotCorrected) {
                              widget.unSolve();
                            }
                          }
                        },
                        child: buttonWidget!),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
