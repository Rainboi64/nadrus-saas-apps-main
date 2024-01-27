import "package:auto_route/auto_route.dart";
import 'package:flutter/material.dart';
import 'package:flutterx_live_data/flutterx_live_data.dart';
import 'package:nadrus_student_app/models/data/announcement/announcement.dart';
import 'package:nadrus_student_app/ui/core/layouts/base_scaffold.dart';
import 'package:nadrus_student_app/ui/core/responsive/screen_type_layout.dart';
import "package:nadrus_student_app/ui/widgets/instance/instance_state.dart";
import 'package:nadrus_student_app/ui/widgets/loaders/live_data_loader.dart';

import "./viewmodels/announcements_details_viewmodel.dart";
import 'mobile/announcements_details_mobile_screen.dart';

@RoutePage(name: "announcementsDetails")
class AnnouncementsDetailsScreen extends StatefulWidget {
  final Announcement announcement;
  const AnnouncementsDetailsScreen({required this.announcement, Key? key})
      : super(key: key);

  @override
  State<AnnouncementsDetailsScreen> createState() =>
      _AnnouncementsDetailsScreenState();
}

class _AnnouncementsDetailsScreenState extends State<AnnouncementsDetailsScreen>
    with
        InstanceState<AnnouncementsDetailsScreen,
            AnnouncementsDetailsViewModel>,
        ObserverMixin {
  @override
  void onInitState(AnnouncementsDetailsViewModel instance) {
    instance.params.announcement.postValue(widget.announcement);
    super.onInitState(instance);
  }

  @override
  Widget screen(context, viewModel) {
    return Stack(
      children: [
        BaseScaffold(
          builder: (context, theme) => const SafeArea(
            child: ScreenTypeLayout(mobile: AnnouncementsDetailsMobileScreen()),
          ),
        ),
        LoadingListenerWidget(loading: viewModel.baseParams.loading),
      ],
    );
  }

  @override
  AnnouncementsDetailsViewModel registerInstance() =>
      AnnouncementsDetailsViewModel();
}
