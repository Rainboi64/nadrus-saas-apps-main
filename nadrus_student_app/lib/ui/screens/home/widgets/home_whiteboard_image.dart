import 'package:flutter/material.dart';
import 'package:nadrus_student_app/config/ui_config.dart';
import 'package:nadrus_student_app/models/data/whiteboard/whiteboard.dart';
import 'package:nadrus_student_app/router/app_router.dart';
import 'package:nadrus_student_app/ui/resources/colors/colors.dart';
import 'package:nadrus_student_app/ui/shared/authenticated_image_view.dart';
import 'package:nadrus_student_app/ui/widgets/animations/animated_gesture.dart';

class HomeWhiteboardImage extends StatelessWidget {
  final Whiteboard whiteboard;
  const HomeWhiteboardImage({required this.whiteboard, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedGesture(
      callback: () =>
          appRouter.push(WhiteboardImageViewer(whiteboard: whiteboard)),
      child: Container(
        width: (screenSize(context).width / 2) - 36,
        //height: 160,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(8)),
        child: Stack(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child:
                  AuthenticatedImageView(imageUrl: whiteboard.imagePath ?? ""),
            ),
            Positioned(
              top: 0,
              child: Center(
                child: ClipRRect(
                  borderRadius: const BorderRadius.only(
                    topRight: Radius.circular(8),
                    topLeft: Radius.circular(8),
                  ),
                  child: Container(
                    width: (screenSize(context).width / 2) - 36,
                    padding: const EdgeInsets.fromLTRB(8, 8, 8, 20),
                    decoration: BoxDecoration(
                        borderRadius: const BorderRadius.only(
                          topRight: Radius.circular(8),
                          topLeft: Radius.circular(8),
                        ),
                        gradient: LinearGradient(
                          begin: Alignment.bottomRight,
                          end: Alignment.topRight,
                          colors: [
                            const Color(0XFF06283D).withOpacity(0.0),
                            const Color(0XFF06283D).withOpacity(0.24),
                            const Color(0XFF06283D).withOpacity(0.6),
                            const Color(0XFF06283D).withOpacity(0.6),
                            const Color(0XFF06283D).withOpacity(0.6),
                            const Color(0XFF06283D).withOpacity(0.6),
                            const Color(0XFF06283D).withOpacity(0.8),
                          ],
                        )),
                    child: (whiteboard.subjectNotNull())
                        ? Text(
                            whiteboard.subjectName(),
                            style: const TextStyle(
                              color: DesignColors.white,
                              fontSize: 12,
                            ),
                          )
                        : const SizedBox.shrink(),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
