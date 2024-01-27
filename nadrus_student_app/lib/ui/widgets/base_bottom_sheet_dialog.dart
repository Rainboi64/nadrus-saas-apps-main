import 'package:flutter/material.dart';
import 'package:nadrus_student_app/ui/core/layouts/base_scaffold.dart';
import 'package:nadrus_student_app/ui/core/layouts/base_scroll_view.dart';
import 'package:nadrus_student_app/ui/resources/dimensions/dimensions.dart';
import 'package:nadrus_student_app/ui/widgets/animations/customized_animated_widget.dart';

class BaseBottomSheetDialog {
  static Future<void> showBottomSheet({
    required BuildContext context,
    required Widget child,
    bool isDismissible = true,
    bool enableDrag = true,
    Color? barrierColor,
    Function()? onDismiss,
    double? borderRadius,
  }) async {
    return showModalBottomSheet(
      context: context,
      clipBehavior: Clip.hardEdge,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      enableDrag: enableDrag,
      barrierColor: barrierColor ?? Colors.black.withOpacity(0.6),
      isDismissible: isDismissible,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(borderRadius ?? bottomSheetRadius),
            topRight: Radius.circular(borderRadius ?? bottomSheetRadius)),
      ),
      builder: (BuildContext context) {
        return Stack(
          children: [
            GestureDetector(onTap: () {
              if (isDismissible) {
                onDismiss?.call();
                Navigator.pop(context);
              }
            }),
            _BaseBottomSheetDialog(
              isDismissible: isDismissible,
              onDismiss: onDismiss,
              borderRadius: borderRadius,
              child: child,
            ),
          ],
        );
      },
    );
  }
}

class _BaseBottomSheetDialog extends StatelessWidget {
  final Widget child;
  final bool isDismissible;
  final double? borderRadius;
  final Function()? onDismiss;
  const _BaseBottomSheetDialog({
    required this.child,
    required this.isDismissible,
    this.borderRadius,
    this.onDismiss,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BaseScaffold(
      backgroundColor: Colors.transparent,
      resizeToAvoidBottomInset: true,
      builder: (context, theme) {
        return WillPopScope(
          onWillPop: () => Future.value(isDismissible),
          child: Container(
            padding:
                EdgeInsets.only(top: MediaQuery.of(context).viewPadding.top),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Expanded(
                  child: BaseScrollView(
                    child: IntrinsicHeight(
                      child: Column(
                        children: [
                          Expanded(
                            child: GestureDetector(
                              onTap: () {
                                if (isDismissible) {
                                  onDismiss?.call();
                                  Navigator.pop(context);
                                }
                              },
                            ),
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width,
                            decoration: BoxDecoration(
                              color: theme.scaffoldBackgroundColor,
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(
                                    borderRadius ?? bottomSheetRadius),
                                topRight: Radius.circular(
                                    borderRadius ?? bottomSheetRadius),
                              ),
                            ),
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: unitAndHalf),
                                  child: CustomizedAnimatedWidget(
                                    duration: const Duration(milliseconds: 150),
                                    child: child,
                                  ),
                                ),
                                // fix iOS bottom safe area
                                SizedBox(
                                    height: MediaQuery.of(context)
                                        .viewPadding
                                        .bottom),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
