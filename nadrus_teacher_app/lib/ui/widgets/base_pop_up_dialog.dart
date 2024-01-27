import 'package:flutter/material.dart';

class BasePopUpDialog {
  static Future showPopup({
    required BuildContext context,
    required Widget child,
    bool isDismissible = true,
    Color? barrierColor,
    //Function()? onDismiss,
  }) {
    return showDialog(
      context: context,
      barrierColor: barrierColor ?? Colors.black.withOpacity(0.6),
      builder: (context) => child,
      barrierDismissible: isDismissible,
    );
  }
}
