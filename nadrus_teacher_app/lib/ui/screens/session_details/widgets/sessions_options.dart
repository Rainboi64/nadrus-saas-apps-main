import 'package:flutter/material.dart';
import 'package:flutterx_live_data/flutterx_live_data.dart';
import 'package:nadrus_teacher_app/models/data/class_details/class_details.dart';
import 'package:nadrus_teacher_app/ui/screens/session_details/widgets/session_options_outlined_button.dart';
import 'package:nadrus_teacher_app/ui/screens/session_details/widgets/upload_image_bottom_sheet_dialog.dart';

import '../../../../router/app_router.dart';
import '../../../widgets/base_bottom_sheet_dialog.dart';
import '../viewmodels/session_details_viewmodel.dart';

class SessionOptions extends StatelessWidget {
  final bool isPrevClass;
  final SessionDetailsViewModel viewModel;
  final ClassDetails classDetails;
  const SessionOptions(
      {required this.isPrevClass,
      required this.viewModel,
      required this.classDetails,
      super.key});

  @override
  Widget build(BuildContext context) {
    String sectionId =
        viewModel.params.session.value?.section?.id?.toString() ?? "";

    return isPrevClass
        ? Column(
            children: [
              Row(
                children: [
                  SessionOptionsOutlinedButton(
                    text: "check_homework",
                    callback: () {
                      appRouter.push(
                        CheckHomeworks(
                          homeworkId:
                              "1", //viewModel.params.classDetails.value?.previousClass?.homeworks[0].name ??""
                          sectionId: sectionId,
                          previousClassHomework: '',
                        ),
                      );
                    },
                  ),
                  const SizedBox(width: 9),
                  SessionOptionsOutlinedButton(
                    text: "oral_test",
                    callback: () {
                      appRouter.push(
                        OralTest(
                          homeworkId:
                              "1", //viewModel.params.classDetails.value?.previousClass?.homeworks[0].name ??""
                          sectionId: sectionId,
                          previousClassHomework: '',
                        ),
                      );
                    },
                  ),
                  const SizedBox(width: 9),
                  SessionOptionsOutlinedButton(
                    text: "start_quiz",
                    callback: () {
                      appRouter.push(CreateExam(
                          sectionId: sectionId,
                          suggestedLessons:
                              classDetails.nextLessonSuggestions));
                    },
                  )
                ],
              ),
              const SizedBox(height: 10),
              Row(
                children: [
                  SessionOptionsOutlinedButton(
                    text: "send_feedback",
                    callback: () {
                      appRouter.push(SendFeedback(
                        sectionId: sectionId,
                      ));
                    },
                  ),
                  const SizedBox(width: 9),
                  SessionOptionsOutlinedButton(
                    text: "upload_whiteboard_image",
                    callback: () {
                      BaseBottomSheetDialog.showDialog(
                        context: context,
                        child: LiveDataBuilder<String?>(
                          data: viewModel.params.imagePath,
                          builder: (context, imagePath) {
                            return UploadImageBottomSheetDialog(
                              imagePath: imagePath,
                              imageUploadedSuccessfully:
                                  viewModel.params.imageUploadedSuccessfully,
                              takeAPhoto: viewModel.takeAPhoto,
                              openGallery: viewModel.openGallery,
                              removeImage: viewModel.removeImage,
                              uploadImage: viewModel.uploadWhiteBoardImage,
                            );
                          },
                        ),
                      );
                    },
                  ),
                ],
              ),
            ],
          )
        : Row(
            children: [
              SessionOptionsOutlinedButton(
                text: "start_quiz",
                callback: () {
                  appRouter.push(CreateExam(
                      sectionId: sectionId,
                      suggestedLessons: classDetails.nextLessonSuggestions));
                },
              ),
              const SizedBox(width: 9),
              SessionOptionsOutlinedButton(
                text: "send_feedback",
                callback: () {
                  appRouter.push(
                    SendFeedback(
                      sectionId: sectionId,
                    ),
                  );
                },
              ),
              const SizedBox(width: 9),
              SessionOptionsOutlinedButton(
                text: "upload_whiteboard_image",
                callback: () {
                  BaseBottomSheetDialog.showDialog(
                    context: context,
                    child: LiveDataBuilder<String?>(
                      data: viewModel.params.imagePath,
                      builder: (context, imagePath) {
                        return UploadImageBottomSheetDialog(
                          imagePath: imagePath,
                          imageUploadedSuccessfully:
                              viewModel.params.imageUploadedSuccessfully,
                          takeAPhoto: viewModel.takeAPhoto,
                          openGallery: viewModel.openGallery,
                          removeImage: viewModel.removeImage,
                          uploadImage: viewModel.uploadWhiteBoardImage,
                        );
                      },
                    ),
                  );
                },
              ),
            ],
          );
  }
}
