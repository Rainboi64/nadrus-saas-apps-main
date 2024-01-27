import 'package:flutter/material.dart';
import 'package:nadrus_student_app/ui/resources/colors/colors.dart';

class SubjectTab extends StatelessWidget {
  final bool isSelected;
  final String subjectName;
  const SubjectTab(
      {Key? key, required this.subjectName, this.isSelected = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // width: 94,
      padding: const EdgeInsets.fromLTRB(16, 7, 16, 9),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(4),
          color: isSelected
              ? DesignColors.secondaryColor
              : const Color(0XFFFAFAFA)),
      child: Center(
        child: Text(
          subjectName,
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
