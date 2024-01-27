import 'package:flutter/cupertino.dart';
import 'package:nadrus_teacher_app/ui/widgets/animations/animated_gesture.dart';

class OutlinedWidget extends StatelessWidget {
  final String description;
  final Function() callback;
  const OutlinedWidget(
      {required this.description, required this.callback, super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedGesture(
      callback: callback,
      child: Container(
        height: 90,
        decoration: BoxDecoration(
          border: Border.all(
            color: const Color(0XFFD6D5DC),
          ),
          borderRadius: BorderRadius.circular(14),
        ),
        child: Row(
          children: [
            Text(
              description,
              style: const TextStyle(
                fontSize: 20,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
