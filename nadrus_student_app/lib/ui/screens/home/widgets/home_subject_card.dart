import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nadrus_student_app/models/data/weekly_schedule/weekly_schedule_day_item/weekly_schedule_day_item.dart';
import 'package:nadrus_student_app/ui/widgets/animations/animated_gesture.dart';
import 'package:nadrus_student_app/ui/widgets/base_pop_up_dialog.dart';

import '../../../resources/colors/colors.dart';

class HomeSubjectCard extends StatelessWidget {
  final WeeklyScheduleDayItem subject;
  HomeSubjectCard({required this.subject, Key? key}) : super(key: key);

  TextStyle style = const TextStyle(
      color: DesignColors.textColor, fontSize: 14, fontWeight: FontWeight.w600);

  @override
  Widget build(BuildContext context) {
    return subject.subject != null
        ? AnimatedGesture(
            callback: () {
              BasePopUpDialog.showPopup(
                  context: context,
                  child: AlertDialog(
                    backgroundColor: DesignColors.white,
                    contentPadding: EdgeInsets.zero,
                    elevation: 0,
                    content: Container(
                      height: 125,
                      decoration: BoxDecoration(
                        color: DesignColors.white,
                        borderRadius: BorderRadius.circular(34),
                      ),
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              "class_time".tr(),
                              style: style.copyWith(fontSize: 18),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "${"from".tr()}:\t",
                                  style: style,
                                ),
                                Text(
                                  subject.fromTime!,
                                  style: style,
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "${"to".tr()}:\t",
                                  style: style,
                                ),
                                Text(
                                  subject.toTime!,
                                  style: style,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ));
            },
            child: Container(
              width: 86,
              padding: const EdgeInsets.fromLTRB(10, 13, 10, 14),
              margin: const EdgeInsetsDirectional.only(end: 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                border: Border.all(color: const Color(0XFFEFE2E6)),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  if (subject.subject!.svgIcon != null)
                    SvgPicture.network(
                      subject.subject!.svgIcon ?? "",
                      height: 32,
                    ),
                  const SizedBox(height: 6),
                  if (subject.subject!.name != null)
                    Text(
                      subject.subject!.name ?? "".tr(),
                      style: const TextStyle(
                          color: DesignColors.textColor,
                          fontSize: 14,
                          fontWeight: FontWeight.w600),
                    ),
                ],
              ),
            ),
          )
        : const SizedBox.shrink();
  }
}
