import "package:auto_route/auto_route.dart";
import 'package:flutter/material.dart';
import 'package:flutterx_live_data/flutterx_live_data.dart';
import 'package:nadrus_student_app/ui/core/layouts/base_scaffold.dart';
import 'package:nadrus_student_app/ui/core/responsive/screen_type_layout.dart';
import "package:nadrus_student_app/ui/widgets/instance/instance_state.dart";
import 'package:nadrus_student_app/ui/widgets/loaders/live_data_loader.dart';

import "./viewmodels/exam_details_viewmodel.dart";
import '../../../models/data/exam_collection/exam_collection.dart';
import 'mobile/exam_details_mobile_screen.dart';

@RoutePage(name: "examDetails")
class ExamDetailsScreen extends StatefulWidget {
  final ExamCollection examCollection;
  const ExamDetailsScreen({required this.examCollection, Key? key})
      : super(key: key);

  @override
  State<ExamDetailsScreen> createState() => _ExamDetailsScreenState();
}

class _ExamDetailsScreenState extends State<ExamDetailsScreen>
    with InstanceState<ExamDetailsScreen, ExamDetailsViewModel>, ObserverMixin {
  @override
  void onInitState(ExamDetailsViewModel instance) {
    instance.params.examCollection.postValue(widget.examCollection);
    super.onInitState(instance);
  }

  @override
  Widget screen(context, viewModel) {
    return Stack(
      children: [
        BaseScaffold(
          builder: (context, theme) => const SafeArea(
            child: ScreenTypeLayout(mobile: ExamDetailsMobileScreen()),
          ),
        ),
        LoadingListenerWidget(loading: viewModel.baseParams.loading),
      ],
    );
  }

  @override
  ExamDetailsViewModel registerInstance() => ExamDetailsViewModel();
}
