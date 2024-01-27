import 'package:flutter/material.dart';
import 'package:your_project_name/navigation/navigation_service.dart';

class StudentSelectionScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Select Student'),
      ),
      body: Column(
        children: <Widget>[
          // Existing student selection list code
          // ...
          ElevatedButton(
            onPressed: () {
              // Navigate to the main screen
              NavigationService.navigateToMainScreen(context);
            },
            child: Text('Next'),
          ),
        ],
      ),
    );
  }
}

// Assuming NavigationService is a part of your project structure
// Add this method in the NavigationService class

void navigateToMainScreen(BuildContext context) {
  Navigator.pushReplacementNamed(context, '/mainScreen');
}