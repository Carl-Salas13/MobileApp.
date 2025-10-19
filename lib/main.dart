import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/intro.dart';
import 'package:flutter_application_1/pages/profile.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {'/profile': (context) => const Profile()},
      debugShowCheckedModeBanner: false,
      home: Intro(),
    );
  }
}
