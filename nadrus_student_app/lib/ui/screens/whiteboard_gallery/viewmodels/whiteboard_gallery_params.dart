import 'package:flutterx_live_data/flutterx_live_data.dart';

import '../../../../models/data/whiteboard/whiteboard.dart';

class WhiteboardGalleryParams {
  MutableLiveData<bool> specificLesson = MutableLiveData(value: false);

  //Today's Whiteboard
  MutableLiveData<List<Whiteboard>> whiteboards = MutableLiveData(value: []);
}
