import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutterx_live_data/flutterx_live_data.dart';
import 'package:nadrus_student_app/config/ui_config.dart';
import 'package:nadrus_student_app/router/app_router.dart';
import 'package:nadrus_student_app/ui/core/layouts/theme_widget.dart';
import 'package:nadrus_student_app/ui/resources/colors/colors.dart';
import 'package:nadrus_student_app/ui/screens/home/home_screen.dart';
import 'package:nadrus_student_app/ui/screens/homeworks/homeworks_screen.dart';
import 'package:nadrus_student_app/ui/screens/schedule/schedule_screen.dart';
import 'package:nadrus_student_app/ui/screens/subjects/subjects_screen.dart';
import 'package:nadrus_student_app/ui/widgets/base_pop_up_dialog.dart';
import "package:nadrus_student_app/ui/widgets/instance/instance_builder.dart";

import '../../../../models/data/user/user.dart';
import '../../../core/layouts/base_scaffold.dart';
import '../../../shared/customized_app_bar.dart';
import '../../exams/exams_screen.dart';
import "../viewmodels/main_viewmodel.dart";
import '../widgets/profile_pop_up_dialog_content.dart';

class MainMobileScreen extends StatelessWidget {
  MainMobileScreen({Key? key}) : super(key: key);

  // final PersistentTabController _controller =
  //     PersistentTabController(initialIndex: 0);
  //
  // List<Widget> _buildScreens () {
  //  return [
  //     const HomeScreen(),
  //     HomeworksScreen(),
  //     ScheduleScreen(),
  //     SubjectsScreen(),
  //     ExamsScreen(),
  //   ];
  // }
  //
  // List<PersistentBottomNavBarItem> _navBarsItems() {
  //   return [
  //     _buildPersistentBottomNavBarItem("home"),
  //     _buildPersistentBottomNavBarItem("homeworks"),
  //     _buildPersistentBottomNavBarItem("schedule"),
  //     _buildPersistentBottomNavBarItem("subjects"),
  //     _buildPersistentBottomNavBarItem("exams"),
  //   ];
  // }
  //
  // List<BottomNavigationBarItem> _navBarsItemss() {
  //   return [
  //     BottomNavigationBarItem(
  //         activeIcon: _buildActiveIcon('home'),
  //         icon: _buildInActiveIcon('home')),
  //   ];
  // }

  // _buildPersistentBottomNavBarItem(String item) => PersistentBottomNavBarItem(
  //     icon: _buildActiveIcon(item),
  //     inactiveIcon: _buildInActiveIcon(item),
  //     title: (item.tr()),
  //     textStyle: const TextStyle(fontSize: 10),
  //     contentPadding: 6,
  //     activeColorPrimary: DesignColors.primaryColor);
  //
  // _buildActiveIcon(String name) => Padding(
  //     padding: const EdgeInsetsDirectional.only(end: 6),
  //     child:
  //         SvgPicture.asset('assets/svgs/navbar-$name-active.svg', width: 19));
  //
  // _buildInActiveIcon(String name) => Container(
  //     padding: const EdgeInsets.all(3),
  //     decoration:
  //         const BoxDecoration(shape: BoxShape.circle, color: Color(0XFFFAFAFA)),
  //     child:
  //         SvgPicture.asset('assets/svgs/navbar-$name-inactive.svg', width: 19));

  final List<Widget> _buildScreens = [
    const HomeScreen(),
    const HomeworksScreen(),
    const ScheduleScreen(),
    const SubjectsScreen(),
    const ExamsScreen(),
  ];

  List<BottomNavigationBarItem> _navBarsItems() {
    return [
      _buildBottomNavBarItem("home"),
      _buildBottomNavBarItem("homeworks"),
      _buildBottomNavBarItem("schedule", longLabel: true),
      _buildBottomNavBarItem("subjects"),
      _buildBottomNavBarItem("exams", longLabel: true),
    ];
  }

  _buildBottomNavBarItem(String item, {bool longLabel = false}) {
    return BottomNavigationBarItem(
        icon: _buildInActiveIcon(item),
        activeIcon: _buildActiveIcon(item, longLabel: longLabel),
        label: '');
  }

  _buildActiveIcon(String name, {required bool longLabel}) => Container(
        margin: const EdgeInsets.only(top: 8),
        padding: const EdgeInsets.symmetric(vertical: 10),
        decoration: BoxDecoration(
            color: DesignColors.secondaryColor,
            borderRadius: BorderRadius.circular(17)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SvgPicture.asset(
              'assets/svgs/navbar-$name-active.svg',
              height: longLabel ? 15 : 18,
            ),
            //SizedBox(width: longLabel ? 3 : 7),
            Text(
              name.tr(),
              style: TextStyle(
                  fontSize: longLabel ? 8 : 10,
                  color: DesignColors.primaryColor),
            ),
          ],
        ),
      );

  _buildInActiveIcon(String name) => Container(
        padding: const EdgeInsets.all(3),
        decoration: const BoxDecoration(
            shape: BoxShape.circle, color: Color(0XFFFAFAFA)),
        child: SvgPicture.asset(
          'assets/svgs/navbar-$name-inactive.svg',
          height: 22,
        ),
      );

  @override
  Widget build(BuildContext context) {
    return InstanceBuilder<MainViewModel>(
      builder: (viewModel) {
        return ThemeWidget(
          builder: (context, theme) {
            return LiveDataBuilder<int>(
              data: viewModel.params.currentIndex,
              builder: (context, currentIndex) {
                return BaseScaffold(
                  appBar: (context, theme) => PreferredSize(
                    preferredSize: Size(screenSize(context).width, 70),
                    child: LiveDataBuilder<User?>(
                      data: viewModel.params.user,
                      builder: (context, user) {
                        if (user != null) {
                          return WelcomeCustomizedAppBar(
                            name: user.firstName,
                            goToTeachersNotes: () {
                              appRouter.push(const TeachersNotes());
                            },
                            showProfileDialog: () {
                              BasePopUpDialog.showPopup(
                                context: context,
                                child: ProfilePopUpDialogContent(
                                  user: user,
                                  logout: () {
                                    viewModel.logOut();
                                  },
                                ),
                              );
                            },
                          );
                        }
                        return const SizedBox();
                      },
                    ),
                  ),
                  bottomNavigationBar: Container(
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: const Color(0xFF5C5050).withOpacity(0.12),
                          blurRadius: 8,
                          spreadRadius: 4,
                          offset: const Offset(0, -4),
                        ),
                      ],
                    ),
                    child: BottomNavigationBar(
                      items: _navBarsItems(),
                      currentIndex: currentIndex,
                      onTap: (index) =>
                          viewModel.params.currentIndex.postValue(index),
                    ),
                  ),
                  builder: (context, theme) => _buildScreens[currentIndex],
                  // builder: (context, theme) {
                  //   return PersistentTabView(
                  //     context,
                  //     controller: _controller,
                  //     screens: _buildScreens(),
                  //     items: _navBarsItems(),
                  //     confineInSafeArea: true,
                  //     //backgroundColor: Colors.white, // Default is Colors.white.
                  //     handleAndroidBackButtonPress: true, // Default is true.
                  //     resizeToAvoidBottomInset:
                  //         true, // This needs to be true if you want to move up the screen when keyboard appears. Default is true.
                  //     //stateManagement: true, // Default is true.
                  //     hideNavigationBarWhenKeyboardShows:
                  //         true, // Recommended to set 'resizeToAvoidBottomInset' as true while using this argument. Default is true.
                  //     decoration: NavBarDecoration(
                  //       boxShadow: [
                  //         BoxShadow(
                  //           color: const Color(0xFF5C5050).withOpacity(0.12),
                  //           blurRadius: 8,
                  //           spreadRadius: 4,
                  //           offset: const Offset(0, -4),
                  //         ),
                  //       ],
                  //     ),
                  //     popAllScreensOnTapOfSelectedTab: true,
                  //     popActionScreens: PopActionScreensType.all,
                  //     itemAnimationProperties: const ItemAnimationProperties(
                  //       // Navigation Bar's items animation properties.
                  //       duration: Duration(milliseconds: 200),
                  //       curve: Curves.ease,
                  //     ),
                  //     screenTransitionAnimation: const ScreenTransitionAnimation(
                  //       // Screen transition animation on change of selected tab.
                  //       animateTabTransition: true,
                  //       curve: Curves.ease,
                  //       duration: Duration(milliseconds: 200),
                  //     ),
                  //   );
                  // },
                );
              },
            );
          },
        );
      },
    );
  }
}
