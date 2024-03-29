import 'package:flutter/material.dart';
import 'package:hella/advertisepage.dart';
import 'package:hella/homepage.dart';
import 'package:hella/loginpage.dart';
import 'package:hella/main_page.dart';
import 'package:hella/profile.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.deepPurple
      ),
      debugShowCheckedModeBanner: false,
      home: MainPage(),

    );}}
 