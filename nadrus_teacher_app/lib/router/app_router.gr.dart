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
    AllSchoolsAndSections.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const AllSchoolsAndSectionsScreen(),
      );
    },
    SendFeedback.name: (routeData) {
      final args = routeData.argsAs<SendFeedbackArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: SendFeedbackScreen(
          sectionId: args.sectionId,
          key: args.key,
        ),
      );
    },
    Home.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const HomeScreen(),
      );
    },
    SchoolDetails.name: (routeData) {
      final args = routeData.argsAs<SchoolDetailsArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: SchoolDetailsScreen(
          school: args.school,
          key: args.key,
        ),
      );
    },
    OralTest.name: (routeData) {
      final args = routeData.argsAs<OralTestArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: OralTestScreen(
          sectionId: args.sectionId,
          homeworkId: args.homeworkId,
          previousClassHomework: args.previousClassHomework,
          key: args.key,
        ),
      );
    },
    Initial.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const InitialScreen(),
      );
    },
    ExamsToCorrect.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const ExamsToCorrectScreen(),
      );
    },
    StudentsList.name: (routeData) {
      final args = routeData.argsAs<StudentsListArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: StudentsListScreen(
          school: args.school,
          key: args.key,
        ),
      );
    },
    SetStudentsMarks.name: (routeData) {
      final args = routeData.argsAs<SetStudentsMarksArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: SetStudentsMarksScreen(
          students: args.students,
          collectionId: args.collectionId,
          examId: args.examId,
          key: args.key,
        ),
      );
    },
    CreateExam.name: (routeData) {
      final args = routeData.argsAs<CreateExamArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: CreateExamScreen(
          suggestedLessons: args.suggestedLessons,
          sectionId: args.sectionId,
          key: args.key,
        ),
      );
    },
    SectionDetails.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const SectionDetailsScreen(),
      );
    },
    CheckHomeworks.name: (routeData) {
      final args = routeData.argsAs<CheckHomeworksArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: CheckHomeworksScreen(
          sectionId: args.sectionId,
          homeworkId: args.homeworkId,
          previousClassHomework: args.previousClassHomework,
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
    CreateSession.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const CreateSessionScreen(),
      );
    },
    SessionDetails.name: (routeData) {
      final args = routeData.argsAs<SessionDetailsArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: SessionDetailsScreen(
          session: args.session,
          key: args.key,
        ),
      );
    },
    Notifications.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const NotificationsScreen(),
      );
    },
    Login.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const LoginScreen(),
      );
    },
  };
}

/// generated route for
/// [AllSchoolsAndSectionsScreen]
class AllSchoolsAndSections extends PageRouteInfo<void> {
  const AllSchoolsAndSections({List<PageRouteInfo>? children})
      : super(
          AllSchoolsAndSections.name,
          initialChildren: children,
        );

  static const String name = 'AllSchoolsAndSections';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [SendFeedbackScreen]
class SendFeedback extends PageRouteInfo<SendFeedbackArgs> {
  SendFeedback({
    required String sectionId,
    Key? key,
    List<PageRouteInfo>? children,
  }) : super(
          SendFeedback.name,
          args: SendFeedbackArgs(
            sectionId: sectionId,
            key: key,
          ),
          initialChildren: children,
        );

  static const String name = 'SendFeedback';

  static const PageInfo<SendFeedbackArgs> page =
      PageInfo<SendFeedbackArgs>(name);
}

class SendFeedbackArgs {
  const SendFeedbackArgs({
    required this.sectionId,
    this.key,
  });

  final String sectionId;

  final Key? key;

  @override
  String toString() {
    return 'SendFeedbackArgs{sectionId: $sectionId, key: $key}';
  }
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
/// [SchoolDetailsScreen]
class SchoolDetails extends PageRouteInfo<SchoolDetailsArgs> {
  SchoolDetails({
    required School school,
    Key? key,
    List<PageRouteInfo>? children,
  }) : super(
          SchoolDetails.name,
          args: SchoolDetailsArgs(
            school: school,
            key: key,
          ),
          initialChildren: children,
        );

  static const String name = 'SchoolDetails';

  static const PageInfo<SchoolDetailsArgs> page =
      PageInfo<SchoolDetailsArgs>(name);
}

class SchoolDetailsArgs {
  const SchoolDetailsArgs({
    required this.school,
    this.key,
  });

  final School school;

  final Key? key;

  @override
  String toString() {
    return 'SchoolDetailsArgs{school: $school, key: $key}';
  }
}

/// generated route for
/// [OralTestScreen]
class OralTest extends PageRouteInfo<OralTestArgs> {
  OralTest({
    required String sectionId,
    required String homeworkId,
    required String previousClassHomework,
    Key? key,
    List<PageRouteInfo>? children,
  }) : super(
          OralTest.name,
          args: OralTestArgs(
            sectionId: sectionId,
            homeworkId: homeworkId,
            previousClassHomework: previousClassHomework,
            key: key,
          ),
          initialChildren: children,
        );

  static const String name = 'OralTest';

  static const PageInfo<OralTestArgs> page = PageInfo<OralTestArgs>(name);
}

class OralTestArgs {
  const OralTestArgs({
    required this.sectionId,
    required this.homeworkId,
    required this.previousClassHomework,
    this.key,
  });

  final String sectionId;

  final String homeworkId;

  final String previousClassHomework;

  final Key? key;

  @override
  String toString() {
    return 'OralTestArgs{sectionId: $sectionId, homeworkId: $homeworkId, previousClassHomework: $previousClassHomework, key: $key}';
  }
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
/// [ExamsToCorrectScreen]
class ExamsToCorrect extends PageRouteInfo<void> {
  const ExamsToCorrect({List<PageRouteInfo>? children})
      : super(
          ExamsToCorrect.name,
          initialChildren: children,
        );

  static const String name = 'ExamsToCorrect';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [StudentsListScreen]
class StudentsList extends PageRouteInfo<StudentsListArgs> {
  StudentsList({
    required School school,
    Key? key,
    List<PageRouteInfo>? children,
  }) : super(
          StudentsList.name,
          args: StudentsListArgs(
            school: school,
            key: key,
          ),
          initialChildren: children,
        );

  static const String name = 'StudentsList';

  static const PageInfo<StudentsListArgs> page =
      PageInfo<StudentsListArgs>(name);
}

class StudentsListArgs {
  const StudentsListArgs({
    required this.school,
    this.key,
  });

  final School school;

  final Key? key;

  @override
  String toString() {
    return 'StudentsListArgs{school: $school, key: $key}';
  }
}

/// generated route for
/// [SetStudentsMarksScreen]
class SetStudentsMarks extends PageRouteInfo<SetStudentsMarksArgs> {
  SetStudentsMarks({
    required List<Student> students,
    required String collectionId,
    required String examId,
    Key? key,
    List<PageRouteInfo>? children,
  }) : super(
          SetStudentsMarks.name,
          args: SetStudentsMarksArgs(
            students: students,
            collectionId: collectionId,
            examId: examId,
            key: key,
          ),
          initialChildren: children,
        );

  static const String name = 'SetStudentsMarks';

  static const PageInfo<SetStudentsMarksArgs> page =
      PageInfo<SetStudentsMarksArgs>(name);
}

class SetStudentsMarksArgs {
  const SetStudentsMarksArgs({
    required this.students,
    required this.collectionId,
    required this.examId,
    this.key,
  });

  final List<Student> students;

  final String collectionId;

  final String examId;

  final Key? key;

  @override
  String toString() {
    return 'SetStudentsMarksArgs{students: $students, collectionId: $collectionId, examId: $examId, key: $key}';
  }
}

/// generated route for
/// [CreateExamScreen]
class CreateExam extends PageRouteInfo<CreateExamArgs> {
  CreateExam({
    required List<Lesson> suggestedLessons,
    required String sectionId,
    Key? key,
    List<PageRouteInfo>? children,
  }) : super(
          CreateExam.name,
          args: CreateExamArgs(
            suggestedLessons: suggestedLessons,
            sectionId: sectionId,
            key: key,
          ),
          initialChildren: children,
        );

  static const String name = 'CreateExam';

  static const PageInfo<CreateExamArgs> page = PageInfo<CreateExamArgs>(name);
}

class CreateExamArgs {
  const CreateExamArgs({
    required this.suggestedLessons,
    required this.sectionId,
    this.key,
  });

  final List<Lesson> suggestedLessons;

  final String sectionId;

  final Key? key;

  @override
  String toString() {
    return 'CreateExamArgs{suggestedLessons: $suggestedLessons, sectionId: $sectionId, key: $key}';
  }
}

/// generated route for
/// [SectionDetailsScreen]
class SectionDetails extends PageRouteInfo<void> {
  const SectionDetails({List<PageRouteInfo>? children})
      : super(
          SectionDetails.name,
          initialChildren: children,
        );

  static const String name = 'SectionDetails';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [CheckHomeworksScreen]
class CheckHomeworks extends PageRouteInfo<CheckHomeworksArgs> {
  CheckHomeworks({
    required String sectionId,
    required String homeworkId,
    required String previousClassHomework,
    Key? key,
    List<PageRouteInfo>? children,
  }) : super(
          CheckHomeworks.name,
          args: CheckHomeworksArgs(
            sectionId: sectionId,
            homeworkId: homeworkId,
            previousClassHomework: previousClassHomework,
            key: key,
          ),
          initialChildren: children,
        );

  static const String name = 'CheckHomeworks';

  static const PageInfo<CheckHomeworksArgs> page =
      PageInfo<CheckHomeworksArgs>(name);
}

class CheckHomeworksArgs {
  const CheckHomeworksArgs({
    required this.sectionId,
    required this.homeworkId,
    required this.previousClassHomework,
    this.key,
  });

  final String sectionId;

  final String homeworkId;

  final String previousClassHomework;

  final Key? key;

  @override
  String toString() {
    return 'CheckHomeworksArgs{sectionId: $sectionId, homeworkId: $homeworkId, previousClassHomework: $previousClassHomework, key: $key}';
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
/// [CreateSessionScreen]
class CreateSession extends PageRouteInfo<void> {
  const CreateSession({List<PageRouteInfo>? children})
      : super(
          CreateSession.name,
          initialChildren: children,
        );

  static const String name = 'CreateSession';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [SessionDetailsScreen]
class SessionDetails extends PageRouteInfo<SessionDetailsArgs> {
  SessionDetails({
    required Session session,
    Key? key,
    List<PageRouteInfo>? children,
  }) : super(
          SessionDetails.name,
          args: SessionDetailsArgs(
            session: session,
            key: key,
          ),
          initialChildren: children,
        );

  static const String name = 'SessionDetails';

  static const PageInfo<SessionDetailsArgs> page =
      PageInfo<SessionDetailsArgs>(name);
}

class SessionDetailsArgs {
  const SessionDetailsArgs({
    required this.session,
    this.key,
  });

  final Session session;

  final Key? key;

  @override
  String toString() {
    return 'SessionDetailsArgs{session: $session, key: $key}';
  }
}

/// generated route for
/// [NotificationsScreen]
class Notifications extends PageRouteInfo<void> {
  const Notifications({List<PageRouteInfo>? children})
      : super(
          Notifications.name,
          initialChildren: children,
        );

  static const String name = 'Notifications';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [LoginScreen]
class Login extends PageRouteInfo<void> {
  const Login({List<PageRouteInfo>? children})
      : super(
          Login.name,
          initialChildren: children,
        );

  static const String name = 'Login';

  static const PageInfo<void> page = PageInfo<void>(name);
}
