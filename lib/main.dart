import 'package:demoflutter1/pages/detail_page.dart';
import 'package:demoflutter1/pages/nacpages/main_page.dart';
import 'package:demoflutter1/pages/welcome_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hello',
      theme: ThemeData(
    
        primarySwatch: Colors.blue,
      ),
      home: WelcomePage()
    );
  }
}

