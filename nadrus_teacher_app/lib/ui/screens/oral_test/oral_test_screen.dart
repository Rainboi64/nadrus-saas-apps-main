import "package:auto_route/auto_route.dart";
import 'package:flutter/material.dart';
import 'package:flutterx_live_data/flutterx_live_data.dart';
import 'package:nadrus_teacher_app/ui/core/layouts/base_scaffold.dart';
import 'package:nadrus_teacher_app/ui/core/responsive/screen_type_layout.dart';
import "package:nadrus_teacher_app/ui/widgets/instance/instance_state.dart";
import 'package:nadrus_teacher_app/ui/widgets/loaders/live_data_loader.dart';

import "./viewmodels/oral_test_viewmodel.dart";
import 'mobile/oral_test_mobile_screen.dart';

@RoutePage(name: "oralTest")
class OralTestScreen extends StatefulWidget {
  final String sectionId;
  final String homeworkId;
  final String previousClassHomework;
  const OralTestScreen(
      {required this.sectionId,
      required this.homeworkId,
      required this.previousClassHomework,
      Key? key})
      : super(key: key);

  @override
  State<OralTestScreen> createState() => _OralTestScreenState();
}

class _OralTestScreenState extends State<OralTestScreen>
    with InstanceState<OralTestScreen, OralTestViewModel>, ObserverMixin {
  @override
  void onInitState(OralTestViewModel instance) {
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
            child: ScreenTypeLayout(mobile: OralTestMobileScreen()),
          ),
        ),
        LoadingListenerWidget(loading: viewModel.baseParams.loading),
      ],
    );
  }

  @override
  OralTestViewModel registerInstance() => OralTestViewModel();
}
