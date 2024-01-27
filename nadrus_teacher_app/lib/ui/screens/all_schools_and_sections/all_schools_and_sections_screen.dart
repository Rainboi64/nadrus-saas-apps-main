import "package:auto_route/auto_route.dart";
import 'package:flutter/material.dart';
import 'package:flutterx_live_data/flutterx_live_data.dart';
import 'package:nadrus_teacher_app/ui/core/layouts/base_scaffold.dart';
import 'package:nadrus_teacher_app/ui/core/responsive/screen_type_layout.dart';
import "package:nadrus_teacher_app/ui/widgets/instance/instance_state.dart";
import 'package:nadrus_teacher_app/ui/widgets/loaders/live_data_loader.dart';

import "./viewmodels/all_schools_and_sections_viewmodel.dart";
import 'mobile/all_schools_and_sections_mobile_screen.dart';

@RoutePage(name: "allSchoolsAndSections")
class AllSchoolsAndSectionsScreen extends StatefulWidget {
  const AllSchoolsAndSectionsScreen({Key? key}) : super(key: key);

  @override
  State<AllSchoolsAndSectionsScreen> createState() =>
      _AllSchoolsAndSectionsScreenState();
}

class _AllSchoolsAndSectionsScreenState
    extends State<AllSchoolsAndSectionsScreen>
    with
        InstanceState<AllSchoolsAndSectionsScreen,
            AllSchoolsAndSectionsViewModel>,
        ObserverMixin {
  @override
  Widget screen(context, viewModel) {
    return Stack(
      children: [
        BaseScaffold(
          builder: (context, theme) => const SafeArea(
            child:
                ScreenTypeLayout(mobile: AllSchoolsAndSectionsMobileScreen()),
          ),
        ),
        LoadingListenerWidget(loading: viewModel.baseParams.loading),
      ],
    );
  }

  @override
  AllSchoolsAndSectionsViewModel registerInstance() =>
      AllSchoolsAndSectionsViewModel();
}
