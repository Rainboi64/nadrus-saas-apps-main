import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutterx_live_data/flutterx_live_data.dart';
import 'package:nadrus_teacher_app/models/data/school/school.dart';
import 'package:nadrus_teacher_app/ui/core/layouts/base_scroll_view.dart';
import 'package:nadrus_teacher_app/ui/core/layouts/theme_widget.dart';
import 'package:nadrus_teacher_app/ui/screens/all_schools_and_sections/widgets/school_card.dart';
import 'package:nadrus_teacher_app/ui/widgets/animations/animated_column.dart';
import "package:nadrus_teacher_app/ui/widgets/instance/instance_builder.dart";

import "../viewmodels/all_schools_and_sections_viewmodel.dart";

class AllSchoolsAndSectionsMobileScreen extends StatelessWidget {
  const AllSchoolsAndSectionsMobileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InstanceBuilder<AllSchoolsAndSectionsViewModel>(
      builder: (viewModel) {
        return ThemeWidget(
          builder: (context, theme) {
            return BaseScrollView(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: AnimatedColumn(
                  children: [
                    const SizedBox(height: 24),
                    Text(
                      "all_schools_and_sections".tr(),
                      style: const TextStyle(
                        fontSize: 36,
                      ),
                    ),
                    const SizedBox(height: 45),
                    SizedBox(
                      height: 400, //todo
                      child: LiveDataBuilder<List<School>>(
                        data: viewModel.params.teachersSchools,
                        builder: (context, value) {
                          return ListView.builder(
                            itemCount: value.length,
                            itemBuilder: (context, index) {
                              return SchoolCard(school: value[index]);
                            },
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        );
      },
    );
  }
}
