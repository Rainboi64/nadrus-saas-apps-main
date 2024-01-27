import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutterx_live_data/flutterx_live_data.dart';
import 'package:nadrus_teacher_app/extensions/date_extension.dart';

import '../../../core/pickers/date_picker.dart';
import '../../../resources/colors/colors.dart';
import '../../../widgets/animations/animated_gesture.dart';

class DateFilter extends StatelessWidget {
  final MutableLiveData<DateTime> date;
  final Function(dynamic) callback;
  const DateFilter({required this.date, required this.callback, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LiveDataBuilder<DateTime>(
      data: date,
      builder: (context, value) {
        return AnimatedGesture(
          callback: () {
            AppDateTimePicker.showDatePicker(
                context: context,
                callback: (date) {
                  callback(date);
                },
                title: "select_exam_date".tr(),
                currentTime: value,
                buttonText: 'done'.tr());
          },
          child: Container(
            // padding: const EdgeInsets.all(12),
            // decoration: BoxDecoration(
            //   borderRadius: BorderRadius.circular(8),
            //   border: Border.all(color: DesignColors.textColor),
            // ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  value.isToday() ? "today".tr() : value.formatDate(),
                ),
                const Icon(
                  Icons.arrow_forward,
                  color: DesignColors.textColor,
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
