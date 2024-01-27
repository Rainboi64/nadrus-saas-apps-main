import "package:auto_route/auto_route.dart";
import 'package:flutter/material.dart';
import 'package:flutterx_live_data/flutterx_live_data.dart';
import 'package:nadrus_student_app/ui/core/layouts/base_scaffold.dart';
import 'package:nadrus_student_app/ui/core/responsive/screen_type_layout.dart';
import "package:nadrus_student_app/ui/widgets/instance/instance_state.dart";
import 'package:nadrus_student_app/ui/widgets/loaders/live_data_loader.dart';

import "./viewmodels/homeworks_viewmodel.dart";
import 'mobile/homeworks_mobile_screen.dart';

@RoutePage(name: "homeworks")
class HomeworksScreen extends StatefulWidget {
  const HomeworksScreen({Key? key}) : super(key: key);

  @override
  State<HomeworksScreen> createState() => _HomeworksScreenState();
}

class _HomeworksScreenState extends State<HomeworksScreen>
    with InstanceState<HomeworksScreen, HomeworksViewModel>, ObserverMixin {
  @override
  Widget screen(context, viewModel) {
    return Stack(
      children: [
        BaseScaffold(
          builder: (context, theme) => SafeArea(
            child: ScreenTypeLayout(mobile: HomeworksMobileScreen()),
          ),
        ),
        LoadingListenerWidget(loading: viewModel.baseParams.loading),
      ],
    );
  }

  @override
  HomeworksViewModel registerInstance() => HomeworksViewModel();
}
