import 'package:flutter/material.dart';
import 'package:nadrus_student_app/ui/resources/colors/colors.dart';

class WeeklyScheduleDayCard extends StatelessWidget {
  final bool isSelected;
  final String dayOfTheWeek;
  const WeeklyScheduleDayCard(
      {Key? key, required this.dayOfTheWeek, this.isSelected = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 94,
      padding: const EdgeInsets.fromLTRB(0, 7, 0, 9),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(4),
          color: isSelected
              ? DesignColors.secondaryColor
              : const Color(0XFFFAFAFA)),
      child: Center(
        child: Text(
          dayOfTheWeek,
          style: TextStyle(
              color: isSelected
                  ? DesignColors.primaryColor
                  : DesignColors.textColor,
              fontSize: 16,
              fontWeight: FontWeight.w500),
        ),
      ),
    );
  }
}
