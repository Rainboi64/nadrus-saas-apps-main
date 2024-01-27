import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../models/data/announcement/announcement.dart';
import '../models/data/exam_collection/exam_collection.dart';
import '../models/data/subject/subject.dart';
import '../models/data/whiteboard/whiteboard.dart';
import '../ui/screens/announcements/announcements_screen.dart';
import '../ui/screens/announcements_details/announcements_details_screen.dart';
import '../ui/screens/detect_tenant/detect_tenant_screen.dart';
import '../ui/screens/exam_details/exam_details_screen.dart';
import '../ui/screens/exams/exams_screen.dart';
import '../ui/screens/home/home_screen.dart';
import '../ui/screens/homeworks/homeworks_screen.dart';
import '../ui/screens/initial/initial_screen.dart';
import '../ui/screens/login/login_screen.dart';
import '../ui/screens/main/main_screen.dart';
import '../ui/screens/schedule/schedule_screen.dart';
import '../ui/screens/subject_details/subject_details_screen.dart';
import '../ui/screens/subjects/subjects_screen.dart';
import '../ui/screens/teachers_notes/teachers_notes_screen.dart';
import '../ui/screens/whiteboard_gallery/whiteboard_gallery_screen.dart';
import '../ui/screens/whiteboard_image_viewer/whiteboard_image_viewer_screen.dart';

part 'app_router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Page,Route,Screen')
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(path: '/exam_details', page: ExamDetails.page),
        AutoRoute(
            path: '/announcements_details', page: AnnouncementsDetails.page),
        AutoRoute(path: '/exams', page: Exams.page),
        AutoRoute(
            path: '/whiteboard_image_viewer', page: WhiteboardImageViewer.page),
        AutoRoute(path: '/announcements', page: Announcements.page),
        AutoRoute(path: '/whiteboard_gallery', page: WhiteboardGallery.page),
        AutoRoute(path: '/teachers_notes', page: TeachersNotes.page),
        AutoRoute(path: '/detect_tenant', page: DetectTenant.page),
        AutoRoute(path: '/subject_details', page: SubjectDetails.page),
        AutoRoute(path: '/homeworks', page: Homeworks.page),
        AutoRoute(path: '/schedule', page: Schedule.page),
        AutoRoute(path: '/main', page: Main.page),
        AutoRoute(path: '/subjects', page: Subjects.page),
        AutoRoute(path: '/initial', page: Initial.page, initial: true),
        AutoRoute(path: '/login', page: Login.page),
        AutoRoute(path: '/home', page: Home.page),
      ];
}

final appRouter = AppRouter();
