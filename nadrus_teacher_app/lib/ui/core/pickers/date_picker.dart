import 'package:bottom_picker/bottom_picker.dart';
import 'package:bottom_picker/resources/arrays.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import '../../resources/colors/colors.dart';

class AppDateTimePicker {
  static String horizontalPadding = "   ";

  static void showDatePicker({
    required BuildContext context,
    required Function(dynamic) callback,
    required String title,
    required DateTime currentTime,
    DateTime? maxTime,
    DateTime? minTime,
    String? buttonText,
  }) {
    BottomPicker.date(
      title: title,
      titleStyle: const TextStyle(
          fontWeight: FontWeight.bold, fontSize: 15, color: Colors.black),
      onSubmit: callback,
      buttonText: buttonText == null
          ? horizontalPadding + 'filter'.tr() + horizontalPadding
          : horizontalPadding + buttonText + horizontalPadding,
      displayButtonIcon: false,
      buttonTextStyle: const TextStyle(color: Colors.white),
      buttonSingleColor: DesignColors.primaryColor,
      buttonAlignement: MainAxisAlignment.end,
      initialDateTime: currentTime,
      minDateTime: minTime,
      maxDateTime: maxTime,
      height: 400,
      bottomPickerTheme: BottomPickerTheme.temptingAzure,
    ).show(context);
  }
}
