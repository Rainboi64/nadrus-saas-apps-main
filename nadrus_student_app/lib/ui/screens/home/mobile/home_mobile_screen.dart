import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:flutterx_live_data/flutterx_live_data.dart';
import 'package:nadrus_student_app/models/data/weekly_schedule/weekly_schedule_day_item/weekly_schedule_day_item.dart';
import 'package:nadrus_student_app/models/data/whiteboard/whiteboard.dart';
import 'package:nadrus_student_app/router/app_router.dart';
import 'package:nadrus_student_app/ui/core/layouts/base_scroll_view.dart';
import 'package:nadrus_student_app/ui/core/layouts/theme_widget.dart';
import 'package:nadrus_student_app/ui/screens/home/widgets/home_screen_card.dart';
import 'package:nadrus_student_app/ui/shared/screen_title.dart';
import 'package:nadrus_student_app/ui/widgets/animations/animated_column.dart';
import 'package:nadrus_student_app/ui/widgets/animations/animated_gesture.dart';
import "package:nadrus_student_app/ui/widgets/instance/instance_builder.dart";

import '../../../../models/data/homework/homework.dart';
import "../viewmodels/home_viewmodel.dart";
import '../widgets/home_homework_card.dart';
import '../widgets/home_subject_card.dart';
import '../widgets/home_whiteboard_image.dart';

class HomeMobileScreen extends StatelessWidget {
  HomeMobileScreen({Key? key}) : super(key: key);

  List<String> images = [];
  @override
  Widget build(BuildContext context) {
    return InstanceBuilder<HomeViewModel>(
      builder: (viewModel) {
        return ThemeWidget(
          builder: (context, theme) {
            return BaseScrollView(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: LiveDataBuilder<List<WeeklyScheduleDayItem>>(
                  data: viewModel.params.tomorrowsSubjects,
                  builder: (context, tomorrowsSubjects) {
                    return AnimatedColumn(
                      children: [
                        const SizedBox(height: 20),

                        /// Home Announcement Card
                        HomeScreenCard(
                          callback: () {
                            appRouter.push(const Announcements());
                          },
                        ),
                        const SizedBox(height: 25),

                        /// Tomorrow's Subjects ///
                        tomorrowsSubjects.isEmpty
                            ? const SizedBox.shrink()
                            : Padding(
                                padding: const EdgeInsets.only(bottom: 13.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    screenTitle("tomorrow's_subjects".tr(),
                                        fontSize: 16)
                                  ],
                                ),
                              ),

                        /// Tomorrow's Subjects Horizontal List ///
                        tomorrowsSubjects.isEmpty
                            ? const SizedBox.shrink()
                            : Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Expanded(
                                    child: Padding(
                                      padding:
                                          const EdgeInsets.only(bottom: 26.0),
                                      child: SizedBox(
                                        height: 110, //144
                                        child: ListView.builder(
                                            shrinkWrap: true,
                                            scrollDirection: Axis.horizontal,
                                            itemBuilder: (context, index) =>
                                                HomeSubjectCard(
                                                    subject: viewModel
                                                        .params
                                                        .tomorrowsSubjects
                                                        .value[index]),
                                            itemCount: viewModel
                                                .params
                                                .tomorrowsSubjects
                                                .value
                                                .length),
                                      ),
                                    ),
                                  ),
                                ],
                              ),

                        /// Today's Homeworks ///
                        LiveDataBuilder<List<Homework>>(
                          data: viewModel.params.todaysHomeworks,
                          builder: (context, todaysHomeworks) {
                            if (todaysHomeworks.isNotEmpty) {
                              return Padding(
                                padding: const EdgeInsets.only(bottom: 13.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    screenTitle("today's_homeworks".tr(),
                                        fontSize: 16)
                                  ],
                                ),
                              );
                            }
                            return const SizedBox.shrink();
                          },
                        ),

                        /// Today's Homeworks Staggered Grid///
                        LiveDataBuilder<List<Homework>>(
                          data: viewModel.params.todaysHomeworks,
                          builder: (context, todaysHomeworks) {
                            if (todaysHomeworks.isNotEmpty) {
                              return Padding(
                                padding: const EdgeInsets.only(bottom: 26.0),
                                child: SizedBox(
                                  height: (todaysHomeworks.length / 2).ceil() *
                                      194.0,
                                  child: GridView.custom(
                                    physics:
                                        const NeverScrollableScrollPhysics(),
                                    shrinkWrap: true,
                                    gridDelegate: SliverWovenGridDelegate.count(
                                      crossAxisCount: 2,
                                      mainAxisSpacing: 6,
                                      crossAxisSpacing: 12,
                                      pattern: [
                                        const WovenGridTile(1),
                                        const WovenGridTile(8 / 10,
                                            crossAxisRatio: 0.9,
                                            alignment:
                                                AlignmentDirectional.centerEnd),
                                      ],
                                    ),
                                    childrenDelegate:
                                        SliverChildBuilderDelegate(
                                      childCount: todaysHomeworks.length,
                                      (context, index) => HomeHomeworkCard(
                                          homework: todaysHomeworks[index]),
                                    ),
                                  ),
                                ),
                              );
                            }
                            return const SizedBox.shrink();
                          },
                        ),

                        /// Today's Whiteboard Pictures ///
                        LiveDataBuilder<List<Whiteboard>>(
                          data: viewModel.params.whiteBoards,
                          builder: (context, whiteboards) {
                            if (whiteboards.isNotEmpty) {
                              return Padding(
                                padding: const EdgeInsets.only(bottom: 13.0),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    screenTitle(
                                        "today's_whiteboard_pictures".tr(),
                                        fontSize: 16),
                                    AnimatedGesture(
                                      callback: () {
                                        appRouter.push(WhiteboardGallery());
                                      },
                                      child: screenTitle("show_all".tr(),
                                          fontSize: 12),
                                    )
                                  ],
                                ),
                              );
                            }
                            return const SizedBox.shrink();
                          },
                        ),

                        /// Today's Whiteboard Pictures List ///
                        LiveDataBuilder<List<Whiteboard>>(
                          data: viewModel.params.whiteBoards,
                          builder: (context, whiteboards) {
                            if (whiteboards.isNotEmpty) {
                              return Row(
                                children: [
                                  if (whiteboards.isNotEmpty)
                                    HomeWhiteboardImage(
                                        whiteboard: whiteboards[0]),
                                  const SizedBox(width: 12),
                                  if (whiteboards.length > 1)
                                    HomeWhiteboardImage(
                                        whiteboard: whiteboards[1]),
                                ],
                              );
                            }
                            return const SizedBox.shrink();
                          },
                        ),
                        const SizedBox(height: 13),
                      ],
                    );
                  },
                ),
              ),
            );
          },
        );
      },
    );
  }
}
