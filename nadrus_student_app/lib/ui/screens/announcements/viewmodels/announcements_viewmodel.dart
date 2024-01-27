import 'package:lazy_evaluation/lazy_evaluation.dart';
import 'package:nadrus_student_app/models/data/announcement/announcement.dart';
import 'package:nadrus_student_app/repositories/announcements_repository.dart';
import 'package:nadrus_student_app/viewmodels/base_viewmodel.dart';

import '../../../../controllers/auth_controller.dart';
import '../../../../models/responses/base_response/base_response.dart';
import "announcements_params.dart";

class AnnouncementsViewModel extends BaseViewModel {
  final _params = Lazy(() => AnnouncementsParams());
  AnnouncementsParams get params => _params.value;

  final _announcementsRepository = Lazy(() => AnnouncementsRepository());
  AnnouncementsRepository get announcementsRepository =>
      _announcementsRepository.value;

  @override
  void onInit() {
    super.onInit();
    getAnnouncements();
  }

  @override
  void onDispose() {
    // called immediately before the widget is disposed
    super.onDispose();
  }

  getAnnouncements() async {
    String sectionId = "";
    baseParams.loading.postValue(true);

    await AuthenticationController.getUser().then((value) {
      if (value.user != null) {
        sectionId = value.user!.sectionId!.toString();
      }
    });

    baseParams.loading.postValue(true);

    BaseResponse<List<Announcement>> response = await announcementsRepository
        .getAnnouncements(sectionId: sectionId, expired: false);

    if (response.data != null) {
      params.allAnnouncements.postValue(response.data!);
    }

    baseParams.loading.postValue(false);
  }
}
