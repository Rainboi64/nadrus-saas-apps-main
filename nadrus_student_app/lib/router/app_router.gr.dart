// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'app_router.dart';

abstract class _$AppRouter extends RootStackRouter {
  // ignore: unused_element
  _$AppRouter({super.navigatorKey});

  @override
  final Map<String, PageFactory> pagesMap = {
    Home.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const HomeScreen(),
      );
    },
    Schedule.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const ScheduleScreen(),
      );
    },
    DetectTenant.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const DetectTenantScreen(),
      );
    },
    Initial.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const InitialScreen(),
      );
    },
    ExamDetails.name: (routeData) {
      final args = routeData.argsAs<ExamDetailsArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: ExamDetailsScreen(
          examCollection: args.examCollection,
          key: args.key,
        ),
      );
    },
    WhiteboardGallery.name: (routeData) {
      final args = routeData.argsAs<WhiteboardGalleryArgs>(
          orElse: () => const WhiteboardGalleryArgs());
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: WhiteboardGalleryScreen(
          whiteboards: args.whiteboards,
          key: args.key,
        ),
      );
    },
    Announcements.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const AnnouncementsScreen(),
      );
    },
    WhiteboardImageViewer.name: (routeData) {
      final args = routeData.argsAs<WhiteboardImageViewerArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: WhiteboardImageViewerScreen(
          whiteboard: args.whiteboard,
          key: args.key,
        ),
      );
    },
    SubjectDetails.name: (routeData) {
      final args = routeData.argsAs<SubjectDetailsArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: SubjectDetailsScreen(
          subject: args.subject,
          key: args.key,
        ),
      );
    },
    TeachersNotes.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const TeachersNotesScreen(),
      );
    },
    Subjects.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const SubjectsScreen(),
      );
    },
    Homeworks.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const HomeworksScreen(),
      );
    },
    Exams.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const ExamsScreen(),
      );
    },
    AnnouncementsDetails.name: (routeData) {
      final args = routeData.argsAs<AnnouncementsDetailsArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: AnnouncementsDetailsScreen(
          announcement: args.announcement,
          key: args.key,
        ),
      );
    },
    Main.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const MainScreen(),
      );
    },
    Login.name: (routeData) {
      final args = routeData.argsAs<LoginArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: LoginScreen(
          key: args.key,
          username: args.username,
        ),
      );
    },
  };
}

/// generated route for
/// [HomeScreen]
class Home extends PageRouteInfo<void> {
  const Home({List<PageRouteInfo>? children})
      : super(
          Home.name,
          initialChildren: children,
        );

  static const String name = 'Home';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [ScheduleScreen]
class Schedule extends PageRouteInfo<void> {
  const Schedule({List<PageRouteInfo>? children})
      : super(
          Schedule.name,
          initialChildren: children,
        );

  static const String name = 'Schedule';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [DetectTenantScreen]
class DetectTenant extends PageRouteInfo<void> {
  const DetectTenant({List<PageRouteInfo>? children})
      : super(
          DetectTenant.name,
          initialChildren: children,
        );

  static const String name = 'DetectTenant';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [InitialScreen]
class Initial extends PageRouteInfo<void> {
  const Initial({List<PageRouteInfo>? children})
      : super(
          Initial.name,
          initialChildren: children,
        );

  static const String name = 'Initial';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [ExamDetailsScreen]
class ExamDetails extends PageRouteInfo<ExamDetailsArgs> {
  ExamDetails({
    required ExamCollection examCollection,
    Key? key,
    List<PageRouteInfo>? children,
  }) : super(
          ExamDetails.name,
          args: ExamDetailsArgs(
            examCollection: examCollection,
            key: key,
          ),
          initialChildren: children,
        );

  static const String name = 'ExamDetails';

  static const PageInfo<ExamDetailsArgs> page = PageInfo<ExamDetailsArgs>(name);
}

class ExamDetailsArgs {
  const ExamDetailsArgs({
    required this.examCollection,
    this.key,
  });

  final ExamCollection examCollection;

  final Key? key;

  @override
  String toString() {
    return 'ExamDetailsArgs{examCollection: $examCollection, key: $key}';
  }
}

/// generated route for
/// [WhiteboardGalleryScreen]
class WhiteboardGallery extends PageRouteInfo<WhiteboardGalleryArgs> {
  WhiteboardGallery({
    List<Whiteboard>? whiteboards,
    Key? key,
    List<PageRouteInfo>? children,
  }) : super(
          WhiteboardGallery.name,
          args: WhiteboardGalleryArgs(
            whiteboards: whiteboards,
            key: key,
          ),
          initialChildren: children,
        );

  static const String name = 'WhiteboardGallery';

  static const PageInfo<WhiteboardGalleryArgs> page =
      PageInfo<WhiteboardGalleryArgs>(name);
}

class WhiteboardGalleryArgs {
  const WhiteboardGalleryArgs({
    this.whiteboards,
    this.key,
  });

  final List<Whiteboard>? whiteboards;

  final Key? key;

  @override
  String toString() {
    return 'WhiteboardGalleryArgs{whiteboards: $whiteboards, key: $key}';
  }
}

/// generated route for
/// [AnnouncementsScreen]
class Announcements extends PageRouteInfo<void> {
  const Announcements({List<PageRouteInfo>? children})
      : super(
          Announcements.name,
          initialChildren: children,
        );

  static const String name = 'Announcements';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [WhiteboardImageViewerScreen]
class WhiteboardImageViewer extends PageRouteInfo<WhiteboardImageViewerArgs> {
  WhiteboardImageViewer({
    required Whiteboard whiteboard,
    Key? key,
    List<PageRouteInfo>? children,
  }) : super(
          WhiteboardImageViewer.name,
          args: WhiteboardImageViewerArgs(
            whiteboard: whiteboard,
            key: key,
          ),
          initialChildren: children,
        );

  static const String name = 'WhiteboardImageViewer';

  static const PageInfo<WhiteboardImageViewerArgs> page =
      PageInfo<WhiteboardImageViewerArgs>(name);
}

class WhiteboardImageViewerArgs {
  const WhiteboardImageViewerArgs({
    required this.whiteboard,
    this.key,
  });

  final Whiteboard whiteboard;

  final Key? key;

  @override
  String toString() {
    return 'WhiteboardImageViewerArgs{whiteboard: $whiteboard, key: $key}';
  }
}

/// generated route for
/// [SubjectDetailsScreen]
class SubjectDetails extends PageRouteInfo<SubjectDetailsArgs> {
  SubjectDetails({
    required Subject subject,
    Key? key,
    List<PageRouteInfo>? children,
  }) : super(
          SubjectDetails.name,
          args: SubjectDetailsArgs(
            subject: subject,
            key: key,
          ),
          initialChildren: children,
        );

  static const String name = 'SubjectDetails';

  static const PageInfo<SubjectDetailsArgs> page =
      PageInfo<SubjectDetailsArgs>(name);
}

class SubjectDetailsArgs {
  const SubjectDetailsArgs({
    required this.subject,
    this.key,
  });

  final Subject subject;

  final Key? key;

  @override
  String toString() {
    return 'SubjectDetailsArgs{subject: $subject, key: $key}';
  }
}

/// generated route for
/// [TeachersNotesScreen]
class TeachersNotes extends PageRouteInfo<void> {
  const TeachersNotes({List<PageRouteInfo>? children})
      : super(
          TeachersNotes.name,
          initialChildren: children,
        );

  static const String name = 'TeachersNotes';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [SubjectsScreen]
class Subjects extends PageRouteInfo<void> {
  const Subjects({List<PageRouteInfo>? children})
      : super(
          Subjects.name,
          initialChildren: children,
        );

  static const String name = 'Subjects';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [HomeworksScreen]
class Homeworks extends PageRouteInfo<void> {
  const Homeworks({List<PageRouteInfo>? children})
      : super(
          Homeworks.name,
          initialChildren: children,
        );

  static const String name = 'Homeworks';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [ExamsScreen]
class Exams extends PageRouteInfo<void> {
  const Exams({List<PageRouteInfo>? children})
      : super(
          Exams.name,
          initialChildren: children,
        );

  static const String name = 'Exams';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [AnnouncementsDetailsScreen]
class AnnouncementsDetails extends PageRouteInfo<AnnouncementsDetailsArgs> {
  AnnouncementsDetails({
    required Announcement announcement,
    Key? key,
    List<PageRouteInfo>? children,
  }) : super(
          AnnouncementsDetails.name,
          args: AnnouncementsDetailsArgs(
            announcement: announcement,
            key: key,
          ),
          initialChildren: children,
        );

  static const String name = 'AnnouncementsDetails';

  static const PageInfo<AnnouncementsDetailsArgs> page =
      PageInfo<AnnouncementsDetailsArgs>(name);
}

class AnnouncementsDetailsArgs {
  const AnnouncementsDetailsArgs({
    required this.announcement,
    this.key,
  });

  final Announcement announcement;

  final Key? key;

  @override
  String toString() {
    return 'AnnouncementsDetailsArgs{announcement: $announcement, key: $key}';
  }
}

/// generated route for
/// [MainScreen]
class Main extends PageRouteInfo<void> {
  const Main({List<PageRouteInfo>? children})
      : super(
          Main.name,
          initialChildren: children,
        );

  static const String name = 'Main';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [LoginScreen]
class Login extends PageRouteInfo<LoginArgs> {
  Login({
    Key? key,
    required String username,
    List<PageRouteInfo>? children,
  }) : super(
          Login.name,
          args: LoginArgs(
            key: key,
            username: username,
          ),
          initialChildren: children,
        );

  static const String name = 'Login';

  static const PageInfo<LoginArgs> page = PageInfo<LoginArgs>(name);
}

class LoginArgs {
  const LoginArgs({
    this.key,
    required this.username,
  });

  final Key? key;

  final String username;

  @override
  String toString() {
    return 'LoginArgs{key: $key, username: $username}';
  }
}
