import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:nadrus_teacher_app/ui/widgets/animations/animated_gesture.dart';

import 'add_button.dart';

class CrudOutlinedWidget extends StatelessWidget {
  final String description;
  final Function() firstBtnCallback;
  final Function() secondBtnCallback;
  final Function() thirdBtnCallback;
  final Function() addBtnCallback;
  final String firstBtnTitle;
  final String? secondBtnTitle;
  final String? thirdBtnTitle;
  const CrudOutlinedWidget(
      {required this.description,
      required this.firstBtnCallback,
      required this.secondBtnCallback,
      required this.thirdBtnCallback,
      required this.addBtnCallback,
      required this.firstBtnTitle,
      this.secondBtnTitle = 'edit',
      this.thirdBtnTitle = 'delete',
      super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 160,
          decoration: BoxDecoration(
            border: Border.all(
              color: const Color(0XFFD6D5DC),
            ),
            borderRadius: BorderRadius.circular(14),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 12, vertical: 15),
                    child: Text(
                      description,
                      style: const TextStyle(fontSize: 20),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  _buildButtons(firstBtnTitle.tr(), firstBtnCallback,
                      bottomRight: 14),
                  _buildButtons(secondBtnTitle!.tr(), secondBtnCallback),
                  _buildButtons(thirdBtnTitle!.tr(), thirdBtnCallback,
                      bottomLeft: 14),
                ],
              ),
            ],
          ),
        ),
        const SizedBox(height: 12),
        AddButton(callback: addBtnCallback),
      ],
    );
  }

  _buildButtons(String title, Function() callback,
      {double bottomRight = 0, double bottomLeft = 0}) {
    Color borderColor = const Color(0XFFD6D5DC);
    return Expanded(
      child: AnimatedGesture(
        callback: callback,
        child: Container(
          padding: const EdgeInsets.only(
            top: 11,
            bottom: 14,
          ),
          decoration: BoxDecoration(
            border: Border(
              top: BorderSide(color: borderColor, width: 1),
              bottom: BorderSide(color: borderColor, width: 0.5),
              right: BorderSide(color: borderColor, width: 0.5),
              left: BorderSide(color: borderColor, width: 0.5),
            ),
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(bottomLeft),
                bottomRight: Radius.circular(bottomRight)),
          ),
          child: Center(
            child: Text(
              title,
              style: const TextStyle(fontSize: 16),
            ),
          ),
        ),
      ),
    );
  }
}
