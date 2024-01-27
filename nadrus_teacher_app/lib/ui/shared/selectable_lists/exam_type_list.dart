import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutterx_live_data/flutterx_live_data.dart';

import '../../widgets/animations/animated_gesture.dart';
import 'selectable_item.dart';

class ExamTypeList extends StatelessWidget {
  final MutableLiveData<bool> isSurprise;
  final bool isCircle;
  ExamTypeList({required this.isSurprise, this.isCircle = true, super.key});

  List<bool> isSurpriseList = [true, false];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60.0 * isSurpriseList.length,
      child: LiveDataBuilder<bool>(
        data: isSurprise,
        builder: (context, value) => ListView.builder(
          itemCount: isSurpriseList.length,
          itemBuilder: (context, index) {
            if (value != null && value == isSurpriseList[index]) {
              return AnimatedGesture(
                child: selectableItem(
                    isSurpriseList[index].toString() == "true"
                        ? "surprise_exam".tr()
                        : "later_exam".tr(),
                    selected: true,
                    isCircle: isCircle),
                callback: () {
                  isSurprise.postValue(isSurpriseList[index]);
                },
              );
            }
            return AnimatedGesture(
              child: selectableItem(
                  isSurpriseList[index].toString() == "true"
                      ? "surprise_exam".tr()
                      : "later_exam".tr(),
                  selected: false,
                  isCircle: isCircle),
              callback: () {
                isSurprise.postValue(isSurpriseList[index]);
              },
            );
          },
        ),
      ),
    );
  }
}
