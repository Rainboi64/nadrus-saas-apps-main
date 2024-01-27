import 'package:flutterx_live_data/flutterx_live_data.dart';

import '../../../../models/data/exam_collection/exam_collection.dart';

class ExamsParams {
  MutableLiveData<List<ExamCollection>> allExamCollection =
      MutableLiveData(value: []);
}
