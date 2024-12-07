import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Home Screen')),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/sectionOne');
            },
            child: Text('Go to Section One'),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/sectionTwo');
            },
            child: Text('Go to Section Two'),
          ),
        ],
      ),
    );
  }
}
