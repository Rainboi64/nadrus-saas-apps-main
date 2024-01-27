import 'dart:io';
import 'dart:typed_data';

import 'package:easy_localization/easy_localization.dart';
import 'package:http/http.dart' as http;
import 'package:image_gallery_saver/image_gallery_saver.dart';
import 'package:lazy_evaluation/lazy_evaluation.dart';
import 'package:nadrus_student_app/viewmodels/base_viewmodel.dart';

import '../../../../controllers/auth_controller.dart';
import '../../../../controllers/tenant_controller.dart';
import '../../../../models/ui_models/ui_message.dart';
import '../../../../utils/path_util.dart';
import "whiteboard_image_viewer_params.dart";

class WhiteboardImageViewerViewModel extends BaseViewModel {
  final _params = Lazy(() => WhiteboardImageViewerParams());
  WhiteboardImageViewerParams get params => _params.value;

  @override
  void onInit() {
    super.onInit();
    fetchImage();
  }

  @override
  void onDispose() {
    // called immediately before the widget is disposed
    super.onDispose();
  }

  downloadImage() async {
    ///example: https://alawael.dev.nadrus.app/files/whiteboard/4/1689941445.png
    File? file;

    baseParams.loading.postValue(true);
    Uint8List imageInUnit8List = params.image.value!;
    final downloadPath = await getDownloadPath();
    try {
      file = File("$downloadPath/${DateTime.now().millisecondsSinceEpoch}.png");
      await file.create();
      file.writeAsBytesSync(imageInUnit8List);

      final result = await ImageGallerySaver.saveFile(file.path);

      if (result['isSuccess']) {
        // Show a success message or perform any other actions
        baseParams.uiMessage
            .postValue(UiMessage(message: "image_saved_successfully".tr()));
      } else {
        // Handle the case when the image couldn't be saved
        baseParams.uiMessage
            .postValue(UiMessage(message: "failed_to_save_image".tr()));
      }
    } catch (e) {
      // Handle any exceptions that occur during the saving process
      baseParams.uiMessage.postValue(UiMessage(
          message: "error_saving_image".tr(namedArgs: {"model": "$e"})));
    }
    baseParams.loading.postValue(false);
  }

  Future fetchImage() async {
    baseParams.loading.postValue(true);

    final url = "${TenantController.baseUrl()}/files/${params.imageUrl.value}";

    final response = await http.get(
      Uri.parse(url),
      headers: {
        'Authorization': 'Bearer ${await AuthenticationController.token()}'
      },
    );
    params.image.postValue(response.bodyBytes);
    baseParams.loading.postValue(false);
  }
}
