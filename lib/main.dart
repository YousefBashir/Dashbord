import 'package:flutter/material.dart';
import 'ui/dashboard.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: 'Multi_icons',
      home: Dashboard(),
    );
  }
}
