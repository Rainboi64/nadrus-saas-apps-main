import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutterx_live_data/flutterx_live_data.dart';
import 'package:nadrus_teacher_app/ui/resources/colors/colors.dart';
import 'package:nadrus_teacher_app/ui/widgets/animations/animated_gesture.dart';

import '../../../models/data/teacher_feedback/teacher_feedback.dart';

class SelectableFeedbackContentTags extends StatelessWidget {
  final MutableLiveData<String> sentFeedback;
  final MutableLiveData<List<TeacherFeedback>> feedbackContent;
  const SelectableFeedbackContentTags(
      {required this.feedbackContent, required this.sentFeedback, super.key});

  @override
  Widget build(BuildContext context) {
    return LiveDataBuilder<List<TeacherFeedback>>(
      data: feedbackContent,
      builder: (context, list) {
        return list.isNotEmpty
            ? SizedBox(
                // height: (list.length / 2) * 128,
                child: Wrap(
                  children: List.generate(
                    list.length,
                    (index) {
                      return _buildItem(
                        content: list[index].content,
                        selected: list[index].selected,
                        callback: () {
                          selectOption(list[index].id);
                        },
                      );
                    },
                  ),
                ),
              )
            : const SizedBox();
      },
    );
  }

  _buildItem(
      {required String content,
      required bool selected,
      required Function() callback}) {
    return AnimatedGesture(
      callback: callback,
      child: Container(
        margin: const EdgeInsetsDirectional.only(end: 4, bottom: 4),
        padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 14),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          border: Border.all(
            color:
                selected ? DesignColors.primaryColor : const Color(0XFFE0E0E0),
          ),
        ),
        child: Text(
          content.tr(),
          style: TextStyle(
            fontSize: 18,
            fontWeight: selected ? FontWeight.bold : FontWeight.normal,
            color:
                selected ? DesignColors.primaryColor : DesignColors.textColor,
          ),
        ),
      ),
    );
  }

  selectOption(int id) {
    List<TeacherFeedback> temp = [];
    String tempSentFeedback = "";
    for (var element in feedbackContent.value) {
      if (element.id == id) {
        temp.add(element.copyWith(selected: !element.selected));
      } else {
        temp.add(element);
      }
    }
    feedbackContent.postValue([]);
    feedbackContent.postValue(temp);
    ////
    for (var element in temp) {
      if (element.selected) {
        tempSentFeedback += "${element.content.tr()}, ";
      }
    }
    int lastIndex = tempSentFeedback.lastIndexOf(',');
    if (lastIndex != -1) {
      tempSentFeedback =
          '${tempSentFeedback.substring(0, lastIndex)}.${tempSentFeedback.substring(lastIndex + 1)}';
    }
    sentFeedback.postValue(tempSentFeedback);
  }
}
