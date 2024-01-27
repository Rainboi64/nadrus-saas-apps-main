import 'dart:typed_data';

import 'package:flutterx_live_data/flutterx_live_data.dart';
import 'package:nadrus_student_app/models/data/whiteboard/whiteboard.dart';

class WhiteboardImageViewerParams {
  MutableLiveData<Whiteboard?> whiteboard = MutableLiveData(value: null);

  MutableLiveData<String> imageUrl = MutableLiveData(value: "");

  MutableLiveData<Uint8List?> image = MutableLiveData(value: null);
}
