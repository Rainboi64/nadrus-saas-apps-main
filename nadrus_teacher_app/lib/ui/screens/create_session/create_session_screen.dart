import "package:auto_route/auto_route.dart";
import 'package:flutter/material.dart';
import 'package:flutterx_live_data/flutterx_live_data.dart';
import 'package:nadrus_teacher_app/ui/core/layouts/base_scaffold.dart';
import 'package:nadrus_teacher_app/ui/core/responsive/screen_type_layout.dart';
import "package:nadrus_teacher_app/ui/widgets/instance/instance_state.dart";
import 'package:nadrus_teacher_app/ui/widgets/loaders/live_data_loader.dart';

import "./viewmodels/create_session_viewmodel.dart";
import 'mobile/create_session_mobile_screen.dart';

@RoutePage(name: "createSession")
class CreateSessionScreen extends StatefulWidget {
  const CreateSessionScreen({Key? key}) : super(key: key);

  @override
  State<CreateSessionScreen> createState() => _CreateSessionScreenState();
}

class _CreateSessionScreenState extends State<CreateSessionScreen>
    with
        InstanceState<CreateSessionScreen, CreateSessionViewModel>,
        ObserverMixin {
  @override
  Widget screen(context, viewModel) {
    return Stack(
      children: [
        BaseScaffold(
          builder: (context, theme) => const SafeArea(
            child: ScreenTypeLayout(mobile: CreateSessionMobileScreen()),
          ),
        ),
        LoadingListenerWidget(loading: viewModel.baseParams.loading),
      ],
    );
  }

  @override
  CreateSessionViewModel registerInstance() => CreateSessionViewModel();
}
