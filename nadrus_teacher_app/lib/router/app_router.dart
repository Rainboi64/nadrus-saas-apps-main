import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:nadrus_teacher_app/ui/screens/all_schools_and_sections/all_schools_and_sections_screen.dart';
import 'package:nadrus_teacher_app/ui/screens/check_homeworks/check_homeworks_screen.dart';
import 'package:nadrus_teacher_app/ui/screens/create_exam/create_exam_screen.dart';
import 'package:nadrus_teacher_app/ui/screens/create_session/create_session_screen.dart';
import 'package:nadrus_teacher_app/ui/screens/exams_to_correct/exams_to_correct_screen.dart';
import 'package:nadrus_teacher_app/ui/screens/home/home_screen.dart';
import 'package:nadrus_teacher_app/ui/screens/initial/initial_screen.dart';
import 'package:nadrus_teacher_app/ui/screens/login/login_screen.dart';
import 'package:nadrus_teacher_app/ui/screens/main/main_screen.dart';
import 'package:nadrus_teacher_app/ui/screens/notifications/notifications_screen.dart';
import 'package:nadrus_teacher_app/ui/screens/oral_test/oral_test_screen.dart';
import 'package:nadrus_teacher_app/ui/screens/school_details/school_details_screen.dart';
import 'package:nadrus_teacher_app/ui/screens/section_details/section_details_screen.dart';
import 'package:nadrus_teacher_app/ui/screens/send_feedback/send_feedback_screen.dart';
import 'package:nadrus_teacher_app/ui/screens/session_details/session_details_screen.dart';
import 'package:nadrus_teacher_app/ui/screens/set_students_marks/set_students_marks_screen.dart';
import 'package:nadrus_teacher_app/ui/screens/students_list/students_list_screen.dart';

import '../models/data/lesson/lesson.dart';
import '../models/data/school/school.dart';
import '../models/data/session/session.dart';
import '../models/data/student/student.dart';

part 'app_router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Page,Route,Screen')
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(path: '/set_students_marks', page: SetStudentsMarks.page),
        AutoRoute(path: '/send_feedback', page: SendFeedback.page),
        AutoRoute(path: '/oral_test', page: OralTest.page),
        AutoRoute(path: '/create_exam', page: CreateExam.page),
        AutoRoute(path: '/check_homeworks', page: CheckHomeworks.page),
        AutoRoute(path: '/session_details', page: SessionDetails.page),
        AutoRoute(path: '/section_details', page: SectionDetails.page),
        AutoRoute(path: '/create_session', page: CreateSession.page),
        AutoRoute(path: '/students_list', page: StudentsList.page),
        AutoRoute(path: '/school_details', page: SchoolDetails.page),
        AutoRoute(path: '/exams_to_correct', page: ExamsToCorrect.page),
        AutoRoute(
            path: '/all_schools_and_sections',
            page: AllSchoolsAndSections.page),
        AutoRoute(path: '/home', page: Home.page),
        AutoRoute(path: '/notifications', page: Notifications.page),
        AutoRoute(path: '/main', page: Main.page),
        AutoRoute(path: '/login', page: Login.page),
        AutoRoute(path: '/initial', page: Initial.page, initial: true),
      ];
}

final appRouter = AppRouter();
