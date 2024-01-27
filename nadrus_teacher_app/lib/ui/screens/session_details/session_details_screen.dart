import "package:auto_route/auto_route.dart";
import 'package:flutter/material.dart';
import 'package:flutterx_live_data/flutterx_live_data.dart';
import 'package:nadrus_teacher_app/ui/core/layouts/base_scaffold.dart';
import 'package:nadrus_teacher_app/ui/core/responsive/screen_type_layout.dart';
import "package:nadrus_teacher_app/ui/widgets/instance/instance_state.dart";
import 'package:nadrus_teacher_app/ui/widgets/loaders/live_data_loader.dart';

import "./viewmodels/session_details_viewmodel.dart";
import '../../../models/data/session/session.dart';
import 'mobile/session_details_mobile_screen.dart';

@RoutePage(name: "sessionDetails")
class SessionDetailsScreen extends StatefulWidget {
  final Session session;
  const SessionDetailsScreen({required this.session, Key? key})
      : super(key: key);

  @override
  State<SessionDetailsScreen> createState() => _SessionDetailsScreenState();
}

class _SessionDetailsScreenState extends State<SessionDetailsScreen>
    with
        InstanceState<SessionDetailsScreen, SessionDetailsViewModel>,
        ObserverMixin {
  @override
  void onInitState(SessionDetailsViewModel instance) {
    if (widget.session != null) {
      instance.params.session.postValue(widget.session);
    }
    super.onInitState(instance);
  }

  @override
  Widget screen(context, viewModel) {
    return Stack(
      children: [
        BaseScaffold(
          builder: (context, theme) => const SafeArea(
            child: ScreenTypeLayout(mobile: SessionDetailsMobileScreen()),
          ),
        ),
        LoadingListenerWidget(loading: viewModel.baseParams.loading),
      ],
    );
  }

  @override
  SessionDetailsViewModel registerInstance() => SessionDetailsViewModel();
}
