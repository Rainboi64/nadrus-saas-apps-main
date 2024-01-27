import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:nadrus_teacher_app/ui/widgets/animations/animated_gesture.dart';

import '../../../../config/ui_config.dart';

class SessionOptionsOutlinedButton extends StatelessWidget {
  final String text;
  final Function() callback;
  const SessionOptionsOutlinedButton(
      {required this.text, required this.callback, super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedGesture(
      callback: callback,
      child: Container(
        width: (screenSize(context).width - 66) / 3,
        height: 82,
        padding: const EdgeInsets.symmetric(horizontal: 12),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          border: Border.all(color: const Color(0XFFD6D5DC)),
        ),
        child: Center(
          child: Text(
            text.tr(),
            textAlign: TextAlign.center,
            style: const TextStyle(fontSize: 18),
          ),
        ),
      ),
    );
  }
}
