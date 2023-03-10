import 'package:flutter/material.dart';
import 'package:hella/loginpage.dart';
import 'package:hella/register_page.dart';

class AuthPage extends StatefulWidget {
  const AuthPage({super.key});

  @override
  State<AuthPage> createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {
  //initialy show the loginpage
  bool showLoginPage = true;
  void toggleScreens(){
    setState(() {
      showLoginPage= !showLoginPage;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (showLoginPage){
      return LoginPage(showRegisterPage: toggleScreens);
    }
    else {
      return
      RegisterPage(showLoginPage: toggleScreens);
    }
    
  }
}