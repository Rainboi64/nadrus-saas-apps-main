import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutterx_live_data/flutterx_live_data.dart';
import 'package:nadrus_teacher_app/config/ui_config.dart';
import 'package:nadrus_teacher_app/router/app_router.dart';
import 'package:nadrus_teacher_app/ui/resources/colors/colors.dart';
import 'package:nadrus_teacher_app/ui/widgets/animations/animated_gesture.dart';
import 'package:nadrus_teacher_app/ui/widgets/buttons/customized_button.dart';

import '../../../../models/data/student/student.dart';
import '../../../shared/students_widgets/selectable_students_list.dart';

class CheckHomeworksPopUpDialog extends StatelessWidget {
  final MutableLiveData<List<Student>> students;
  final Function() sendMessageToParents;
  const CheckHomeworksPopUpDialog(
      {required this.students, required this.sendMessageToParents, super.key});

  @override
  Widget build(BuildContext context) {
    return Dialog(
      insetPadding: EdgeInsets.symmetric(
          horizontal: 12, vertical: screenSize(context).height * 0.1),
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
              "send_a_message_to_parents_about_homeworks".tr(),
              style: const TextStyle(fontSize: 28),
            ),
            const SizedBox(height: 46),
            SelectableStudentsList(students: students),
            SizedBox(
              width: double.infinity,
              child: CustomizedButton(
                callback: sendMessageToParents,
                child: Text('yes'.tr()),
              ),
            ),
            const SizedBox(height: 20),
            SizedBox(
              width: double.infinity,
              child: AnimatedGesture(
                callback: () {
                  appRouter.pop();
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'no'.tr(),
                      style: const TextStyle(color: DesignColors.primaryColor),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
