import "package:auto_route/auto_route.dart";
import 'package:flutter/material.dart';
import 'package:flutterx_live_data/flutterx_live_data.dart';
import 'package:nadrus_student_app/models/data/whiteboard/whiteboard.dart';
import 'package:nadrus_student_app/ui/core/layouts/base_scaffold.dart';
import 'package:nadrus_student_app/ui/core/responsive/screen_type_layout.dart';
import "package:nadrus_student_app/ui/widgets/instance/instance_state.dart";
import 'package:nadrus_student_app/ui/widgets/loaders/live_data_loader.dart';

import "./viewmodels/whiteboard_image_viewer_viewmodel.dart";
import 'mobile/whiteboard_image_viewer_mobile_screen.dart';

@RoutePage(name: "whiteboardImageViewer")
class WhiteboardImageViewerScreen extends StatefulWidget {
  final Whiteboard whiteboard;

  const WhiteboardImageViewerScreen({required this.whiteboard, Key? key})
      : super(key: key);

  @override
  State<WhiteboardImageViewerScreen> createState() =>
      _WhiteboardImageViewerScreenState();
}

class _WhiteboardImageViewerScreenState
    extends State<WhiteboardImageViewerScreen>
    with
        InstanceState<WhiteboardImageViewerScreen,
            WhiteboardImageViewerViewModel>,
        ObserverMixin {
  @override
  void onInitState(WhiteboardImageViewerViewModel instance) {
    instance.params.whiteboard.postValue(widget.whiteboard);
    instance.params.imageUrl.postValue(widget.whiteboard.imagePath!);
    super.onInitState(instance);
  }

  @override
  Widget screen(context, viewModel) {
    return Stack(
      children: [
        BaseScaffold(
          builder: (context, theme) => const SafeArea(
            child:
                ScreenTypeLayout(mobile: WhiteboardImageViewerMobileScreen()),
          ),
        ),
        LoadingListenerWidget(loading: viewModel.baseParams.loading),
      ],
    );
  }

  @override
  WhiteboardImageViewerViewModel registerInstance() =>
      WhiteboardImageViewerViewModel();
}
