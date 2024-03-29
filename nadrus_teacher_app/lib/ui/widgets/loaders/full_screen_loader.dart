import 'package:flutter/material.dart';
import 'package:nadrus_teacher_app/ui/widgets/animations/customized_animated_widget.dart';

import 'loader.dart';

class FullScreenLoader extends StatelessWidget {
  const FullScreenLoader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomizedAnimatedWidget(
      duration: const Duration(milliseconds: 350),
      child: Scaffold(
        backgroundColor: Colors.black.withOpacity(0.2),
        body: const Center(child: Loader()),
      ),
    );
  }
}
