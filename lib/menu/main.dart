import 'package:flutter/material.dart';
import 'HomeScreen.dart';
import '/theme/theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: theme,
      home: HomeScreen(),
    );
  }
}
