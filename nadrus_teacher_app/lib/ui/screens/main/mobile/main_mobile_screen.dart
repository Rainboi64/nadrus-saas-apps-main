import 'package:flutter/material.dart';
import 'package:flutterx_live_data/flutterx_live_data.dart';

import '../../../core/layouts/theme_widget.dart';
import '../../../widgets/instance/instance_builder.dart';
import '../../all_schools_and_sections/all_schools_and_sections_screen.dart';
import '../../exams_to_correct/exams_to_correct_screen.dart';
import '../../home/home_screen.dart';
import '../../notifications/notifications_screen.dart';
import "../viewmodels/main_viewmodel.dart";
import '../widgets/customized_appbar.dart';
import '../widgets/customized_drawer.dart';

class MainMobileScreen extends StatelessWidget {
  MainMobileScreen({super.key});
  // Create a key
  final GlobalKey<ScaffoldState> _key = GlobalKey();

  List<Widget> screens = [
    const HomeScreen(),
    const AllSchoolsAndSectionsScreen(),
    const ExamsToCorrectScreen(),
    const NotificationsScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return InstanceBuilder<MainViewModel>(
      builder: (viewModel) {
        return ThemeWidget(
          builder: (context, theme) {
            return LiveDataBuilder<int>(
              data: viewModel.params.selectedScreen,
              builder: (context, index) {
                return Scaffold(
                  key: _key,
                  endDrawer: CustomizedDrawer(
                    toggleScreens: viewModel.toggleBetweenScreens,
                    closeDrawer: () => _key.currentState?.closeEndDrawer(),
                    logout: () => viewModel.logOut(),
                    selectedIndex: index,
                  ),
                  appBar: customizedAppBar(
                      openDrawer: () => _key.currentState!.openEndDrawer()),
                  body: screens[index],
                );
              },
            );
          },
        );
      },
    );
  }
}
