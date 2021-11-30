import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:job_finder_app/Screens/home/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
    ));
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Job Finder App',
      theme: ThemeData(
        primaryColor:Color(0xFF43B1B7),
        accentColor: Color(0xFFFED408)
      ),
      home: HomePage(),
    );
  }
}
