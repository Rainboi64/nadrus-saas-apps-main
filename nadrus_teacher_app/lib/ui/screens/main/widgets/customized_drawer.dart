import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:nadrus_teacher_app/config/ui_config.dart';
import 'package:nadrus_teacher_app/ui/resources/colors/colors.dart';
import 'package:nadrus_teacher_app/ui/screens/main/widgets/customized_drawer_elements.dart';
import 'package:nadrus_teacher_app/ui/widgets/animations/animated_column.dart';

import '../../../widgets/animations/animated_gesture.dart';

class CustomizedDrawer extends StatelessWidget {
  final Function() closeDrawer;
  final Function() logout;
  final Function(int) toggleScreens;
  final int selectedIndex;
  const CustomizedDrawer(
      {required this.closeDrawer,
      required this.logout,
      required this.toggleScreens,
      required this.selectedIndex,
      super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsetsDirectional.only(start: 12, end: 24),
      width: screenSize(context).width - 52,
      color: DesignColors.white,
      child: AnimatedColumn(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              const SizedBox(height: 80),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  AnimatedGesture(
                    callback: () {
                      closeDrawer();
                    },
                    child: const Padding(
                      padding: EdgeInsets.only(top: 20.0),
                      child: CircleAvatar(
                        backgroundColor: DesignColors.secondaryColor,
                        child: Icon(
                          Icons.close,
                          color: DesignColors.textColor,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 28),
              CustomizedDrawerElement(
                title: "home",
                selected: selectedIndex == 0,
                callback: () {
                  toggleScreens(0);
                },
              ),
              // CustomizedDrawerElement(
              //   title: "all_schools_and_sections",
              //   selected: selectedIndex == 1,
              //   callback: () {
              //     toggleScreens(1);
              //   },
              // ),
              // CustomizedDrawerElement(
              //   title: "exams_to_correct",
              //   selected: selectedIndex == 2,
              //   callback: () {
              //     toggleScreens(2);
              //   },
              // ),
              // CustomizedDrawerElement(
              //   title: "notifications",
              //   selected: selectedIndex == 3,
              //   endWidget: const CircleAvatar(
              //     radius: 12,
              //     backgroundColor: DesignColors.primaryColor,
              //     child: Text(
              //       '12',
              //       style: TextStyle(
              //         fontSize: 14,
              //         color: DesignColors.white,
              //         fontWeight: FontWeight.w700,
              //       ),
              //     ),
              //   ),
              //   callback: () {
              //     toggleScreens(3);
              //   },
              // ), //todo
              CustomizedDrawerElement(
                title: "logout",
                callback: () {
                  logout();
                },
              ),
            ],
          ),
          Column(
            children: [
              Row(
                children: [
                  AnimatedGesture(
                      child: Text(
                        "contact_support".tr(),
                        style: const TextStyle(
                            fontSize: 18,
                            color: DesignColors.primaryColor,
                            fontWeight: FontWeight.w700),
                      ),
                      callback: () {}),
                ],
              ),
              const SizedBox(height: 40)
            ],
          )
        ],
      ),
    );
  }
}
