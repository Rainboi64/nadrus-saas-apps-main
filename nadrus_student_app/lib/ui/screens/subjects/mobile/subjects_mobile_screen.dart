import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutterx_live_data/flutterx_live_data.dart';
import 'package:nadrus_student_app/models/data/subject/subject.dart';
import 'package:nadrus_student_app/ui/core/layouts/theme_widget.dart';
import 'package:nadrus_student_app/ui/resources/colors/colors.dart';
import 'package:nadrus_student_app/ui/screens/subjects/widgets/subject_card.dart';
import 'package:nadrus_student_app/ui/shared/screen_title.dart';
import "package:nadrus_student_app/ui/widgets/instance/instance_builder.dart";

import "../viewmodels/subjects_viewmodel.dart";

class SubjectsMobileScreen extends StatelessWidget {
  const SubjectsMobileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InstanceBuilder<SubjectsViewModel>(
      builder: (viewModel) {
        return ThemeWidget(
          builder: (context, theme) {
            return SizedBox(
              //height: screenSize(context).height - 185, //183
              child: CustomScrollView(
                slivers: [
                  SliverAppBar(
                    backgroundColor: DesignColors.white,
                    title: screenTitle("all_subjects".tr()),
                    pinned: false,
                  ),
                  LiveDataBuilder<List<Subject>>(
                      data: viewModel.params.allSubjects,
                      builder: (context, subjects) {
                        return SliverPadding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 24, vertical: 8),
                          sliver: SliverGrid(
                            gridDelegate:
                                const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2,
                              crossAxisSpacing: 12, //horizontal
                              mainAxisSpacing: 12, //vertical
                            ),
                            delegate: SliverChildBuilderDelegate(
                              (BuildContext context, int index) {
                                return SubjectCard(subject: subjects[index]);
                              },
                              childCount: subjects.length,
                            ),
                          ),
                        );
                      }),
                ],
              ),
            );
          },
        );
      },
    );
  }
}
