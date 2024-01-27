import "package:auto_route/auto_route.dart";
import 'package:flutter/material.dart';
import 'package:flutterx_live_data/flutterx_live_data.dart';
import 'package:nadrus_student_app/ui/core/layouts/base_scaffold.dart';
import 'package:nadrus_student_app/ui/core/responsive/screen_type_layout.dart';
import "package:nadrus_student_app/ui/widgets/instance/instance_state.dart";
import 'package:nadrus_student_app/ui/widgets/loaders/live_data_loader.dart';

import "./viewmodels/teachers_notes_viewmodel.dart";
import 'mobile/teachers_notes_mobile_screen.dart';

@RoutePage(name: "teachersNotes")
class TeachersNotesScreen extends StatefulWidget {
  const TeachersNotesScreen({Key? key}) : super(key: key);

  @override
  State<TeachersNotesScreen> createState() => _TeachersNotesScreenState();
}

class _TeachersNotesScreenState extends State<TeachersNotesScreen>
    with
        InstanceState<TeachersNotesScreen, TeachersNotesViewModel>,
        ObserverMixin {
  @override
  Widget screen(context, viewModel) {
    return Stack(
      children: [
        BaseScaffold(
          builder: (context, theme) => SafeArea(
            child: ScreenTypeLayout(mobile: TeachersNotesMobileScreen()),
          ),
        ),
        LoadingListenerWidget(loading: viewModel.baseParams.loading),
      ],
    );
  }

  @override
  TeachersNotesViewModel registerInstance() => TeachersNotesViewModel();
}
