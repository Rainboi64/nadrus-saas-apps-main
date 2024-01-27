import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:nadrus_teacher_app/config/ui_config.dart';
import 'package:nadrus_teacher_app/ui/resources/colors/colors.dart';
import 'package:nadrus_teacher_app/ui/widgets/animations/animated_gesture.dart';

class CustomizedDrawerElement extends StatelessWidget {
  final String title;
  final bool selected;
  final Widget? endWidget;
  final Function callback;
  const CustomizedDrawerElement(
      {required this.title,
      this.selected = false,
      this.endWidget,
      required this.callback,
      super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedGesture(
      callback: () {
        callback();
      },
      child: Container(
        margin: const EdgeInsets.only(bottom: 10),
        padding: const EdgeInsetsDirectional.only(start: 12, end: 12),
        height: 56,
        decoration: BoxDecoration(
          color: selected ? DesignColors.secondaryColor : DesignColors.white,
          border: Border.all(
            color: selected
                ? DesignColors.secondaryColor
                : const Color(0XFFD6D5DC),
          ),
          borderRadius: BorderRadius.circular(14),
        ),
        width: screenSize(context).width,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              title.tr(),
              style: selected
                  ? const TextStyle(
                      fontSize: 20,
                      color: DesignColors.primaryColor,
                      fontWeight: FontWeight.w500,
                    )
                  : const TextStyle(
                      fontSize: 20,
                      color: DesignColors.black,
                      fontWeight: FontWeight.w500,
                    ),
            ),
            endWidget ?? const SizedBox(),
          ],
        ),
      ),
    );
  }
}
