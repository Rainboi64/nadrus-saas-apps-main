import "package:auto_route/auto_route.dart";
import 'package:flutter/material.dart';
import 'package:flutterx_live_data/flutterx_live_data.dart';
import 'package:nadrus_teacher_app/ui/core/layouts/base_scaffold.dart';
import 'package:nadrus_teacher_app/ui/core/responsive/screen_type_layout.dart';
import "package:nadrus_teacher_app/ui/widgets/instance/instance_state.dart";
import 'package:nadrus_teacher_app/ui/widgets/loaders/live_data_loader.dart';

import "./viewmodels/exams_to_correct_viewmodel.dart";
import 'mobile/exams_to_correct_mobile_screen.dart';

@RoutePage(name: "examsToCorrect")
class ExamsToCorrectScreen extends StatefulWidget {
  const ExamsToCorrectScreen({Key? key}) : super(key: key);

  @override
  State<ExamsToCorrectScreen> createState() => _ExamsToCorrectScreenState();
}

class _ExamsToCorrectScreenState extends State<ExamsToCorrectScreen>
    with
        InstanceState<ExamsToCorrectScreen, ExamsToCorrectViewModel>,
        ObserverMixin {
  @override
  Widget screen(context, viewModel) {
    return Stack(
      children: [
        BaseScaffold(
          builder: (context, theme) => const SafeArea(
            child: ScreenTypeLayout(mobile: ExamsToCorrectMobileScreen()),
          ),
        ),
        LoadingListenerWidget(loading: viewModel.baseParams.loading),
      ],
    );
  }

  @override
  ExamsToCorrectViewModel registerInstance() => ExamsToCorrectViewModel();
}
