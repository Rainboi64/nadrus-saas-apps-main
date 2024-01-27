import 'dart:typed_data';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutterx_live_data/flutterx_live_data.dart';
import 'package:nadrus_student_app/models/data/whiteboard/whiteboard.dart';
import 'package:nadrus_student_app/ui/core/layouts/base_scroll_view.dart';
import 'package:nadrus_student_app/ui/core/layouts/theme_widget.dart';
import 'package:nadrus_student_app/ui/resources/colors/colors.dart';
import 'package:nadrus_student_app/ui/shared/customized_app_bar.dart';
import 'package:nadrus_student_app/ui/shared/screen_title.dart';
import 'package:nadrus_student_app/ui/widgets/animations/animated_column.dart';
import 'package:nadrus_student_app/ui/widgets/animations/animated_gesture.dart';
import "package:nadrus_student_app/ui/widgets/instance/instance_builder.dart";

import "../viewmodels/whiteboard_image_viewer_viewmodel.dart";

class WhiteboardImageViewerMobileScreen extends StatelessWidget {
  const WhiteboardImageViewerMobileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InstanceBuilder<WhiteboardImageViewerViewModel>(
      builder: (viewModel) {
        return ThemeWidget(
          builder: (context, theme) {
            return LiveDataBuilder<Whiteboard?>(
              data: viewModel.params.whiteboard,
              builder: (context, whiteboard) {
                if (whiteboard != null) {
                  return BaseScrollView(
                    child: AnimatedColumn(
                      children: [
                        if (whiteboard.subjectNotNull())
                          CustomizedAppBar(title: whiteboard.subjectName()),
                        if (whiteboard.lessonNotNull())
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 24, vertical: 12),
                            child: Row(
                              children: [
                                screenTitle(whiteboard.lessonName(),
                                    fontSize: 16),
                              ],
                            ),
                          ),
                        const SizedBox(height: 36),
                        LiveDataBuilder<Uint8List?>(
                          data: viewModel.params.image,
                          builder: (context, value) {
                            if (value != null) {
                              return Image.memory(value);
                            }
                            return const SizedBox.shrink();
                          },
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 24, vertical: 18),
                          child: AnimatedGesture(
                            callback: () {
                              viewModel.downloadImage();
                            },
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                const Icon(
                                  Icons.download,
                                  color: DesignColors.textColor,
                                ),
                                screenTitle("download_image".tr(), fontSize: 14)
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  );
                }
                return const SizedBox.shrink();
              },
            );
          },
        );
      },
    );
  }
}
