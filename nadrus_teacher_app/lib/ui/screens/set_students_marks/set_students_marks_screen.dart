import "package:auto_route/auto_route.dart";
import 'package:flutter/material.dart';
import 'package:flutterx_live_data/flutterx_live_data.dart';
import 'package:nadrus_teacher_app/ui/core/layouts/base_scaffold.dart';
import 'package:nadrus_teacher_app/ui/core/responsive/screen_type_layout.dart';
import "package:nadrus_teacher_app/ui/widgets/instance/instance_state.dart";
import 'package:nadrus_teacher_app/ui/widgets/loaders/live_data_loader.dart';

import "./viewmodels/set_students_marks_viewmodel.dart";
import '../../../models/data/student/student.dart';
import 'mobile/set_students_marks_mobile_screen.dart';

@RoutePage(name: "setStudentsMarks")
class SetStudentsMarksScreen extends StatefulWidget {
  final List<Student> students;
  final String collectionId;
  final String examId;
  const SetStudentsMarksScreen(
      {required this.students,
      required this.collectionId,
      required this.examId,
      Key? key})
      : super(key: key);

  @override
  State<SetStudentsMarksScreen> createState() => _SetStudentsMarksScreenState();
}

class _SetStudentsMarksScreenState extends State<SetStudentsMarksScreen>
    with
        InstanceState<SetStudentsMarksScreen, SetStudentsMarksViewModel>,
        ObserverMixin {
  @override
  void onInitState(SetStudentsMarksViewModel instance) {
    instance.params.students.postValue(widget.students);
    instance.params.collectionId.postValue(widget.collectionId);
    instance.params.examId.postValue(widget.examId);
    super.onInitState(instance);
  }

  @override
  Widget screen(context, viewModel) {
    return Stack(
      children: [
        BaseScaffold(
          builder: (context, theme) => const SafeArea(
            child: ScreenTypeLayout(mobile: SetStudentsMarksMobileScreen()),
          ),
        ),
        LoadingListenerWidget(loading: viewModel.baseParams.loading),
      ],
    );
  }

  @override
  SetStudentsMarksViewModel registerInstance() => SetStudentsMarksViewModel();
}
