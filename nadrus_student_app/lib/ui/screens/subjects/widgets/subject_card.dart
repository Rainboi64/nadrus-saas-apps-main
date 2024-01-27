import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nadrus_student_app/models/data/subject/subject.dart';
import 'package:nadrus_student_app/router/app_router.dart';
import 'package:nadrus_student_app/ui/resources/colors/colors.dart';
import 'package:nadrus_student_app/ui/shared/ring_widget.dart';
import 'package:nadrus_student_app/ui/widgets/animations/animated_gesture.dart';

class SubjectCard extends StatelessWidget {
  final Subject subject;
  const SubjectCard({required this.subject, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedGesture(
      callback: () {
        appRouter.push(SubjectDetails(subject: subject));
      },
      child: Container(
        height: 180,
        width: 180,
        padding: const EdgeInsets.fromLTRB(0, 18, 0, 20), //28, 32
        decoration: BoxDecoration(
            border: Border.all(color: const Color(0XFFD6D5DC)),
            borderRadius: BorderRadius.circular(8)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            RingWidget(
                size: 56, content: SvgPicture.network(subject.svgIcon ?? "")),
            const SizedBox(height: 16),
            Text(subject.name ?? "",
                style: const TextStyle(
                    color: DesignColors.textColor,
                    fontSize: 16,
                    fontWeight: FontWeight.w500)),
            const SizedBox(height: 8),
            Text(
                "num_lessons"
                    .tr(namedArgs: {"model": subject.lessonsCount.toString()}),
                style: const TextStyle(
                    color: Color(0XFFD6D5DC),
                    fontSize: 14,
                    fontWeight: FontWeight.w300))
          ],
        ),
      ),
    );
  }
}
