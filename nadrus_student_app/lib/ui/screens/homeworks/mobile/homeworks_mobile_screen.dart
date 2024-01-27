import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutterx_live_data/flutterx_live_data.dart';
import 'package:nadrus_student_app/models/data/homework/homework.dart';
import 'package:nadrus_student_app/ui/core/layouts/theme_widget.dart';
import 'package:nadrus_student_app/ui/resources/colors/colors.dart';
import 'package:nadrus_student_app/ui/screens/homeworks/widgets/date_filter.dart';
import 'package:nadrus_student_app/ui/screens/homeworks/widgets/homework_card.dart';
import 'package:nadrus_student_app/ui/shared/screen_title.dart';
import 'package:nadrus_student_app/ui/widgets/animations/animated_column.dart';
import "package:nadrus_student_app/ui/widgets/instance/instance_builder.dart";
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import "../viewmodels/homeworks_viewmodel.dart";
import '../widgets/empty_homeworks.dart';

class HomeworksMobileScreen extends StatelessWidget {
  HomeworksMobileScreen({Key? key}) : super(key: key);
  final controller = PageController(viewportFraction: 0.8, keepPage: false);

  @override
  Widget build(BuildContext context) {
    return InstanceBuilder<HomeworksViewModel>(
      builder: (viewModel) {
        return ThemeWidget(
          builder: (context, theme) {
            return AnimatedColumn(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    const SizedBox(height: 23),

                    /// Title ///
                    screenTitle('all_homeworks'.tr()),
                    const SizedBox(height: 14),

                    /// Date Filter ///
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        LiveDataBuilder<DateTime>(
                          data: viewModel.params.date,
                          builder: (context, date) {
                            return DateFilter(
                              date: date,
                              callback: (value) async {
                                await viewModel.getAllHomeworks(date: value);
                              },
                            );
                          },
                        ),
                      ],
                    ),
                  ],
                ),

                /// Homework cards in Page View ///
                LiveDataBuilder<DateTime>(
                  data: viewModel.params.date,
                  builder: (context, date) {
                    return LiveDataBuilder<List<Homework>>(
                      data: viewModel.params.allHomeworks,
                      builder: (context, homeworks) {
                        return SizedBox(
                          height: 320,
                          child: homeworks.isEmpty
                              ? EmptyHomeworks(date: date)
                              : PageView.builder(
                                  controller: controller,
                                  itemCount: homeworks.length,
                                  itemBuilder: (_, index) {
                                    return HomeworkCard(
                                        key: UniqueKey(),
                                        solve: () {
                                          viewModel.solveHomework(
                                              homeworks[index].id.toString(),
                                              true);
                                        },
                                        unSolve: () {
                                          viewModel.solveHomework(
                                              homeworks[index].id.toString(),
                                              false);
                                        },
                                        homework: homeworks[index]);
                                  },
                                ),
                        );
                      },
                    );
                  },
                ),
                const SizedBox(height: 45),

                /// Page View Indicator ///
                LiveDataBuilder<List<Homework>>(
                  data: viewModel.params.allHomeworks,
                  builder: (context, homeworks) {
                    if (homeworks.isNotEmpty) {
                      return SmoothPageIndicator(
                        controller: controller,
                        count: homeworks.length,
                        effect: const ExpandingDotsEffect(
                            spacing: 8.0,
                            radius: 10.0,
                            dotWidth: 24.0,
                            dotHeight: 10.0,
                            paintStyle: PaintingStyle.fill,
                            dotColor: Color(0XFFD6D5DC),
                            activeDotColor: DesignColors.primaryColor),
                      );
                    }
                    return const SizedBox.shrink();
                  },
                ),
              ],
            );
          },
        );
      },
    );
  }
}
