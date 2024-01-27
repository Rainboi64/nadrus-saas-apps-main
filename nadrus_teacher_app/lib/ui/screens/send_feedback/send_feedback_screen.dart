import "package:auto_route/auto_route.dart";
import 'package:flutter/material.dart';
import 'package:flutterx_live_data/flutterx_live_data.dart';
import 'package:nadrus_teacher_app/ui/core/layouts/base_scaffold.dart';
import 'package:nadrus_teacher_app/ui/core/responsive/screen_type_layout.dart';
import "package:nadrus_teacher_app/ui/widgets/instance/instance_state.dart";
import 'package:nadrus_teacher_app/ui/widgets/loaders/live_data_loader.dart';

import "./viewmodels/send_feedback_viewmodel.dart";
import 'mobile/send_feedback_mobile_screen.dart';

@RoutePage(name: "sendFeedback")
class SendFeedbackScreen extends StatefulWidget {
  final String sectionId;
  const SendFeedbackScreen({required this.sectionId, Key? key})
      : super(key: key);

  @override
  State<SendFeedbackScreen> createState() => _SendFeedbackScreenState();
}

class _SendFeedbackScreenState extends State<SendFeedbackScreen>
    with
        InstanceState<SendFeedbackScreen, SendFeedbackViewModel>,
        ObserverMixin {
  @override
  void onInitState(SendFeedbackViewModel instance) {
    instance.params.sectionId.postValue(widget.sectionId);
    super.onInitState(instance);
  }

  @override
  Widget screen(context, viewModel) {
    return Stack(
      children: [
        BaseScaffold(
          builder: (context, theme) => const SafeArea(
            child: ScreenTypeLayout(
              mobile: SendFeedbackMobileScreen(),
            ),
          ),
        ),
        LoadingListenerWidget(loading: viewModel.baseParams.loading),
      ],
    );
  }

  @override
  SendFeedbackViewModel registerInstance() => SendFeedbackViewModel();
}
