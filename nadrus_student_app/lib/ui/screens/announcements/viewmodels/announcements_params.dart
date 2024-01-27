import 'package:flutterx_live_data/flutterx_live_data.dart';
import 'package:nadrus_student_app/models/data/announcement/announcement.dart';

class AnnouncementsParams {
  MutableLiveData<List<Announcement>> allAnnouncements =
      MutableLiveData(value: []);
}
