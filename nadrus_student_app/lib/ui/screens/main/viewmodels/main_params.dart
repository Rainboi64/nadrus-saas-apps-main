import 'package:flutterx_live_data/flutterx_live_data.dart';
import 'package:nadrus_student_app/models/data/user/user.dart';

class MainParams {
  MutableLiveData<User?> user = MutableLiveData(value: null);
  MutableLiveData<int> currentIndex = MutableLiveData(value: 0);

  ///MutableLiveData<String> userFirstName = MutableLiveData(value: "");
}
