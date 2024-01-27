import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nadrus_student_app/extensions/assets_extension.dart';
import 'package:nadrus_student_app/models/data_models.dart';

import '../../../resources/colors/colors.dart';

class HomeHomeworkCard extends StatelessWidget {
  final Homework homework;
  const HomeHomeworkCard({Key? key, required this.homework}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: DesignColors.white,
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
          BoxShadow(
            color: const Color(0xFF5C5050).withOpacity(0.075),
            blurRadius: 4,
            spreadRadius: 5,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              if (homework.subjectNotNull())
                Text(homework.subjectName(),
                    style: const TextStyle(
                        color: Color(0XFFD6D5DC),
                        fontSize: 12,
                        fontWeight: FontWeight.w300)),
              Padding(
                padding: const EdgeInsets.only(top: 3.0),
                child: SvgPicture.asset('rounded-square'.svgAsset),
              )
            ],
          ),
          Text(
            homework.content ?? "",
            style: const TextStyle(
                color: DesignColors.textColor,
                fontSize: 18,
                fontWeight: FontWeight.w600),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              SvgPicture.asset('long-arrow'.svgAsset,
                  color: const Color(0XFFCEC2C5))
            ],
          )
        ],
      ),
    );
  }
}
