import 'package:flutter/material.dart';
import 'screens/home_screen.dart';
import 'screens/section_one_screen.dart';
import 'screens/section_two_screen.dart';
import 'screens/dynamic_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Advanced Navigation App',
      initialRoute: '/',
      routes: {
        '/': (context) => HomeScreen(),
        '/sectionOne': (context) => SectionOneScreen(),
        '/sectionTwo': (context) => SectionTwoScreen(),
      },
      onGenerateRoute: (settings) {
        if (settings.name == '/dynamic') {
          final args = settings.arguments as Map<String, dynamic>;
          return MaterialPageRoute(
            builder: (context) => DynamicScreen(data: args),
          );
        }
        return null;
      },
      onUnknownRoute: (settings) => MaterialPageRoute(
        builder: (context) => Scaffold(
          body: Center(child: Text('404: Route Not Found')),
        ),
      ),
    );
  }
}

void showErrorSnackbar(BuildContext context, String message) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(content: Text(message)),
  );
}
