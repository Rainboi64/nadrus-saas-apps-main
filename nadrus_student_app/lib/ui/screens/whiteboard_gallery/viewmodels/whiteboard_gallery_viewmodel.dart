import 'package:lazy_evaluation/lazy_evaluation.dart';
import 'package:nadrus_student_app/viewmodels/base_viewmodel.dart';

import '../../../../models/data/whiteboard/whiteboard.dart';
import '../../../../models/responses/base_response/base_response.dart';
import '../../../../repositories/summaries_repository.dart';
import "whiteboard_gallery_params.dart";

class WhiteboardGalleryViewModel extends BaseViewModel {
  final _params = Lazy(() => WhiteboardGalleryParams());
  WhiteboardGalleryParams get params => _params.value;
  final _summariesRepository = Lazy(() => SummariesRepository());
  SummariesRepository get summariesRepository => _summariesRepository.value;

  @override
  void onInit() {
    super.onInit();
    if (params.specificLesson.value == false) {
      getWhiteboards();
    }
  }

  @override
  void onDispose() {
    // called immediately before the widget is disposed
    super.onDispose();
  }

  getWhiteboards() async {
    baseParams.loading.postValue(true);

    BaseResponse<List<Whiteboard>> response =
        await summariesRepository.getWhiteboards();

    if (response.data != null) {
      if (response.data!.isNotEmpty) {
        params.whiteboards.postValue(response.data!);
      }
    }
    baseParams.loading.postValue(false);
  }
}
