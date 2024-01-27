import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutterx_live_data/flutterx_live_data.dart';
import 'package:nadrus_student_app/extensions/assets_extension.dart';
import 'package:nadrus_student_app/models/data/announcement/announcement.dart';
import 'package:nadrus_student_app/ui/core/layouts/base_scroll_view.dart';
import 'package:nadrus_student_app/ui/core/layouts/theme_widget.dart';
import 'package:nadrus_student_app/ui/shared/authenticated_image_view.dart';
import 'package:nadrus_student_app/ui/widgets/animations/animated_column.dart';
import "package:nadrus_student_app/ui/widgets/instance/instance_builder.dart";

import '../../../../config/ui_config.dart';
import '../../../../router/app_router.dart';
import '../../../widgets/animations/animated_gesture.dart';
import '../../../widgets/buttons/customized_button.dart';
import "../viewmodels/announcements_details_viewmodel.dart";

class AnnouncementsDetailsMobileScreen extends StatelessWidget {
  const AnnouncementsDetailsMobileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InstanceBuilder<AnnouncementsDetailsViewModel>(
      builder: (viewModel) {
        return ThemeWidget(
          builder: (context, theme) {
            return BaseScrollView(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: LiveDataBuilder<Announcement?>(
                  data: viewModel.params.announcement,
                  builder: (context, announcement) {
                    return AnimatedColumn(
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
                            ),
                          ],
                        ),
                        const SizedBox(height: 39),
                        if (announcement != null &&
                            announcement.imagePath != null)
                          ClipRRect(
                            borderRadius: BorderRadius.circular(12.0),
                            child: AuthenticatedImageView(
                                imageUrl: announcement.imagePath!),
                          ),
                        if (announcement != null &&
                            announcement.title != null &&
                            announcement.description != null)
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 22.0),
                                child: Text(
                                  announcement.title!,
                                  style: const TextStyle(
                                    fontSize: 38,
                                    color: Color(0XFF201919),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 22.0),
                                child: Text(
                                  announcement.description!,
                                  style: const TextStyle(
                                    fontSize: 16,
                                    color: Color(0XFF201919),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        if (announcement != null && announcement.title != null)
                          Column(
                            children: [
                              if (announcement.description != null)
                                Padding(
                                  padding: const EdgeInsets.only(top: 22.0),
                                  child: Text(
                                    announcement.description!,
                                    style: const TextStyle(
                                      fontSize: 38,
                                      color: Color(0XFF201919),
                                    ),
                                  ),
                                ),
                            ],
                          ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 24.0),
                          child: SizedBox(
                            width: screenSize(context).width,
                            child: CustomizedButton(
                                enabled: true,
                                callback: () {
                                  appRouter.pop();
                                },
                                child: const Text("done").tr()),
                          ),
                        ),
                      ],
                    );
                  },
                ),
              ),
            );
          },
        );
      },
    );
  }

  _image() {}
}
