import 'package:flutter/material.dart';
import 'package:hella/homepage.dart';
import 'package:hella/loginpage.dart';
import 'package:hella/profile.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginPage(),

    );}}
 