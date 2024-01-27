import 'package:image_picker/image_picker.dart';
import 'package:lazy_evaluation/lazy_evaluation.dart';
import 'package:nadrus_teacher_app/viewmodels/base_viewmodel.dart';
import 'package:permission_handler/permission_handler.dart';

import '../../../../models/data/class_details/class_details.dart';
import '../../../../models/responses/base_response/base_response.dart';
import '../../../../repositories/classes_repository.dart';
import "session_details_params.dart";

class SessionDetailsViewModel extends BaseViewModel {
  final _params = Lazy(() => SessionDetailsParams());
  SessionDetailsParams get params => _params.value;
  final _classesRepository = Lazy(() => ClassesRepository());
  ClassesRepository get classesRepository => _classesRepository.value;

  @override
  void onInit() {
    super.onInit();
    getClassDetails();
  }

  @override
  void onDispose() {
    // called immediately before the widget is disposed
    super.onDispose();
  }

  getClassDetails() async {
    baseParams.loading.postValue(true);

    BaseResponse<ClassDetails> response =
        await classesRepository.getClassDetails(
            grade: params.session.value?.section?.grade?.id.toString() ?? "",
            section: params.session.value?.section?.id.toString() ?? "",
            weeklyScheduleId: params.session.value?.id.toString() ?? "");

    if (response.data != null) {
      params.classDetails.postValue(response.data!);
      if (response.data!.currentClass != null) {
        params.editCurrentLesson.postValue(true);
        params.editCompletionRate.postValue(true);
        params.editNextLessonHomeworks.postValue(true);
      }
      if (response.data!.previousClass != null) {
        params.prevClass.postValue(response.data!.previousClass);
      }
      if (response.data!.homeworksSuggestions != null) {
        params.selectedHomeworks.postValue(response.data!.homeworksSuggestions);
      }
    }
    baseParams.loading.postValue(false);
  }

  createSessionId() async {
    baseParams.loading.postValue(true);

    BaseResponse<dynamic> response = await classesRepository.createClass(
        grade: params.session.value?.section?.grade?.id.toString() ?? "",
        section: params.session.value?.section?.id.toString() ?? "",
        lessonId: "4",
        completionRate: params.selectedCompletionRate.value.toString());

    if (response.data != null) {
      params.classDetails.postValue(response.data!);
    }
    baseParams.loading.postValue(false);
  }

  editSessionDetails() async {
    baseParams.loading.postValue(true);

    BaseResponse<dynamic> response = await classesRepository.createClass(
        grade: params.session.value?.section?.grade?.id.toString() ?? "",
        section: params.session.value?.section?.id.toString() ?? "",
        lessonId: params.selectedLesson.value?.id?.toString() ?? "",
        completionRate: params.selectedCompletionRate.value.toString());

    if (response.data != null) {
      //params.classDetails.postValue(response.data!);
    }
    baseParams.loading.postValue(false);
  }

  uploadWhiteBoardImage() async {
    baseParams.loading.postValue(true);

    BaseResponse<dynamic> response = await classesRepository.uploadWhiteboard(
      grade: params.session.value?.section?.grade?.id.toString() ?? "",
      section: params.session.value?.section?.id.toString() ?? "",
      classId:
          params.classDetails.value?.currentClass?.id.toString() ?? "1", //todo
      path: params.imagePath.value!,
    );

    if (response.data != null) {
      if (response.data["image_path"] != null) {
        params.imageUploadedSuccessfully.postValue(true);
      }
    }
    baseParams.loading.postValue(false);
  }

  final ImagePicker _picker = ImagePicker();

  takeAPhoto() async {
    /// Ask for permission
    if (await Permission.camera.request().isGranted) {
      // Either the permission was already granted before or the user just granted it.
      final XFile? image = await _picker.pickImage(source: ImageSource.camera);

      if (image != null) {
        params.imagePath.postValue(image.path);
      }
    } else {
      //todo pop up to open settings
    }
    return;
  }

  openGallery() async {
    /// Ask for permission
    if (await Permission.photos.request().isGranted) {
      final XFile? image = await _picker.pickImage(source: ImageSource.gallery);

      if (image != null) {
        params.imagePath.postValue(image.path);
      }
    } else {
      //todo pop up to open settings
    }
    return;
  }

  removeImage() {
    params.imagePath.postValue(null);
  }
}
