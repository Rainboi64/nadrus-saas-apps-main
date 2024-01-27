import 'package:flutter/material.dart';

import '../../../resources/colors/colors.dart';

AppBar customizedAppBar({Function()? openDrawer}) {
  return AppBar(
    backgroundColor: DesignColors.secondaryColor,
    actions: const [
      // AnimatedGesture(
      //   callback: () => openDrawer(),
      //   child: const Padding(
      //     padding: EdgeInsets.only(top: 20.0),
      //     child: CircleAvatar(
      //       backgroundColor: DesignColors.secondaryColor,
      //       child: Icon(
      //         Icons.menu,
      //         color: DesignColors.textColor,
      //       ),
      //     ),
      //   ),
      // ),
    ],
    automaticallyImplyLeading: false,
  );
}
