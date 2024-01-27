import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:nadrus_teacher_app/config/ui_config.dart';
import 'package:nadrus_teacher_app/ui/resources/colors/colors.dart';
import 'package:nadrus_teacher_app/ui/widgets/animations/animated_gesture.dart';
import 'package:nadrus_teacher_app/ui/widgets/buttons/customized_button.dart';

class CreateExamSuccessDialog extends StatelessWidget {
  final bool isSurprise;
  final Function() done;
  final int? timerDuration;
  const CreateExamSuccessDialog(
      {required this.isSurprise,
      required this.done,
      this.timerDuration,
      super.key});

  @override
  Widget build(BuildContext context) {
    return Dialog(
      insetPadding: EdgeInsets.symmetric(
          horizontal: 12, vertical: screenSize(context).height * 0.2),
      backgroundColor: Colors.white,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 12),
        decoration: BoxDecoration(
            color: DesignColors.white,
            borderRadius: BorderRadius.circular(14),
            boxShadow: const [
              BoxShadow(color: Colors.black12, spreadRadius: 4, blurRadius: 5),
            ]),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: 24),
            Text(
              isSurprise ? "surprise_exam_title".tr() : "later_exam_title".tr(),
              style: const TextStyle(fontSize: 28),
            ),
            const SizedBox(height: 48),
            Text(
              isSurprise
                  ? "surprise_exam_description".tr()
                  : "later_exam_description".tr(),
              style: const TextStyle(fontSize: 18, color: Colors.black),
            ),
            const SizedBox(height: 46),
            !isSurprise
                ? SizedBox(
                    width: double.infinity,
                    child: CustomizedButton(
                      callback: done,
                      child: Text('done'.tr()),
                    ),
                  )
                : Column(
                    children: [
                      SizedBox(
                        width: double.infinity,
                        child: CustomizedButton(
                          callback: done,
                          //() {
                          //Todo timer started
                          // appRouter.pop();
                          // BasePopUpDialog.showPopup(
                          //     context: context,
                          //     child: TimerDialog(startValue: timerDuration!));
                          //},
                          child: Text('timer_started'.tr()),
                        ),
                      ),
                      const SizedBox(height: 20),
                      SizedBox(
                        width: double.infinity,
                        child: AnimatedGesture(
                          callback: done,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'close'.tr(),
                                style: const TextStyle(
                                    color: DesignColors.primaryColor),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
            const SizedBox(height: 24),
          ],
        ),
      ),
    );
  }
}
