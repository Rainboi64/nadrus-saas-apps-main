import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutterx_live_data/flutterx_live_data.dart';
import 'package:nadrus_teacher_app/extensions/assets_extension.dart';
import 'package:nadrus_teacher_app/ui/core/layouts/theme_widget.dart';
import 'package:nadrus_teacher_app/ui/resources/colors/colors.dart';
import 'package:nadrus_teacher_app/ui/screens/home/widgets/classes_card.dart';
import 'package:nadrus_teacher_app/ui/screens/session_details/widgets/picked_option.dart';
import 'package:nadrus_teacher_app/ui/screens/session_details/widgets/sessions_options.dart';
import 'package:nadrus_teacher_app/ui/widgets/buttons/customized_button.dart';
import "package:nadrus_teacher_app/ui/widgets/instance/instance_builder.dart";

import '../../../../models/data/class_details/class_details.dart';
import '../../../../models/data/session/session.dart';
import '../../../core/layouts/base_scroll_view.dart';
import '../../../shared/screen_top_bar.dart';
import '../../../shared/selectable_lists/completion_rate_list.dart';
import '../../../shared/selectable_lists/homeworks_list.dart';
import '../../../shared/selectable_lists/lessons_list.dart';
import '../../../widgets/animations/animated_column.dart';
import '../../main/widgets/customized_appbar.dart';
import "../viewmodels/session_details_viewmodel.dart";

class SessionDetailsMobileScreen extends StatelessWidget {
  const SessionDetailsMobileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InstanceBuilder<SessionDetailsViewModel>(
      builder: (viewModel) {
        return ThemeWidget(
          builder: (context, theme) {
            return BaseScrollView(
              child: Column(
                children: [
                  customizedAppBar(),
                  LiveDataBuilder<ClassDetails?>(
                    data: viewModel.params.classDetails,
                    builder: (context, classDetails) {
                      return classDetails == null
                          ? const SizedBox.shrink()
                          : Padding(
                              padding:
                                  const EdgeInsets.fromLTRB(24, 24, 24, 35),
                              child: AnimatedColumn(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  /// Screen title session grade and class name
                                  ScreenTopBar(
                                      title: viewModel.params.session.value!
                                          .sessionTitle()),

                                  /// Session status
                                  _sessionStatusBadge(
                                      viewModel.params.session.value!),
                                  const SizedBox(height: 25),

                                  /// Last session lesson name
                                  if (viewModel.params.prevClass.value !=
                                          null &&
                                      viewModel.params.prevClass.value!.lesson!
                                          .name!.isNotEmpty)
                                    _title('last_session_lesson'),
                                  if (viewModel.params.prevClass.value !=
                                          null &&
                                      viewModel.params.prevClass.value!.lesson!
                                          .name!.isNotEmpty)
                                    _subtitle(classDetails
                                            .previousClass?.lesson?.name ??
                                        ""),
                                  const SizedBox(height: 36),

                                  /// Suggested List of Lesson to be selected as current lessons
                                  _title('current_lesson'),
                                  LiveDataBuilder<bool>(
                                      data: viewModel.params.editCurrentLesson,
                                      builder: (context, editCurrentLesson) {
                                        return editCurrentLesson
                                            ? PickedOption(
                                                pickedOption: viewModel
                                                    .params
                                                    .classDetails
                                                    .value!
                                                    .currentClass!
                                                    .lesson!
                                                    .name!,
                                                callback: () {
                                                  viewModel
                                                      .params.editCurrentLesson
                                                      .postValue(false);
                                                })
                                            : SelectableLessonList(

                                                ///todo add the selected
                                                lessons: classDetails
                                                    .nextLessonSuggestions,
                                                selectedLesson: viewModel
                                                    .params.selectedLesson);
                                      }),
                                  const SizedBox(height: 44),

                                  /// Selectable List of Completion Rate
                                  _title(
                                      'how_much_of_this_lesson_is_completed'),
                                  LiveDataBuilder<bool>(
                                    data: viewModel.params.editCompletionRate,
                                    builder: (context, editCompletionRate) {
                                      return editCompletionRate
                                          ? PickedOption(
                                              pickedOption: viewModel
                                                  .params
                                                  .classDetails
                                                  .value!
                                                  .currentClass!
                                                  .completionRate!
                                                  .toString()
                                                  .tr(),
                                              callback: () {
                                                viewModel
                                                    .params.editCompletionRate
                                                    .postValue(false);
                                              },
                                            )
                                          : SelectableCompletionRateList(
                                              selectedCompletionRate: viewModel
                                                  .params
                                                  .selectedCompletionRate);
                                    },
                                  ),
                                  const SizedBox(height: 44),

                                  /// Selectable List of Suggested Homeworks
                                  _title('homeworks'),
                                  LiveDataBuilder<bool>(
                                    data: viewModel
                                        .params.editNextLessonHomeworks,
                                    builder:
                                        (context, editNextLessonHomeworks) {
                                      return editNextLessonHomeworks
                                          ? PickedOption(
                                              pickedOption: viewModel
                                                      .params
                                                      .classDetails
                                                      .value!
                                                      .currentClass!
                                                      .homeworks
                                                      .isNotEmpty
                                                  ? viewModel
                                                          .params
                                                          .classDetails
                                                          .value!
                                                          .currentClass!
                                                          .homeworks[0]
                                                          .name ??
                                                      "".toString()
                                                  : "",
                                              callback: () {
                                                viewModel.params
                                                    .editNextLessonHomeworks
                                                    .postValue(false);
                                              },
                                            )
                                          : SelectableHomeworksList(
                                              homeworks: viewModel
                                                  .params.selectedHomeworks);
                                    },
                                  ),
                                  const SizedBox(height: 44),

                                  /// Session options
                                  _title('session'),
                                  SessionOptions(
                                    isPrevClass:
                                        viewModel.params.prevClass.value !=
                                            null,
                                    viewModel: viewModel,
                                    classDetails: classDetails,
                                  ),

                                  const SizedBox(height: 38),

                                  ///
                                  SizedBox(
                                    width: double.infinity,
                                    child: CustomizedButton(
                                        callback: viewModel.createSessionId,
                                        child: Text("save_edits".tr())),
                                  ),
                                ],
                              ),
                            );
                    },
                  ),
                ],
              ),
            );
          },
        );
      },
    );
  }

  getClassStatus(Session session) {
    if (session.done.toString() == "1") {
      return ClassStatus.done;
    }
    if (session.nowActive.toString() == "1") {
      return ClassStatus.now;
    }
    return ClassStatus.pending;
  }

  _sessionStatusBadge(Session session) {
    ClassStatus classStatus = getClassStatus(session);

    if (classStatus == ClassStatus.done) {
      return _statusBadge('session_done');
    }
    if (classStatus == ClassStatus.now) {
      return _statusBadge('session_now');
    }
    if (classStatus == ClassStatus.pending) {
      return _statusBadge(
        'session_pending',
        textColor: DesignColors.textColor,
        aroundTextColor: Colors.transparent,
        aroundSvgColor: const Color(0XFFD6D5DC),
        borderColor: const Color(0XFFD6D5DC),
      );
    }
  }

  _statusBadge(String status,
      {Color textColor = DesignColors.primaryColor,
      Color aroundTextColor = const Color(0XFFECFBFF),
      Color aroundSvgColor = DesignColors.primaryColor,
      Color borderColor = Colors.transparent}) {
    return Container(
      height: 34,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(22)),
      child: Row(
        children: [
          Container(
              height: 34,
              padding: const EdgeInsets.fromLTRB(4, 0, 9, 0),
              decoration: BoxDecoration(
                color: aroundSvgColor,
                borderRadius: const BorderRadius.horizontal(
                  right: Radius.circular(22),
                ),
              ),
              child: Center(
                child: SvgPicture.asset(
                  status.svgAsset,
                  height: 14,
                  width: 14,
                ),
              )),
          Container(
            height: 34,
            padding: const EdgeInsets.fromLTRB(15, 0, 6, 0),
            decoration: BoxDecoration(
                color: aroundTextColor,
                border: Border.all(color: borderColor),
                borderRadius:
                    const BorderRadius.horizontal(left: Radius.circular(22))),
            child: Center(
              child: Text(
                status.tr(),
                style: TextStyle(
                  fontSize: 16,
                  color: textColor,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  _title(String text) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 14),
      child: Text(
        text.tr(),
        style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w300),
      ),
    );
  }

  _subtitle(String text) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 6),
      child: Text(
        text,
        style: const TextStyle(fontSize: 22, fontWeight: FontWeight.normal),
      ),
    );
  }
}
