import 'package:flutter/material.dart';
import 'package:nadrus_teacher_app/router/app_router.dart';
import 'package:nadrus_teacher_app/ui/widgets/animations/animated_gesture.dart';

import '../resources/colors/colors.dart';

class ScreenTopBar extends StatelessWidget {
  final String title;
  const ScreenTopBar({required this.title, super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 52),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Flexible(
            child: Text(
              title,
              style: const TextStyle(
                fontSize: 36,
              ),
            ),
          ),
          AnimatedGesture(
            callback: () {
              appRouter.pop();
            },
            child: const CircleAvatar(
              backgroundColor: DesignColors.secondaryColor,
              radius: 24,
              child: Icon(
                Icons.close,
                color: DesignColors.textColor,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
