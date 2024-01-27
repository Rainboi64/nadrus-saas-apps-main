import 'package:flutterx_live_data/flutterx_live_data.dart';

import '../../../../models/data/school/school.dart';

class SchoolDetailsParams {
  MutableLiveData<School?> school = MutableLiveData(value: null);
}
