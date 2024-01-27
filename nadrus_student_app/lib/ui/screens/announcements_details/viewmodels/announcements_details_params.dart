import 'package:flutterx_live_data/flutterx_live_data.dart';

import '../../../../models/data/announcement/announcement.dart';

class AnnouncementsDetailsParams {
  MutableLiveData<Announcement?> announcement = MutableLiveData(value: null);
}
