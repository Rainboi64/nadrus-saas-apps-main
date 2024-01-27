import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutterx_live_data/flutterx_live_data.dart';
import 'package:nadrus_student_app/models/data/weekly_schedule/custom_weekly_schedule.dart';
import 'package:nadrus_student_app/ui/core/layouts/base_scroll_view.dart';
import 'package:nadrus_student_app/ui/core/layouts/theme_widget.dart';
import 'package:nadrus_student_app/ui/screens/schedule/widgets/weekly_schedule_day_card.dart';
import "package:nadrus_student_app/ui/widgets/instance/instance_builder.dart";

import '../../../shared/screen_title.dart';
import '../../../widgets/animations/animated_column.dart';
import '../../../widgets/animations/animated_gesture.dart';
import "../viewmodels/schedule_viewmodel.dart";
import '../widgets/weekly_schedule_subject_card.dart';

class ScheduleMobileScreen extends StatelessWidget {
  const ScheduleMobileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InstanceBuilder<ScheduleViewModel>(
      builder: (viewModel) {
        return ThemeWidget(
          builder: (context, theme) {
            return LiveDataBuilder<List<CustomWeeklySchedule>>(
              data: viewModel.params.customWeeklySchedule,
              builder: (context, customWeeklySchedule) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24.0),
                  child: BaseScrollView(
                    child: AnimatedColumn(
                      children: [
                        const SizedBox(height: 23),
                        screenTitle("schedule".tr()),
                        const SizedBox(height: 14),
                        SizedBox(
                          height: 40,
                          child: ListView.separated(
                            itemCount: customWeeklySchedule.length,
                            shrinkWrap: true,
                            separatorBuilder: (context, index) =>
                                const SizedBox(width: 8),
                            itemBuilder: (context, index) => AnimatedGesture(
                              callback: () {
                                viewModel.changeIndex(index);
                              },
                              child: WeeklyScheduleDayCard(
                                  //TODO Capitalize
                                  dayOfTheWeek:
                                      customWeeklySchedule[index].day.tr(),
                                  isSelected:
                                      customWeeklySchedule[index].isSelected!),
                            ),
                            scrollDirection: Axis.horizontal,
                          ),
                        ),
                        const SizedBox(height: 24),
                        if (customWeeklySchedule.isNotEmpty)
                          LiveDataBuilder<int>(
                            data: viewModel.params.selectedIndex,
                            builder: (context, selectedIndex) {
                              return SizedBox(
                                height: 97.0 *
                                    customWeeklySchedule[selectedIndex]
                                        .subjects
                                        .length,
                                child: ListView.separated(
                                    shrinkWrap: true,
                                    physics:
                                        const NeverScrollableScrollPhysics(),
                                    itemBuilder: (context, index) {
                                      return WeeklyScheduleSubjectCard(
                                          subject: customWeeklySchedule[
                                                  selectedIndex]
                                              .subjects[index]);
                                    },
                                    separatorBuilder: (context, index) {
                                      return const SizedBox(height: 12);
                                    },
                                    itemCount:
                                        customWeeklySchedule[selectedIndex]
                                            .subjects
                                            .length),
                              );
                            },
                          ),
                        // if (customWeeklySchedule == null ||
                        //     customWeeklySchedule.isEmpty)
                        //   SizedBox(
                        //       height: screenSize(context).height,
                        //       child: const Center(child: Loader())),
                      ],
                    ),
                  ),
                );
              },
            );
          },
        );
      },
    );
  }
}
