import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:nadrus_teacher_app/ui/resources/colors/colors.dart';
import 'package:nadrus_teacher_app/ui/widgets/animations/animated_gesture.dart';

class AddButton extends StatelessWidget {
  final Function() callback;
  const AddButton({required this.callback, super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedGesture(
      callback: callback,
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.symmetric(vertical: 11),
        decoration: BoxDecoration(
          color: const Color(0XFFECFBFF),
          borderRadius: BorderRadius.circular(14),
        ),
        child: Center(
          child: Text(
            'add'.tr(),
            style: const TextStyle(
              color: DesignColors.primaryColor,
              fontSize: 18,
            ),
          ),
        ),
      ),
    );
  }
}
