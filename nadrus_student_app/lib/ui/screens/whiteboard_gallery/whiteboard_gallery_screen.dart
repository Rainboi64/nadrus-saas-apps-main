import "package:auto_route/auto_route.dart";
import 'package:flutter/material.dart';
import 'package:flutterx_live_data/flutterx_live_data.dart';
import 'package:nadrus_student_app/ui/core/layouts/base_scaffold.dart';
import 'package:nadrus_student_app/ui/core/responsive/screen_type_layout.dart';
import "package:nadrus_student_app/ui/widgets/instance/instance_state.dart";
import 'package:nadrus_student_app/ui/widgets/loaders/live_data_loader.dart';

import "./viewmodels/whiteboard_gallery_viewmodel.dart";
import '../../../models/data/whiteboard/whiteboard.dart';
import 'mobile/whiteboard_gallery_mobile_screen.dart';

@RoutePage(name: "whiteboardGallery")
class WhiteboardGalleryScreen extends StatefulWidget {
  final List<Whiteboard>? whiteboards;
  const WhiteboardGalleryScreen({this.whiteboards, Key? key}) : super(key: key);

  @override
  State<WhiteboardGalleryScreen> createState() =>
      _WhiteboardGalleryScreenState();
}

class _WhiteboardGalleryScreenState extends State<WhiteboardGalleryScreen>
    with
        InstanceState<WhiteboardGalleryScreen, WhiteboardGalleryViewModel>,
        ObserverMixin {
  @override
  void onInitState(WhiteboardGalleryViewModel instance) {
    if (widget.whiteboards != null) {
      instance.params.specificLesson.postValue(true);
      instance.params.whiteboards.postValue(widget.whiteboards!);
    }
    super.onInitState(instance);
  }

  @override
  Widget screen(context, viewModel) {
    return Stack(
      children: [
        BaseScaffold(
          builder: (context, theme) => const SafeArea(
            child: ScreenTypeLayout(mobile: WhiteboardGalleryMobileScreen()),
          ),
        ),
        LoadingListenerWidget(loading: viewModel.baseParams.loading),
      ],
    );
  }

  @override
  WhiteboardGalleryViewModel registerInstance() => WhiteboardGalleryViewModel();
}
