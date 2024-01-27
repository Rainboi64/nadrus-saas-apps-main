import 'package:flutter/material.dart';
import 'package:flutterx_live_data/flutterx_live_data.dart';
import 'package:nadrus_teacher_app/models/data/lesson/lesson.dart';
import 'package:nadrus_teacher_app/ui/shared/selectable_lists/selectable_item.dart';
import 'package:nadrus_teacher_app/ui/widgets/animations/animated_gesture.dart';

///Selecting a lesson at a time
class SelectableLessonList extends StatelessWidget {
  final List<Lesson> lessons;
  final MutableLiveData<Lesson?> selectedLesson;
  final bool isCircle;
  const SelectableLessonList(
      {required this.lessons,
      required this.selectedLesson,
      this.isCircle = true,
      super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60.0 * lessons.length,
      child: LiveDataBuilder<Lesson?>(
        data: selectedLesson,
        builder: (context, value) => ListView.builder(
          itemCount: lessons.length,
          itemBuilder: (context, index) {
            if (value != null && value == lessons[index]) {
              return AnimatedGesture(
                child: selectableItem(lessons[index].name ?? "",
                    selected: true, isCircle: isCircle),
                callback: () {
                  selectedLesson.postValue(lessons[index]);
                },
              );
            }
            return AnimatedGesture(
              child: selectableItem(lessons[index].name ?? "",
                  selected: false, isCircle: isCircle),
              callback: () {
                selectedLesson.postValue(lessons[index]);
              },
            );
          },
        ),
      ),
    );
  }
}

/// Selecting multiple lessons at a time
class SelectableLessonsList extends StatelessWidget {
  final MutableLiveData<List<Lesson>> lessons;
  final bool isCircle;
  const SelectableLessonsList(
      {required this.lessons, this.isCircle = false, super.key});

  @override
  Widget build(BuildContext context) {
    return LiveDataBuilder<List<Lesson>>(
      data: lessons,
      builder: (context, value) => SizedBox(
        height: 60.0 * value.length,
        child: ListView.builder(
          itemCount: value.length,
          itemBuilder: (context, index) {
            return AnimatedGesture(
              child: selectableItem(value[index].name ?? "",
                  selected: value[index].selected, isCircle: isCircle),
              callback: () {
                selectLessons(value[index].name.toString());
              },
            );
          },
        ),
      ),
    );
  }

  selectLessons(String name) {
    List<Lesson> temp = [];

    for (var element in lessons.value) {
      if (element.name == name) {
        temp.add(element.copyWith(selected: !element.selected));
      } else {
        temp.add(element);
      }
    }
    lessons.postValue(temp);
  }
}
