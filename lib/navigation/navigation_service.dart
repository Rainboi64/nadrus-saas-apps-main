import 'package:flutter/material.dart';

class NavigationService {
  static void navigateToMainScreen(BuildContext context) {
    Navigator.pushReplacementNamed(context, '/mainScreen');
  }

  // Other navigation methods
}
