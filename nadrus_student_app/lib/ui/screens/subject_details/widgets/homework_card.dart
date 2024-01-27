import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:nadrus_student_app/models/data_models.dart';

import '../../../resources/colors/colors.dart';

class HomeworkCard extends StatelessWidget {
  final Homework homework;
  const HomeworkCard({Key? key, required this.homework}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String checked = homework.checked.toString() == "1"
        ? "checked".tr()
        : "not_checked".tr();
    return Container(
      width: 165,
      margin: const EdgeInsets.symmetric(vertical: 13),
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: DesignColors.white,
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
          BoxShadow(
            color: const Color(0xFF5C5050).withOpacity(0.075),
            blurRadius: 3,
            spreadRadius: 2,
            offset: const Offset(0, 0),
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(checked,
                  style: const TextStyle(
                      color: DesignColors.primaryColor,
                      fontSize: 12,
                      fontWeight: FontWeight.w300)),
            ],
          ),
          Text(
            homework.content ?? "",
            style: const TextStyle(
                color: DesignColors.textColor,
                fontSize: 18,
                fontWeight: FontWeight.w600),
          ),
        ],
      ),
    );
  }
}
