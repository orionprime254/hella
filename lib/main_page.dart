import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:hella/auth_page.dart';
import 'package:hella/homepage.dart';
import 'package:hella/loginpage.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}):super(key:key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder<User?>(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot) {
          if(snapshot.hasData){
            return HomePage();
            }
            else {
              return AuthPage();
            }
        },
      )
    );
  }
}