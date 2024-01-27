import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutterx_live_data/flutterx_live_data.dart';
import 'package:nadrus_teacher_app/ui/core/layouts/theme_widget.dart';
import 'package:nadrus_teacher_app/ui/shared/selectable_lists/selectable_feedback_content_tags.dart';
import "package:nadrus_teacher_app/ui/widgets/instance/instance_builder.dart";
import 'package:nadrus_teacher_app/ui/widgets/text_fields/livedata_text_field.dart';

import '../../../core/layouts/base_scroll_view.dart';
import '../../../shared/screen_top_bar.dart';
import '../../../shared/students_widgets/selectable_students_grid.dart';
import '../../../widgets/animations/animated_column.dart';
import '../../../widgets/buttons/customized_button.dart';
import '../../main/widgets/customized_appbar.dart';
import "../viewmodels/send_feedback_viewmodel.dart";

class SendFeedbackMobileScreen extends StatelessWidget {
  const SendFeedbackMobileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InstanceBuilder<SendFeedbackViewModel>(
      builder: (viewModel) {
        return ThemeWidget(
          builder: (context, theme) {
            return BaseScrollView(
              child: Column(
                children: [
                  customizedAppBar(),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(24, 24, 24, 35),
                    child: AnimatedColumn(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        ///Screen title
                        ScreenTopBar(title: "send_feedback".tr()),

                        LiveDataBuilder<String>(
                          data: viewModel.params.sentFeedback,
                          builder: (context, sentFeedback) {
                            return LiveDataTextField(
                                hint: "send_to_parents_hint".tr(),
                                minLines: 3,
                                maxLines: 3,
                                liveData: viewModel.params.feedbackContent,
                                onTextChanged: viewModel.attrChanged);
                          },
                        ),
                        const SizedBox(height: 8),

                        ///Selectable feedback
                        SelectableFeedbackContentTags(
                            sentFeedback: viewModel.params.sentFeedback,
                            feedbackContent:
                                viewModel.params.feedbackContentList),
                        const SizedBox(height: 28),

                        ///Selectable students grid
                        SelectableStudentsGrid(
                            students: viewModel.params.students),
                        const SizedBox(height: 40),

                        /// Send button
                        LiveDataBuilder<bool>(
                          data: viewModel.params.submit,
                          builder: (context, enabled) {
                            return SizedBox(
                              width: double.infinity,
                              child: CustomizedButton(
                                enabled: enabled,
                                callback: viewModel.sendForAllStudents,
                                child: Text("send_to_parents".tr()),
                              ),
                            );
                          },
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 24),
                ],
              ),
            );
          },
        );
      },
    );
  }
}
