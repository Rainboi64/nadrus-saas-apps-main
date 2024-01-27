import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutterx_live_data/flutterx_live_data.dart';
import 'package:nadrus_teacher_app/ui/shared/selectable_lists/selectable_item.dart';
import 'package:nadrus_teacher_app/ui/widgets/animations/animated_gesture.dart';

class MinutesOfExamList extends StatelessWidget {
  final MutableLiveData<int> selectedMinutesOfExam;
  final bool isCircle;
  MinutesOfExamList(
      {required this.selectedMinutesOfExam, this.isCircle = true, super.key});

  List<int> minutesOfExam = [5, 10, 15, 20, 30, 45, 60];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60.0 * minutesOfExam.length,
      child: LiveDataBuilder<int>(
        data: selectedMinutesOfExam,
        builder: (context, value) => ListView.builder(
          itemCount: minutesOfExam.length,
          itemBuilder: (context, index) {
            if (value == minutesOfExam[index]) {
              return AnimatedGesture(
                child: selectableItem(
                    "${minutesOfExam[index]} ${"minutes".tr()}",
                    selected: true,
                    isCircle: isCircle),
                callback: () {
                  selectedMinutesOfExam.postValue(minutesOfExam[index]);
                },
              );
            }
            return AnimatedGesture(
              child: selectableItem("${minutesOfExam[index]} ${"minutes".tr()}",
                  selected: false, isCircle: isCircle),
              callback: () {
                selectedMinutesOfExam.postValue(minutesOfExam[index]);
              },
            );
          },
        ),
      ),
    );
  }
}
