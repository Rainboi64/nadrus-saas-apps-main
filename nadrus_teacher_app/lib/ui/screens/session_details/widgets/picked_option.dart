import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:nadrus_teacher_app/ui/resources/colors/colors.dart';
import 'package:nadrus_teacher_app/ui/widgets/animations/animated_gesture.dart';

class PickedOption extends StatelessWidget {
  final String pickedOption;
  final Function() callback;
  const PickedOption(
      {required this.pickedOption, required this.callback, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: DesignColors.primaryColor),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            pickedOption,
            style: const TextStyle(fontSize: 18, color: DesignColors.textColor),
          ),
          AnimatedGesture(
            callback: callback,
            child: Text(
              'edit'.tr(),
              style: const TextStyle(
                  fontSize: 16, color: DesignColors.primaryColor),
            ),
          )
        ],
      ),
    );
  }
}
