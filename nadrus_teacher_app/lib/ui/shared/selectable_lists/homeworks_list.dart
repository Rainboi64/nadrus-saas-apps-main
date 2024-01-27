import 'package:flutter/material.dart';
import 'package:flutterx_live_data/flutterx_live_data.dart';
import 'package:nadrus_teacher_app/ui/shared/selectable_lists/selectable_item.dart';
import 'package:nadrus_teacher_app/ui/widgets/animations/animated_gesture.dart';

import '../../../../models/data/homework/homework.dart';

///Selecting a homework at a time
class SelectableHomeworkList extends StatelessWidget {
  final List<Homework> homeworks;
  final MutableLiveData<Homework?> selectedHomework;
  final bool isCircle;
  const SelectableHomeworkList(
      {required this.homeworks,
      required this.selectedHomework,
      this.isCircle = true,
      super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60.0 * homeworks.length,
      child: LiveDataBuilder<Homework?>(
        data: selectedHomework,
        builder: (context, value) => ListView.builder(
          itemCount: homeworks.length,
          itemBuilder: (context, index) {
            if (value != null && value == homeworks[index]) {
              return AnimatedGesture(
                child: selectableItem(homeworks[index].name ?? "",
                    selected: true, isCircle: isCircle),
                callback: () {
                  selectedHomework.postValue(homeworks[index]);
                },
              );
            }
            return AnimatedGesture(
              child: selectableItem(homeworks[index].name ?? "",
                  selected: false, isCircle: isCircle),
              callback: () {
                selectedHomework.postValue(homeworks[index]);
              },
            );
          },
        ),
      ),
    );
  }
}

/// Selecting multiple homeworks at a time
class SelectableHomeworksList extends StatelessWidget {
  final MutableLiveData<List<Homework>> homeworks;
  final bool isCircle;
  const SelectableHomeworksList(
      {required this.homeworks, this.isCircle = false, super.key});

  @override
  Widget build(BuildContext context) {
    return LiveDataBuilder<List<Homework>>(
      data: homeworks,
      builder: (context, value) => SizedBox(
        height: 60.0 * value.length,
        child: ListView.builder(
          itemCount: value.length,
          itemBuilder: (context, index) {
            return AnimatedGesture(
              child: selectableItem(value[index].name ?? "",
                  selected: value[index].selected, isCircle: isCircle),
              callback: () {
                selectHomeworks(value[index].name.toString());
              },
            );
          },
        ),
      ),
    );
  }

  selectHomeworks(String name) {
    List<Homework> temp = [];

    for (var element in homeworks.value) {
      if (element.name == name) {
        temp.add(element.copyWith(selected: !element.selected));
      } else {
        temp.add(element);
      }
    }
    homeworks.postValue(temp);
  }
}
