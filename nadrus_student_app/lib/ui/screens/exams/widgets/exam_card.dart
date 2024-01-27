import 'package:flutter/cupertino.dart';
import 'package:nadrus_student_app/models/data/exam_collection/exam_collection.dart';
import 'package:nadrus_student_app/router/app_router.dart';
import 'package:nadrus_student_app/ui/widgets/animations/animated_gesture.dart';

class ExamCard extends StatelessWidget {
  final ExamCollection examCollection;
  const ExamCard({required this.examCollection, super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedGesture(
      callback: () {
        appRouter.push(ExamDetails(examCollection: examCollection));
      },
      child: Container(
        height: 78,
        width: 165,
        // padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          border: Border.all(
            color: const Color(0XFFD6D5DC),
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            if (examCollection.title != null)
              Text(
                examCollection.title!,
                style: const TextStyle(fontSize: 16),
              ),
            const SizedBox(height: 8),
            const Text(
              "100%",
              style: TextStyle(fontSize: 14, color: Color(0XFFD6D5DC)),
            ),
          ],
        ),
      ),
    );
  }
}
