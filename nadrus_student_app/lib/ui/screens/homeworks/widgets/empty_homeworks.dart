import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:nadrus_student_app/extensions/date_extension.dart';

class EmptyHomeworks extends StatelessWidget {
  final DateTime date;
  const EmptyHomeworks({required this.date, super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(date.isToday()
          ? "no_homeworks_today".tr()
          : "no_homeworks_on_the_model"
              .tr(namedArgs: {"date": date.formatDate()})),
    );
  }
}
