import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:nadrus_teacher_app/ui/core/layouts/theme_widget.dart';
import "package:nadrus_teacher_app/ui/widgets/instance/instance_builder.dart";

import '../../../core/layouts/base_scroll_view.dart';
import '../../../shared/screen_top_bar.dart';
import '../../../widgets/animations/animated_column.dart';
import '../../main/widgets/customized_appbar.dart';
import "../viewmodels/section_details_viewmodel.dart";

class SectionDetailsMobileScreen extends StatelessWidget {
  const SectionDetailsMobileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InstanceBuilder<SectionDetailsViewModel>(
      builder: (viewModel) {
        return ThemeWidget(
          builder: (context, theme) {
            return BaseScrollView(
              child: Column(
                children: [
                  customizedAppBar(),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(24, 24, 24, 48),
                    child: AnimatedColumn(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ScreenTopBar(title: "ddsdd"),
                        _title('section'),

                        const SizedBox(height: 28),

                        ///
                        _title('next_homeworks'),

                        const SizedBox(height: 28),

                        ///
                        _title('next_quizes'),

                        const SizedBox(height: 28),

                        ///
                        _title('all_sessions'),
                      ],
                    ),
                  ),
                ],
              ),
            );
          },
        );
      },
    );
  }

  _title(String title) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 6),
      child: Text(
        title.tr(),
        style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w300),
      ),
    );
  }
}
