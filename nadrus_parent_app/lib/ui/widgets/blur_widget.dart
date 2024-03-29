import 'dart:ui' as ui;

import 'package:flutter/material.dart';

class BlurWidget extends StatelessWidget {
  final double width;
  final double height;
  final double blur;
  const BlurWidget({
    required this.width,
    required this.height,
    this.blur = 3,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: ClipRRect(
        child: BackdropFilter(
          filter: ui.ImageFilter.blur(sigmaX: blur, sigmaY: blur),
          child: Container(
            width: width,
            height: height,
            color: Colors.black.withOpacity(0.35),
          ),
        ),
      ),
    );
  }
}
