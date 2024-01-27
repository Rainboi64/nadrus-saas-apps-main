import 'package:flutter/cupertino.dart';
import 'package:nadrus_student_app/models/data/announcement/announcement.dart';
import 'package:nadrus_student_app/router/app_router.dart';
import 'package:nadrus_student_app/ui/shared/ring_widget.dart';
import 'package:nadrus_student_app/ui/widgets/animations/animated_gesture.dart';

class AnnouncementCard extends StatelessWidget {
  final Announcement announcement;
  const AnnouncementCard({required this.announcement, super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedGesture(
      callback: () {
        appRouter.push(AnnouncementsDetails(announcement: announcement));
      },
      child: Container(
        height: 160,
        padding: const EdgeInsets.all(8),
        margin: const EdgeInsets.only(bottom: 12),
        decoration: BoxDecoration(
          color: const Color(0XFFF9F9F9),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'عنوان ثانوي', //TODO
                  style: TextStyle(fontSize: 12, color: Color(0XFFA9A9A9)),
                ),
                RingWidget(
                  color: Color(0XFF707070),
                  size: 30,
                ),
              ],
            ),
            const SizedBox(height: 16),
            Row(
              children: [
                Text(
                  announcement.title ?? "",
                  style:
                      const TextStyle(fontSize: 18, color: Color(0XFF201919)),
                ),
              ],
            ),
            const SizedBox(height: 8),
            Text(
              announcement.description ?? "",
              style: const TextStyle(fontSize: 16, color: Color(0XFF201919)),
            ),
          ],
        ),
      ),
    );
  }
}
