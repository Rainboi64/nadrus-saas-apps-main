import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nadrus_student_app/controllers/tenant_controller.dart';
import 'package:nadrus_student_app/extensions/assets_extension.dart';
import 'package:nadrus_student_app/models/data/user/user.dart';
import 'package:nadrus_student_app/router/app_router.dart';
import 'package:nadrus_student_app/ui/core/layouts/base_scroll_view.dart';
import 'package:nadrus_student_app/ui/resources/colors/colors.dart';
import 'package:nadrus_student_app/ui/widgets/animations/animated_gesture.dart';

class ProfilePopUpDialogContent extends StatelessWidget {
  final User? user;
  final Function() logout;
  const ProfilePopUpDialogContent(
      {required this.user, required this.logout, super.key});

  @override
  Widget build(BuildContext context) {
    return Dialog(
      backgroundColor: DesignColors.white,
      //contentPadding: EdgeInsets.zero,
      elevation: 0,
      child: Stack(
        children: [
          Container(
            height: 400,
            padding: const EdgeInsets.symmetric(vertical: 21),
            decoration: BoxDecoration(
              color: DesignColors.white,
              borderRadius: BorderRadius.circular(34),
            ),
            child: BaseScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(height: 32),
                  if (user != null &&
                      user!.firstName != null &&
                      user!.lastName != null)
                    _text("${user!.firstName!} ${user!.lastName!}",
                        fontSize: 34, fontWeight: FontWeight.w500),
                  const SizedBox(height: 14),
                  _text(user!.classSection()),
                  const SizedBox(height: 12),
                  _text(TenantController.getTenant()),
                  const SizedBox(height: 24),
                  _divider(),
                  const SizedBox(height: 12),
                  if (user != null)
                    _profilePopUpDetailsRow("username".tr(), user!.username),
                  const SizedBox(height: 11),
                  _profilePopUpDetailsRow(
                      "parent_username".tr(), user!.parent?.username ?? ""),
                  const SizedBox(height: 12),
                  _divider(),
                  const SizedBox(height: 12),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12),
                    child: _text("change_password_note".tr(), fontSize: 16),
                  ),
                  const SizedBox(height: 12),
                  _divider(),
                  const SizedBox(height: 12),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12),
                    child: AnimatedGesture(
                      callback: () {
                        logout();
                      },
                      child: Row(
                        children: [
                          SvgPicture.asset("logout".svgAsset),
                          const SizedBox(width: 10),
                          _text("logout".tr(),
                              color: DesignColors.errorColor, fontSize: 16),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 21),
                ],
              ),
            ),
          ),
          Positioned(
            top: 18,
            left: 20,
            child: AnimatedGesture(
                callback: () => appRouter.pop(),
                child: const Icon(Icons.close,
                    color: DesignColors.black, size: 20)),
          ),
        ],
      ),
    );
  }

  _text(text, {double? fontSize, FontWeight? fontWeight, Color? color}) => Text(
        text,
        style: TextStyle(
            color: color ?? DesignColors.textColor,
            fontSize: fontSize ?? 18,
            fontWeight: fontWeight ?? FontWeight.normal),
      );

  _profilePopUpDetailsRow(text1, text2,
          {double? fontSize, FontWeight? fontWeight}) =>
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            _text(text1,
                color: DesignColors.textColor,
                fontSize: fontSize ?? 16,
                fontWeight: fontWeight ?? FontWeight.normal),
            _text(text2,
                color: DesignColors.textColor,
                fontSize: fontSize ?? 16,
                fontWeight: fontWeight ?? FontWeight.normal),
          ],
        ),
      );

  _divider() => const Divider(color: Color(0XFFD6D5DC));
}
