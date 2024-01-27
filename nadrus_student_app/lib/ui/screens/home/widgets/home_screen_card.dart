import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nadrus_student_app/config/ui_config.dart';
import 'package:nadrus_student_app/extensions/assets_extension.dart';
import 'package:nadrus_student_app/ui/resources/colors/colors.dart';
import 'package:nadrus_student_app/ui/widgets/animations/animated_gesture.dart';

class HomeScreenCard extends StatelessWidget {
  final Function() callback;
  const HomeScreenCard({required this.callback, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedGesture(
      callback: () {
        callback();
      },
      child: Stack(
        children: [
          Image.asset("home_card".pngAsset),
          Positioned(
            bottom: 0,
            child: Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(14, 0, 17, 15),
              child: SizedBox(
                width: screenSize(context).width - 79,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "important_announcement".tr(),
                      style: const TextStyle(
                          color: DesignColors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.w500),
                    ),
                    _buildCircledArrow(),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  _buildCircledArrow() {
    return AnimatedGesture(
      callback: () {},
      child: Container(
        padding: const EdgeInsets.all(9),
        decoration: const BoxDecoration(
          color: DesignColors.white,
          shape: BoxShape.circle,
        ),
        child: SvgPicture.asset("short-arrow".svgAsset),
      ),
    );
  }
}
