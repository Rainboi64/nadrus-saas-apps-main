import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutterx_live_data/flutterx_live_data.dart';

import '../../../../config/ui_config.dart';
import '../../../../models/data/session/session.dart';
import '../../../core/layouts/theme_widget.dart';
import '../../../widgets/animations/animated_column.dart';
import '../../../widgets/instance/instance_builder.dart';
import "../viewmodels/home_viewmodel.dart";
import '../widgets/classes_card.dart';

class HomeMobileScreen extends StatelessWidget {
  const HomeMobileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InstanceBuilder<HomeViewModel>(
      builder: (viewModel) {
        return ThemeWidget(
          builder: (context, theme) => Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: AnimatedColumn(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 24),
                //todo good afternoon
                LiveDataBuilder<String>(
                  data: viewModel.params.name,
                  builder: (context, name) => Text(
                    "good_morning".tr(namedArgs: {"model": name}),
                    style: const TextStyle(
                      fontSize: 36,
                    ),
                  ),
                ),
                const SizedBox(height: 45),
                Text(
                  "todays_classes".tr(),
                  style: const TextStyle(
                    fontSize: 18,
                  ),
                ),
                const SizedBox(height: 21),
                LiveDataBuilder<List<Session>>(
                  data: viewModel.params.todaysSessions,
                  builder: (context, todaysSessions) {
                    return SizedBox(
                      height: screenSize(context).height - 275,
                      child: ListView.builder(
                        itemCount: todaysSessions.length,
                        itemBuilder: (context, index) {
                          return ClassesCard(session: todaysSessions[index]);
                        },
                      ),
                    );
                  },
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
