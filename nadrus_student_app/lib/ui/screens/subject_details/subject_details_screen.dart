import "package:auto_route/auto_route.dart";
import 'package:flutter/material.dart';
import 'package:flutterx_live_data/flutterx_live_data.dart';
import 'package:nadrus_student_app/models/data/subject/subject.dart';
import 'package:nadrus_student_app/ui/core/layouts/base_scaffold.dart';
import 'package:nadrus_student_app/ui/core/responsive/screen_type_layout.dart';
import "package:nadrus_student_app/ui/widgets/instance/instance_state.dart";
import 'package:nadrus_student_app/ui/widgets/loaders/live_data_loader.dart';

import "./viewmodels/subject_details_viewmodel.dart";
import 'mobile/subject_details_mobile_screen.dart';

@RoutePage(name: "subjectDetails")
class SubjectDetailsScreen extends StatefulWidget {
  final Subject subject;
  const SubjectDetailsScreen({required this.subject, Key? key})
      : super(key: key);

  @override
  State<SubjectDetailsScreen> createState() => _SubjectDetailsScreenState();
}

class _SubjectDetailsScreenState extends State<SubjectDetailsScreen>
    with
        InstanceState<SubjectDetailsScreen, SubjectDetailsViewModel>,
        ObserverMixin {
  @override
  void onInitState(SubjectDetailsViewModel instance) {
    instance.params.subject.postValue(widget.subject);
    instance.params.subjectId.postValue(widget.subject.id);
    super.onInitState(instance);
  }

  @override
  Widget screen(context, viewModel) {
    return Stack(
      children: [
        BaseScaffold(
          builder: (context, theme) => const SafeArea(
            child: ScreenTypeLayout(mobile: SubjectDetailsMobileScreen()),
          ),
        ),
        LoadingListenerWidget(loading: viewModel.baseParams.loading),
      ],
    );
  }

  @override
  SubjectDetailsViewModel registerInstance() => SubjectDetailsViewModel();
}
