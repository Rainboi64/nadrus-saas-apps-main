import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:nadrus_teacher_app/ui/core/layouts/base_scroll_view.dart';
import 'package:nadrus_teacher_app/ui/core/layouts/theme_widget.dart';
import "package:nadrus_teacher_app/ui/widgets/instance/instance_builder.dart";

import '../../../../router/app_router.dart';
import '../../../shared/screen_top_bar.dart';
import '../../../widgets/animations/animated_column.dart';
import '../../main/widgets/customized_appbar.dart';
import "../viewmodels/school_details_viewmodel.dart";
import '../widgets/crud_outlined_widget.dart';
import '../widgets/outlined_widget.dart';
import '../widgets/two_outlined_widget.dart';

class SchoolDetailsMobileScreen extends StatelessWidget {
  const SchoolDetailsMobileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InstanceBuilder<SchoolDetailsViewModel>(
      builder: (viewModel) {
        return ThemeWidget(
          builder: (context, theme) {
            return BaseScrollView(
              child: Column(
                children: [
                  customizedAppBar(),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(24, 24, 24, 48),
                    child: AnimatedColumn(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ScreenTopBar(
                            title:
                                viewModel.params.school.value!.grade!.label!),
                        _title('section'),

                        TwoOutlinedWidget(
                          firstBtnCallback: () =>
                              appRouter.push(const CreateSession()),
                          secondBtnCallback: () => appRouter.push(StudentsList(
                              school: viewModel.params.school.value!)),
                          firstBtnTitle: 'create_session',
                          secondBtnTitle: 'students_list',
                        ),
                        const SizedBox(height: 28),

                        ///
                        _title('next_homeworks'),
                        CrudOutlinedWidget(
                          description: '',
                          firstBtnCallback: () {},
                          secondBtnCallback: () {},
                          thirdBtnCallback: () {},
                          addBtnCallback: () {},
                          firstBtnTitle: 'check',
                        ),
                        const SizedBox(height: 28),

                        ///
                        _title('next_quizes'),
                        CrudOutlinedWidget(
                            description: '',
                            firstBtnCallback: () {},
                            secondBtnCallback: () {},
                            thirdBtnCallback: () {},
                            firstBtnTitle: 'check',
                            addBtnCallback: () {}),
                        const SizedBox(height: 28),

                        ///
                        _title('all_sessions'),
                        OutlinedWidget(description: '', callback: () {})
                      ],
                    ),
                  ),
                ],
              ),
            );
          },
        );
      },
    );
  }

  _title(String title) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 6),
      child: Text(
        title.tr(),
        style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w300),
      ),
    );
  }
}
