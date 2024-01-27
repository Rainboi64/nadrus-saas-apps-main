import "package:auto_route/auto_route.dart";
import 'package:flutter/material.dart';
import 'package:flutterx_live_data/flutterx_live_data.dart';
import 'package:nadrus_student_app/ui/core/layouts/base_scaffold.dart';
import 'package:nadrus_student_app/ui/core/responsive/screen_type_layout.dart';
import "package:nadrus_student_app/ui/widgets/instance/instance_state.dart";
import 'package:nadrus_student_app/ui/widgets/loaders/live_data_loader.dart';

import "./viewmodels/announcements_viewmodel.dart";
import 'mobile/announcements_mobile_screen.dart';

@RoutePage(name: "announcements")
class AnnouncementsScreen extends StatefulWidget {
  const AnnouncementsScreen({Key? key}) : super(key: key);

  @override
  State<AnnouncementsScreen> createState() => _AnnouncementsScreenState();
}

class _AnnouncementsScreenState extends State<AnnouncementsScreen>
    with
        InstanceState<AnnouncementsScreen, AnnouncementsViewModel>,
        ObserverMixin {
  @override
  Widget screen(context, viewModel) {
    return Stack(
      children: [
        BaseScaffold(
          builder: (context, theme) => const SafeArea(
            child: ScreenTypeLayout(
              mobile: AnnouncementsMobileScreen(),
            ),
          ),
        ),
        LoadingListenerWidget(loading: viewModel.baseParams.loading),
      ],
    );
  }

  @override
  AnnouncementsViewModel registerInstance() => AnnouncementsViewModel();
}
