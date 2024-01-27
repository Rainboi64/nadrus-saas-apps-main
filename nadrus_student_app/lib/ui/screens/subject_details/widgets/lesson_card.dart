import 'package:flutter/material.dart';
import 'package:nadrus_student_app/models/data_models.dart';
import 'package:nadrus_student_app/ui/resources/colors/colors.dart';
import 'package:nadrus_student_app/ui/widgets/animations/animated_gesture.dart';

class LessonCard extends StatefulWidget {
  final bool isFirstElementInTree;
  final Lesson lesson;
  final Function() loadDetails;
  const LessonCard({
    Key? key,
    this.isFirstElementInTree = false,
    required this.lesson,
    required this.loadDetails,
  }) : super(key: key);

  @override
  State<LessonCard> createState() => _LessonCardState();
}

class _LessonCardState extends State<LessonCard> {
  bool showInfo = false;
  //
  // toggleShow() => setState(() {
  //       showInfo = !showInfo;
  //     });

  bool isCompleted = false;

  @override
  void initState() {
    isCompleted = widget.lesson.totalCompletionRate == "0" ? false : true;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      //alignment: Alignment.center,

      children: [
        Opacity(
          opacity: widget.isFirstElementInTree ? 0.0 : 1.0,
          child: Align(
            alignment: Alignment.center,
            child: SizedBox(
              height: 77,
              child: VerticalDivider(
                color: isCompleted
                    ? DesignColors.primaryColor
                    : const Color(0XFFD6D5DC),
              ),
            ),
          ),
        ),
        Align(
          //alignment: Alignment.center,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const SizedBox(width: 24),
                  Opacity(
                    opacity: showInfo ? 1.0 : 0.0,
                    child: _branchCards("الواجب"),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // const SizedBox(width: 40 + 24),
                  // Opacity(
                  //   opacity: showInfo ? 1.0 : 0.0,
                  //   child: SvgPicture.asset('branch'.svgAsset),
                  // ),
                  Padding(
                    padding: const EdgeInsets.only(top: 18),
                    child: AnimatedGesture(
                      callback: () async {
                        // toggleShow();
                        await widget.loadDetails.call();
                      },
                      child: _lessonNameCard(widget.lesson.name ?? ""),
                    ),
                  ),
                  // Padding(
                  //   padding: const EdgeInsets.only(top: 18 + 18),
                  //   child: SizedBox(
                  //     width: 11,
                  //     child: Opacity(
                  //       opacity: showInfo ? 1.0 : 0.0,
                  //       child: const Divider(color: DesignColors.primaryColor),
                  //     ),
                  //   ),
                  // ),
                  // Padding(
                  //   padding: const EdgeInsets.only(top: 18),
                  //   child: Opacity(
                  //     opacity: showInfo ? 1.0 : 0.0,
                  //     child: _branchCards("لدراسة"),
                  //   ),
                  // ),
                ],
              )
            ],
          ),
        ),
      ],
    );
  }

  _lessonNameCard(String name) {
    return Container(
      width: 140,
      padding: const EdgeInsets.symmetric(vertical: 16),
      decoration: BoxDecoration(
        color: isCompleted ? DesignColors.primaryColor : DesignColors.white,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          color:
              isCompleted ? DesignColors.primaryColor : const Color(0XFFD6D5DC),
        ),
      ),
      child: Center(
        child: Text(
          name,
          style: TextStyle(
            color: isCompleted ? DesignColors.white : const Color(0XFFD6D5DC),
            fontSize: 14,
          ),
        ),
      ),
    );
  }

  _branchCards(String title) {
    return Container(
      width: 90,
      padding: const EdgeInsets.symmetric(vertical: 16),
      decoration: BoxDecoration(
        color: DesignColors.white,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          color: DesignColors.primaryColor,
        ),
      ),
      child: Center(
        child: Text(
          title,
          style: const TextStyle(
            color: DesignColors.textColor,
            fontSize: 14,
          ),
        ),
      ),
    );
  }
}
