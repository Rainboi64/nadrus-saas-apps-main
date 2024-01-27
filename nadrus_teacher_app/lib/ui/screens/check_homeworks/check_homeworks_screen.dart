import "package:auto_route/auto_route.dart";
import 'package:flutter/material.dart';
import 'package:flutterx_live_data/flutterx_live_data.dart';
import 'package:nadrus_teacher_app/ui/core/layouts/base_scaffold.dart';
import 'package:nadrus_teacher_app/ui/core/responsive/screen_type_layout.dart';
import "package:nadrus_teacher_app/ui/widgets/instance/instance_state.dart";
import 'package:nadrus_teacher_app/ui/widgets/loaders/live_data_loader.dart';

import "./viewmodels/check_homeworks_viewmodel.dart";
import 'mobile/check_homeworks_mobile_screen.dart';

@RoutePage(name: "checkHomeworks")
class CheckHomeworksScreen extends StatefulWidget {
  final String sectionId;
  final String homeworkId;
  final String previousClassHomework;
  const CheckHomeworksScreen(
      {required this.sectionId,
      required this.homeworkId,
      required this.previousClassHomework,
      Key? key})
      : super(key: key);

  @override
  State<CheckHomeworksScreen> createState() => _CheckHomeworksScreenState();
}

class _CheckHomeworksScreenState extends State<CheckHomeworksScreen>
    with
        InstanceState<CheckHomeworksScreen, CheckHomeworksViewModel>,
        ObserverMixin {
  @override
  void onInitState(CheckHomeworksViewModel instance) {
    instance.params.sectionId.postValue(widget.sectionId);
    instance.params.homeworkId.postValue(widget.homeworkId);
    instance.params.previousClassHomework
        .postValue(widget.previousClassHomework);
    super.onInitState(instance);
  }

  @override
  Widget screen(context, viewModel) {
    return Stack(
      children: [
        BaseScaffold(
          builder: (context, theme) => const SafeArea(
            child: ScreenTypeLayout(mobile: CheckHomeworksMobileScreen()),
          ),
        ),
        LoadingListenerWidget(loading: viewModel.baseParams.loading),
      ],
    );
  }

  @override
  CheckHomeworksViewModel registerInstance() => CheckHomeworksViewModel();
}
