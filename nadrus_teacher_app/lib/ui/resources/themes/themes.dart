import 'dart:io';

import 'package:flutter/material.dart';

import '../colors/colors.dart';
import '../colors/colors_night.dart';
import '../dimensions/dimensions.dart';
import 'transitions.dart';

const fontFamily = "Vazirmatn";

/// -------------- App Theme -------------- ///
final ThemeData lightTheme = ThemeData(
  // Define the default brightness and colors.
  useMaterial3: true,
  fontFamily: fontFamily,
  visualDensity: VisualDensity.adaptivePlatformDensity,
  brightness: Brightness.light,
  primaryColor: DesignColors.primaryColor,
  dividerColor: DesignColors.grey,
  disabledColor: DesignColors.grey,
  scaffoldBackgroundColor: DesignColors.secondaryBackgroundColor,
  colorScheme: const ColorScheme(
    primary: DesignColors.primaryColor,
    secondary: DesignColors.secondaryColor,
    surface: DesignColors.primaryColor,
    background: Colors.white,
    error: DesignColors.errorColor,
    onPrimary: Colors.white,
    onSecondary: Colors.white,
    onSurface: Colors.black,
    onBackground: Color.fromRGBO(249, 249, 249, 1),
    onError: DesignColors.errorColor,
    brightness: Brightness.light,
  ),
  textTheme: textTheme(),
  elevatedButtonTheme: elevatedButtonTheme(),
  outlinedButtonTheme: outlinedButtonTheme(),
  textButtonTheme: textButtonTheme(),
  pageTransitionsTheme: pageTransitionsTheme(),
);

/// -------------- Page Transitions Animations -------------- ///
PageTransitionsTheme pageTransitionsTheme({bool darkMode = false}) =>
    PageTransitionsTheme(
      builders: {
        TargetPlatform.android: SharedAxisTransitionBuilder(darkMode: darkMode),
        TargetPlatform.iOS: const CupertinoPageTransitionsBuilder(),
        TargetPlatform.windows: SharedAxisTransitionBuilder(darkMode: darkMode),
        TargetPlatform.macOS: SharedAxisTransitionBuilder(darkMode: darkMode),
        TargetPlatform.linux: SharedAxisTransitionBuilder(darkMode: darkMode),
      },
    );

/// -------------------------------------------------------- ///

/// ---------------------- Text Theme ---------------------- ///
TextTheme textTheme({bool darkMode = false}) {
  final textColor =
      darkMode ? DesignColorsDark.textColor : DesignColors.textColor;
  return TextTheme(
    bodySmall: TextStyle(
        fontSize: smallText, fontWeight: FontWeight.w400, color: textColor),
    bodyMedium: TextStyle(
        fontSize: normalText, fontWeight: FontWeight.w400, color: textColor),
    bodyLarge: TextStyle(
        fontSize: largeText, fontWeight: FontWeight.w500, color: textColor),
    titleSmall: TextStyle(
        fontSize: smallText, fontWeight: FontWeight.w500, color: textColor),
    titleMedium: TextStyle(
        fontSize: mediumText, fontWeight: FontWeight.w500, color: textColor),
    titleLarge: TextStyle(
        fontSize: largeText, fontWeight: FontWeight.w600, color: textColor),
  );
}

TextStyle outlinedButtonTextStyle({bool darkMode = false}) {
  final primaryColor =
      darkMode ? DesignColorsDark.primaryColor : DesignColors.primaryColor;
  return TextStyle(
    color: primaryColor,
    fontSize: 14,
    fontFamily: fontFamily,
    fontWeight: FontWeight.w500,
  );
}

TextStyle textButtonTextStyle({bool darkMode = false}) {
  final primaryColor =
      darkMode ? DesignColorsDark.primaryColor : DesignColors.primaryColor;
  return TextStyle(
    color: primaryColor,
    fontSize: 20,
    fontFamily: fontFamily,
    fontWeight: FontWeight.w400,
  );
}

TextStyle titleStyle(ThemeData theme) => TextStyle(
      color: theme.primaryColor,
      fontSize: normalText,
      fontWeight: FontWeight.w500,
    );

/// ----------------- [TextFormField] default styles ----------------- ///
TextStyle hintStyle() =>
    const TextStyle(fontSize: smallText, color: DesignColors.grey);

TextStyle errorStyle() =>
    const TextStyle(fontSize: 10, color: DesignColors.errorColor);

TextStyle labelStyle() => const TextStyle(
      fontSize: smallText,
      color: DesignColors.grey,
      fontWeight: FontWeight.w500,
    );

/// ----------------- [TextFormField] default border ----------------- ///
OutlineInputBorder textFormFieldEnabledBorder() => OutlineInputBorder(
      borderSide: const BorderSide(color: DesignColors.grey, width: 0.8),
      borderRadius: BorderRadius.circular(textFormFieldRadius),
    );

/// ----------------- [TextFormField] enabled border ----------------- ///
OutlineInputBorder textFormFieldFocusedBorder(ThemeData themeData) =>
    OutlineInputBorder(
      borderSide: BorderSide(color: themeData.primaryColor, width: 2),
      borderRadius: BorderRadius.circular(textFormFieldRadius),
    );

/// ----------------- [TextFormField] error border ----------------- ///
OutlineInputBorder textFormFieldErrorBorder(ThemeData themeData) =>
    OutlineInputBorder(
      borderSide: BorderSide(color: themeData.colorScheme.onError, width: 2),
      borderRadius: BorderRadius.circular(textFormFieldRadius),
    );

/// -------------------------------------------------------- ///

/// -------------------- Buttons Theme -------------------- ///
TextButtonThemeData textButtonTheme({bool darkMode = false}) {
  final primaryColor =
      darkMode ? DesignColorsDark.primaryColor : DesignColors.primaryColor;
  return TextButtonThemeData(
    style: ButtonStyle(
      foregroundColor: MaterialStateProperty.all<Color>(primaryColor),
      overlayColor: MaterialStateProperty.all<Color>(Colors.transparent),
      shape: MaterialStateProperty.all<OutlinedBorder>(
        const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(buttonCorner)),
        ),
      ),
      textStyle: MaterialStateProperty.all<TextStyle>(
          textButtonTextStyle(darkMode: darkMode)),
    ),
  );
}

OutlinedButtonThemeData outlinedButtonTheme({bool darkMode = false}) {
  final primaryColor =
      darkMode ? DesignColorsDark.primaryColor : DesignColors.primaryColor;
  return OutlinedButtonThemeData(
    style: ButtonStyle(
      textStyle: MaterialStateProperty.all<TextStyle>(
          outlinedButtonTextStyle(darkMode: darkMode)),
      foregroundColor: MaterialStateProperty.all<Color>(primaryColor),
      overlayColor: MaterialStateProperty.all<Color>(Colors.transparent),
      side: MaterialStateProperty.all<BorderSide>(
          BorderSide(color: primaryColor)),
      padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
          const EdgeInsets.all(buttonPadding)),
      shape: MaterialStateProperty.all<OutlinedBorder>(
        const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(buttonCorner)),
        ),
      ),
    ),
  );
}

ElevatedButtonThemeData elevatedButtonTheme({bool darkMode = false}) {
  final primaryColor =
      darkMode ? DesignColorsDark.primaryColor : DesignColors.primaryColor;
  return ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      surfaceTintColor: primaryColor,
      padding: const EdgeInsets.all(buttonPadding),
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(buttonCorner))),
      textStyle: const TextStyle(
        color: Colors.white,
        fontSize: 20,
        fontFamily: fontFamily,
        fontWeight: FontWeight.w400,
      ),
    ),
  );
}

/// -------------------------------------------------------- ///

/// -------------------- TextStyles -------------------- ///
const veryLargeTextStyle =
    TextStyle(fontSize: largeText, fontWeight: FontWeight.w700);
const largeTextStyle =
    TextStyle(fontSize: normalText, fontWeight: FontWeight.w600);
const mediumTextStyle =
    TextStyle(fontSize: normalText, fontWeight: FontWeight.w500);
const normalTextStyle =
    TextStyle(fontSize: smallText, fontWeight: FontWeight.w500);
const smallTextStyle =
    TextStyle(fontSize: smallText, fontWeight: FontWeight.w400);
const verySmallTextStyle =
    TextStyle(fontSize: verySmallText, fontWeight: FontWeight.w400);

/// -------------------------------------------------------- ///

/// ignore bottom padding on [Platform.isIOS]
EdgeInsets get adaptivePadding => const EdgeInsets.all(layoutPadding).copyWith(
      bottom: Platform.isIOS ? 0 : layoutPadding,
    );
