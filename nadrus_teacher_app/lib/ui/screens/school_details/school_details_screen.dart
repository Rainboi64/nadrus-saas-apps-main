import "package:auto_route/auto_route.dart";
import 'package:flutter/material.dart';
import 'package:flutterx_live_data/flutterx_live_data.dart';
import 'package:nadrus_teacher_app/ui/core/layouts/base_scaffold.dart';
import 'package:nadrus_teacher_app/ui/core/responsive/screen_type_layout.dart';
import "package:nadrus_teacher_app/ui/widgets/instance/instance_state.dart";
import 'package:nadrus_teacher_app/ui/widgets/loaders/live_data_loader.dart';

import "./viewmodels/school_details_viewmodel.dart";
import '../../../models/data/school/school.dart';
import 'mobile/school_details_mobile_screen.dart';

@RoutePage(name: "schoolDetails")
class SchoolDetailsScreen extends StatefulWidget {
  final School school;
  const SchoolDetailsScreen({required this.school, Key? key}) : super(key: key);

  @override
  State<SchoolDetailsScreen> createState() => _SchoolDetailsScreenState();
}

class _SchoolDetailsScreenState extends State<SchoolDetailsScreen>
    with
        InstanceState<SchoolDetailsScreen, SchoolDetailsViewModel>,
        ObserverMixin {
  @override
  void onInitState(SchoolDetailsViewModel instance) {
    if (widget.school != null) {
      instance.params.school.postValue(widget.school);
    }
    super.onInitState(instance);
  }

  @override
  Widget screen(context, viewModel) {
    return Stack(
      children: [
        BaseScaffold(
          builder: (context, theme) => const SafeArea(
            child: ScreenTypeLayout(mobile: SchoolDetailsMobileScreen()),
          ),
        ),
        LoadingListenerWidget(loading: viewModel.baseParams.loading),
      ],
    );
  }

  @override
  SchoolDetailsViewModel registerInstance() => SchoolDetailsViewModel();
}
