import 'package:lazy_evaluation/lazy_evaluation.dart';
import 'package:nadrus_teacher_app/models/data/school/school.dart';
import 'package:nadrus_teacher_app/repositories/schools_repository.dart';
import 'package:nadrus_teacher_app/viewmodels/base_viewmodel.dart';

import '../../../../models/responses/base_response/base_response.dart';
import "all_schools_and_sections_params.dart";

class AllSchoolsAndSectionsViewModel extends BaseViewModel {
  final _params = Lazy(() => AllSchoolsAndSectionsParams());
  AllSchoolsAndSectionsParams get params => _params.value;

  final _schoolsRepository = Lazy(() => SchoolsRepository());
  SchoolsRepository get schoolsRepository => _schoolsRepository.value;

  @override
  void onInit() {
    super.onInit();
    getTeachersSchools();
  }

  @override
  void onDispose() {
    // called immediately before the widget is disposed
    super.onDispose();
  }

  getTeachersSchools() async {
    baseParams.loading.postValue(true);

    BaseResponse<List<School>> response = await schoolsRepository.getSchools();

    if (response.data != null) {
      if (response.data!.isNotEmpty) {
        params.teachersSchools.postValue(response.data!);
      }
    }
    baseParams.loading.postValue(false);
  }
}
