import 'package:flutter/material.dart';
import 'package:nadrus_teacher_app/ui/core/layouts/theme_widget.dart';
import 'package:nadrus_teacher_app/ui/resources/colors/colors.dart';
import "package:nadrus_teacher_app/ui/widgets/instance/instance_builder.dart";

import "../viewmodels/exams_to_correct_viewmodel.dart";

class ExamsToCorrectMobileScreen extends StatelessWidget {
  const ExamsToCorrectMobileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InstanceBuilder<ExamsToCorrectViewModel>(
      builder: (viewModel) {
        return ThemeWidget(
          builder: (context, theme) {
            return const Center(
              child: Text(
                "Exams to correct",
                style: TextStyle(color: DesignColors.black),
              ),
            );
          },
        );
      },
    );
  }
}
