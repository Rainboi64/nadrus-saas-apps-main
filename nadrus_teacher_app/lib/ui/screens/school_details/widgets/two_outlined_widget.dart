import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:nadrus_teacher_app/ui/widgets/animations/animated_gesture.dart';

class TwoOutlinedWidget extends StatelessWidget {
  final Function() firstBtnCallback;
  final Function() secondBtnCallback;
  final String firstBtnTitle;
  final String secondBtnTitle;
  const TwoOutlinedWidget(
      {required this.firstBtnCallback,
      required this.secondBtnCallback,
      required this.firstBtnTitle,
      required this.secondBtnTitle,
      super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 82,
      decoration: BoxDecoration(
        border: Border.all(
          color: const Color(0XFFD6D5DC),
        ),
        borderRadius: BorderRadius.circular(14),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          _buildButtons(firstBtnTitle.tr(), firstBtnCallback),
          _buildButtons(secondBtnTitle.tr(), secondBtnCallback),
        ],
      ),
    );
  }

  _buildButtons(String title, Function() callback) {
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
              right: BorderSide(color: borderColor, width: 0.5),
              left: BorderSide(color: borderColor, width: 0.5),
            ),
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
