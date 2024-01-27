import 'package:flutter/material.dart';
import 'package:nadrus_teacher_app/ui/core/layouts/theme_widget.dart';
import "package:nadrus_teacher_app/ui/widgets/instance/instance_builder.dart";

import '../../../core/layouts/base_scroll_view.dart';
import '../../../shared/screen_top_bar.dart';
import '../../../widgets/animations/animated_column.dart';
import '../../main/widgets/customized_appbar.dart';
import "../viewmodels/create_session_viewmodel.dart";

class CreateSessionMobileScreen extends StatelessWidget {
  const CreateSessionMobileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InstanceBuilder<CreateSessionViewModel>(
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
                        ScreenTopBar(
                            title:
                                viewModel.params.school.value?.grade?.label ??
                                    ""),
                        const SizedBox(height: 28),
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
}
