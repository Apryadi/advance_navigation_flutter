import 'package:flutter/material.dart';

class DynamicScreen extends StatelessWidget {
  final Map<String, dynamic> data;

  const DynamicScreen({required this.data});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Dynamic Screen')),
      body: Center(
        child: Text('Data: ${data['message']}'),
      ),
    );
  }
}
