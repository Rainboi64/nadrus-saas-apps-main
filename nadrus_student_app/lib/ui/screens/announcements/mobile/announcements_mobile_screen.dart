import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutterx_live_data/flutterx_live_data.dart';
import 'package:nadrus_student_app/extensions/assets_extension.dart';
import 'package:nadrus_student_app/models/data/announcement/announcement.dart';
import 'package:nadrus_student_app/router/app_router.dart';
import 'package:nadrus_student_app/ui/core/layouts/theme_widget.dart';
import 'package:nadrus_student_app/ui/screens/announcements/widgets/announcement_cards.dart';
import 'package:nadrus_student_app/ui/widgets/animations/animated_gesture.dart';
import "package:nadrus_student_app/ui/widgets/instance/instance_builder.dart";

import '../../../core/layouts/base_scroll_view.dart';
import '../../../widgets/animations/animated_column.dart';
import "../viewmodels/announcements_viewmodel.dart";

class AnnouncementsMobileScreen extends StatelessWidget {
  const AnnouncementsMobileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InstanceBuilder<AnnouncementsViewModel>(
      builder: (viewModel) {
        return ThemeWidget(
          builder: (context, theme) {
            return BaseScrollView(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: AnimatedColumn(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 29),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        AnimatedGesture(
                          callback: () {
                            appRouter.pop();
                          },
                          child: SvgPicture.asset("close".svgAsset),
                        )
                      ],
                    ),
                    const SizedBox(height: 39),
                    const Text(
                      'العنوان', //TODO
                      style: TextStyle(
                        fontSize: 38,
                      ),
                    ),
                    const SizedBox(
                      height: 22,
                    ),
                    const Text(
                      "شرح بسيط عن محتوى القائمة التالية", //TODO
                      style: TextStyle(
                        fontSize: 26,
                      ),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    LiveDataBuilder<List<Announcement>>(
                      data: viewModel.params.allAnnouncements,
                      builder: (context, announcements) {
                        return SizedBox(
                          height: (172.0) * (announcements.length) + 24,
                          child: ListView.builder(
                            shrinkWrap: true,
                            physics: const NeverScrollableScrollPhysics(),
                            itemCount: announcements.length,
                            itemBuilder: (context, index) => AnnouncementCard(
                                announcement: announcements[index]),
                          ),
                        );
                      },
                    )
                  ],
                ),
              ),
            );
          },
        );
      },
    );
  }
}
