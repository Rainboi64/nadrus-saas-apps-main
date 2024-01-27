import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutterx_live_data/flutterx_live_data.dart';
import 'package:nadrus_teacher_app/ui/shared/selectable_lists/selectable_item.dart';
import 'package:nadrus_teacher_app/ui/widgets/animations/animated_gesture.dart';

class SelectableCompletionRateList extends StatelessWidget {
  final MutableLiveData<double?> selectedCompletionRate;
  final bool isCircle;
  SelectableCompletionRateList(
      {required this.selectedCompletionRate, this.isCircle = true, super.key});

  List<double?> completionRate = [0.25, 0.5, 0.75, 1];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60.0 * completionRate.length,
      child: LiveDataBuilder<double?>(
        data: selectedCompletionRate,
        builder: (context, value) => ListView.builder(
          itemCount: completionRate.length,
          itemBuilder: (context, index) {
            if (value != null && value == completionRate[index]) {
              return AnimatedGesture(
                child: selectableItem(completionRate[index].toString().tr(),
                    selected: true, isCircle: isCircle),
                callback: () {
                  selectedCompletionRate.postValue(completionRate[index]);
                },
              );
            }
            return AnimatedGesture(
              child: selectableItem(completionRate[index].toString().tr(),
                  selected: false, isCircle: isCircle),
              callback: () {
                selectedCompletionRate.postValue(completionRate[index]);
              },
            );
          },
        ),
      ),
    );
  }
}
