import "package:auto_route/auto_route.dart";
import 'package:flutter/material.dart';
import 'package:flutterx_live_data/flutterx_live_data.dart';
import 'package:nadrus_teacher_app/ui/core/layouts/base_scaffold.dart';
import 'package:nadrus_teacher_app/ui/core/responsive/screen_type_layout.dart';
import "package:nadrus_teacher_app/ui/widgets/instance/instance_state.dart";
import 'package:nadrus_teacher_app/ui/widgets/loaders/live_data_loader.dart';

import "./viewmodels/create_exam_viewmodel.dart";
import '../../../models/data/lesson/lesson.dart';
import 'mobile/create_exam_mobile_screen.dart';

@RoutePage(name: "createExam")
class CreateExamScreen extends StatefulWidget {
  final String sectionId;
  final List<Lesson> suggestedLessons;
  const CreateExamScreen(
      {required this.suggestedLessons, required this.sectionId, Key? key})
      : super(key: key);

  @override
  State<CreateExamScreen> createState() => _CreateExamScreenState();
}

class _CreateExamScreenState extends State<CreateExamScreen>
    with InstanceState<CreateExamScreen, CreateExamViewModel>, ObserverMixin {
  @override
  void onInitState(CreateExamViewModel instance) {
    instance.params.suggestedLessons.postValue(widget.suggestedLessons);
    instance.params.sectionId.postValue(widget.sectionId);
    super.onInitState(instance);
  }

  @override
  Widget screen(context, viewModel) {
    return Stack(
      children: [
        BaseScaffold(
          builder: (context, theme) => const SafeArea(
            child: ScreenTypeLayout(mobile: CreateExamMobileScreen()),
          ),
        ),
        LoadingListenerWidget(loading: viewModel.baseParams.loading),
      ],
    );
  }

  @override
  CreateExamViewModel registerInstance() => CreateExamViewModel();
}
