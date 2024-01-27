import 'package:flutterx_live_data/flutterx_live_data.dart';

import '../../../../models/data/session/session.dart';

class HomeParams {
  //Teacher name
  MutableLiveData<String> name = MutableLiveData(value: "");

  //Today's Classes
  MutableLiveData<List<Session>> todaysSessions = MutableLiveData(value: []);
}
