import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutterx_live_data/flutterx_live_data.dart';
import 'package:nadrus_student_app/models/data/whiteboard/whiteboard.dart';
import 'package:nadrus_student_app/ui/core/layouts/base_scroll_view.dart';
import 'package:nadrus_student_app/ui/core/layouts/theme_widget.dart';
import 'package:nadrus_student_app/ui/screens/home/widgets/home_whiteboard_image.dart';
import 'package:nadrus_student_app/ui/shared/customized_app_bar.dart';
import 'package:nadrus_student_app/ui/widgets/animations/animated_column.dart';
import "package:nadrus_student_app/ui/widgets/instance/instance_builder.dart";

import "../viewmodels/whiteboard_gallery_viewmodel.dart";

class WhiteboardGalleryMobileScreen extends StatelessWidget {
  const WhiteboardGalleryMobileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InstanceBuilder<WhiteboardGalleryViewModel>(
      builder: (viewModel) {
        return ThemeWidget(
          builder: (context, theme) {
            return BaseScrollView(
              child: AnimatedColumn(
                children: [
                  CustomizedAppBar(
                    title: "whiteboard_gallery".tr(),
                  ),
                  LiveDataBuilder<List<Whiteboard>>(
                    data: viewModel.params.whiteboards,
                    builder: (context, whiteboards) {
                      if (whiteboards.isNotEmpty) {
                        return Padding(
                          padding: const EdgeInsets.all(24),
                          child: Wrap(
                              spacing:
                                  20.0, // Adjust the spacing between items as needed
                              runSpacing:
                                  16.0, // Adjust the run spacing as needed
                              children: whiteboards
                                  .map(
                                      (e) => HomeWhiteboardImage(whiteboard: e))
                                  .toList()),
                        );
                      }
                      return const SizedBox.shrink();
                    },
                  ),
                ],
              ),
            );
          },
        );
      },
    );
  }
}
