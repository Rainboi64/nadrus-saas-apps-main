import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nadrus_student_app/ui/shared/ring_widget.dart';

import '../../../../models/data_models.dart';
import '../../../resources/colors/colors.dart';

class WeeklyScheduleSubjectCard extends StatelessWidget {
  final WeeklyScheduleDayItem subject;
  const WeeklyScheduleSubjectCard({required this.subject, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 85,
      padding: const EdgeInsets.fromLTRB(8, 8, 8, 16),
      // margin: const EdgeInsets.only(bottom: 12),
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
        children: [
          Column(
            children: [
              Text("nth_class_${subject.nthClass}".tr(),
                  style: const TextStyle(
                      color: Color(0XFFD6D5DC),
                      fontSize: 12,
                      fontWeight: FontWeight.w500)),
              const SizedBox(height: 16),
              Row(
                children: [
                  _buildNumberWidget(subject.nthClass.toString()),
                  const SizedBox(width: 9),
                  if (subject.subject != null)
                    Text(subject.subject!.name ?? "",
                        style: const TextStyle(
                            color: DesignColors.textColor,
                            fontSize: 18,
                            fontWeight: FontWeight.w500)),
                ],
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              RingWidget(
                size: 40,
                padding: const EdgeInsets.all(4),
                content: (subject.subject != null)
                    ? subject.subject!.svgIcon != null
                        ? SvgPicture.network(
                            subject.subject!.svgIcon!,
                          )
                        : const SizedBox()
                    : const SizedBox(),
              )
            ],
          )
        ],
      ),
    );
  }

  _buildNumberWidget(String number) {
    return Container(
      padding: const EdgeInsets.all(2),
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(color: const Color(0XFFD6D5DC), width: 1.5)),
      child: Text(
        number,
        style: const TextStyle(
            color: Color(0XFFD6D5DC),
            fontSize: 11,
            fontWeight: FontWeight.bold),
      ),
    );
  }
}
