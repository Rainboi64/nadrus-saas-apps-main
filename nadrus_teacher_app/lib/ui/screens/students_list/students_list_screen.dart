import "package:auto_route/auto_route.dart";
import 'package:flutter/material.dart';
import 'package:flutterx_live_data/flutterx_live_data.dart';
import 'package:nadrus_teacher_app/models/data/school/school.dart';
import 'package:nadrus_teacher_app/ui/core/layouts/base_scaffold.dart';
import 'package:nadrus_teacher_app/ui/core/responsive/screen_type_layout.dart';
import "package:nadrus_teacher_app/ui/widgets/instance/instance_state.dart";
import 'package:nadrus_teacher_app/ui/widgets/loaders/live_data_loader.dart';

import "./viewmodels/students_list_viewmodel.dart";
import 'mobile/students_list_mobile_screen.dart';

@RoutePage(name: "studentsList")
class StudentsListScreen extends StatefulWidget {
  final School school;
  const StudentsListScreen({required this.school, Key? key}) : super(key: key);

  @override
  State<StudentsListScreen> createState() => _StudentsListScreenState();
}

class _StudentsListScreenState extends State<StudentsListScreen>
    with
        InstanceState<StudentsListScreen, StudentsListViewModel>,
        ObserverMixin {
  @override
  void onInitState(StudentsListViewModel instance) {
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
            child: ScreenTypeLayout(mobile: StudentsListMobileScreen()),
          ),
        ),
        LoadingListenerWidget(loading: viewModel.baseParams.loading),
      ],
    );
  }

  @override
  StudentsListViewModel registerInstance() => StudentsListViewModel();
}
