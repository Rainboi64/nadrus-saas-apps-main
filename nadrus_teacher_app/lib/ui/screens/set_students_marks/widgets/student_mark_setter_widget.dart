import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:nadrus_teacher_app/ui/widgets/animations/animated_gesture.dart';

import '../../../../models/data/student/student.dart';
import '../../../resources/colors/colors.dart';

class StudentMarkSetterWidget extends StatelessWidget {
  final Student student;
  final Function() setMark;
  const StudentMarkSetterWidget(
      {required this.student, required this.setMark, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 6),
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        border: Border.all(
          color: const Color(0XFFD6D5DC),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            student.fullName(),
            style: const TextStyle(fontSize: 17, color: DesignColors.textColor),
          ),
          AnimatedGesture(
            callback: () {
              setMark();
            },
            child: Text(
              "enter_mark".tr(),
              style: const TextStyle(
                  fontSize: 17, color: DesignColors.primaryColor),
            ),
          ),
        ],
      ),
    );
  }
}
