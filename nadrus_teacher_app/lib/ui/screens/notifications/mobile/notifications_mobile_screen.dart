import 'package:flutter/material.dart';
import 'package:nadrus_teacher_app/ui/core/layouts/theme_widget.dart';
import "package:nadrus_teacher_app/ui/widgets/instance/instance_builder.dart";

import '../../../resources/colors/colors.dart';
import "../viewmodels/notifications_viewmodel.dart";

class NotificationsMobileScreen extends StatelessWidget {
  const NotificationsMobileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InstanceBuilder<NotificationsViewModel>(
      builder: (viewModel) {
        return ThemeWidget(
          builder: (context, theme) {
            return const Center(
              child: Text(
                "Notifications",
                style: TextStyle(color: DesignColors.black),
              ),
            );
          },
        );
      },
    );
  }
}
