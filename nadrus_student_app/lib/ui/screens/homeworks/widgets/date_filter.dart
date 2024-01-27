import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:nadrus_student_app/extensions/date_extension.dart';
import 'package:nadrus_student_app/ui/core/pickers/date_picker.dart';
import 'package:nadrus_student_app/ui/resources/colors/colors.dart';
import 'package:nadrus_student_app/ui/widgets/animations/animated_gesture.dart';

class DateFilter extends StatelessWidget {
  final DateTime date;
  final Function(dynamic) callback;
  const DateFilter({required this.date, required this.callback, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedGesture(
      callback: () {
        AppDateTimePicker.showDatePicker(
          context: context,
          callback: (date) {
            callback(date);
          },
          title: "filter_homeworks_by_date".tr(),
          currentTime: date,
        );
      },
      child: Container(
        // width: 122,
        padding: const EdgeInsetsDirectional.fromSTEB(12, 8, 10, 8),
        decoration: BoxDecoration(
          color: const Color(0XFFFAFAFA),
          borderRadius: BorderRadius.circular(4),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(width: 25),
            Text(
              date.isToday() ? "today".tr() : date.formatDate(),
              style: const TextStyle(
                color: DesignColors.textColor,
                fontSize: 16,
              ),
            ),
            const SizedBox(width: 31),
            const Icon(
              Icons.keyboard_arrow_down_outlined,
              color: DesignColors.textColor,
              size: 18,
            ),
          ],
        ),
      ),
    );
  }
}
