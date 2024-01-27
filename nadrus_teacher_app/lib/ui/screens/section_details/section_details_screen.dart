import "package:auto_route/auto_route.dart";
import 'package:flutter/material.dart';
import 'package:flutterx_live_data/flutterx_live_data.dart';
import 'package:nadrus_teacher_app/ui/core/layouts/base_scaffold.dart';
import 'package:nadrus_teacher_app/ui/core/responsive/screen_type_layout.dart';
import "package:nadrus_teacher_app/ui/widgets/instance/instance_state.dart";
import 'package:nadrus_teacher_app/ui/widgets/loaders/live_data_loader.dart';

import "./viewmodels/section_details_viewmodel.dart";
import 'mobile/section_details_mobile_screen.dart';

@RoutePage(name: "sectionDetails")
class SectionDetailsScreen extends StatefulWidget {
  const SectionDetailsScreen({Key? key}) : super(key: key);

  @override
  State<SectionDetailsScreen> createState() => _SectionDetailsScreenState();
}

class _SectionDetailsScreenState extends State<SectionDetailsScreen>
    with
        InstanceState<SectionDetailsScreen, SectionDetailsViewModel>,
        ObserverMixin {
  @override
  void onInitState(SectionDetailsViewModel instance) {
    super.onInitState(instance);
  }

  @override
  Widget screen(context, viewModel) {
    return Stack(
      children: [
        BaseScaffold(
          builder: (context, theme) => SafeArea(
            child: const ScreenTypeLayout(mobile: SectionDetailsMobileScreen()),
          ),
        ),
        LoadingListenerWidget(loading: viewModel.baseParams.loading),
      ],
    );
  }

  @override
  SectionDetailsViewModel registerInstance() => SectionDetailsViewModel();
}
