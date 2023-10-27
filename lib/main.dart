import 'package:flutter/material.dart'; // Essential Flutter widgets
import 'widgets/home_page.dart'; // Importing our main screen

// Entry point for the Flutter app
void main() => runApp(InstagramCloneApp());

const int _whitePrimaryValue = 0xFFFFFFFF;

final MaterialColor white = MaterialColor(
  _whitePrimaryValue,
  <int, Color>{
    50: Color(_whitePrimaryValue),
    100: Color(_whitePrimaryValue),
    200: Color(_whitePrimaryValue),
    300: Color(_whitePrimaryValue),
    400: Color(_whitePrimaryValue),
    500: Color(_whitePrimaryValue),
    600: Color(_whitePrimaryValue),
    700: Color(_whitePrimaryValue),
    800: Color(_whitePrimaryValue),
    900: Color(_whitePrimaryValue),
  },
);

// Root widget for the application
class InstagramCloneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Instagram Clone', // Title used by the OS task switcher
      theme: ThemeData( // Defining the app's visual theme
        primarySwatch: white,
      ),
      home: HomePage(), // SettingHomepage as the main screen
    );
  }
}
