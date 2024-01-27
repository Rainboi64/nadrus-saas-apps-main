import 'package:bottom_picker/bottom_picker.dart';
import 'package:bottom_picker/resources/arrays.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import '../../resources/colors/colors.dart';

class AppDateTimePicker {
  static String horizontalPadding = "   ";
  // static void showDateTimePicker({
  //   required BuildContext context,
  //   required Function(dynamic) callback,
  //   required String title,
  //   required DateTime currentTime,
  //   DateTime? maxTime,
  //   DateTime? minTime,
  // }) {
  //   BottomPicker.dateTime(
  //     title: title,
  //     titleStyle: const TextStyle(
  //         fontWeight: FontWeight.bold, fontSize: 15, color: Colors.black),
  //     onSubmit: callback,
  //     buttonText: horizontalPadding + 'confirm'.tr() + horizontalPadding,
  //     displayButtonIcon: false,
  //     buttonTextStyle: const TextStyle(color: Colors.white),
  //     buttonSingleColor: DesignColors.primaryColor,
  //     buttonAlignement: MainAxisAlignment.end,
  //     //initialDateTime: currentTime.compareTo(DateTime.now()) > 0 ? currentTime : DateTime.now(),
  //     initialDateTime: currentTime,
  //     minDateTime: minTime,
  //     maxDateTime: maxTime,
  //     height: 500,
  //   ).show(context);
  // }

  static void showDatePicker({
    required BuildContext context,
    required Function(dynamic) callback,
    required String title,
    required DateTime currentTime,
    DateTime? maxTime,
    DateTime? minTime,
  }) {
    BottomPicker.date(
      title: title,
      titleStyle: const TextStyle(
          fontWeight: FontWeight.bold, fontSize: 15, color: Colors.black),
      onSubmit: callback,
      buttonText: horizontalPadding + 'filter'.tr() + horizontalPadding,
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
