import "package:auto_route/auto_route.dart";
import 'package:flutter/material.dart';
import 'package:flutterx_live_data/flutterx_live_data.dart';
import 'package:nadrus_teacher_app/ui/core/layouts/base_scaffold.dart';
import 'package:nadrus_teacher_app/ui/core/responsive/screen_type_layout.dart';
import "package:nadrus_teacher_app/ui/widgets/instance/instance_state.dart";
import 'package:nadrus_teacher_app/ui/widgets/loaders/live_data_loader.dart';

import "./viewmodels/login_viewmodel.dart";
import 'mobile/login_mobile_screen.dart';

@RoutePage(name: "login")
class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen>
    with InstanceState<LoginScreen, LoginViewModel>, ObserverMixin {
  @override
  Widget screen(context, viewModel) {
    return Stack(
      children: [
        BaseScaffold(
          builder: (context, theme) => const SafeArea(
            child: ScreenTypeLayout(mobile: LoginMobileScreen()),
          ),
        ),
        LoadingListenerWidget(loading: viewModel.baseParams.loading),
      ],
    );
  }

  @override
  LoginViewModel registerInstance() => LoginViewModel();
}
