import 'package:animations/animations.dart';

import '../colors/colors.dart';
import '../colors/colors_night.dart';

/// Material Route Custom Transition
class SharedAxisTransitionBuilder extends SharedAxisPageTransitionsBuilder {
  final bool darkMode;
  const SharedAxisTransitionBuilder({this.darkMode = false})
      : super(
          transitionType: SharedAxisTransitionType.scaled,
          fillColor: darkMode
              ? DesignColorsDark.secondaryBackgroundColor
              : DesignColors.secondaryBackgroundColor,
        );
}
