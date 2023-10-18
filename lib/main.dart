import 'package:flutter/material.dart'; // Essential Flutter widgets
import 'screens/home_page.dart'; // Importing our main screen

// Entry point for the Flutter app
void main() => runApp(InstagramCloneApp());

// Root widget for the application
class InstagramCloneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Instagram Clone', // Title used by the OS task switcher
      theme: ThemeData( // Defining the app's visual theme
        primarySwatch: Colors.blue,
      ),
      home: HomePage(), // SettingHomepage as the main screen
    );
  }
}
