import 'package:flutter/material.dart';
import 'package:untitled3/pages/SettingsPage.dart';
import 'package:untitled3/pages/home_page.dart';
import 'package:untitled3/pages/password.dart';
import 'package:untitled3/pages/sign_up.dart';
import 'package:untitled3/pages/signin_page.dart';

void main() {
  runApp(EventCountdownApp());
}

class EventCountdownApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Event Countdown',
      home: SignInPage(),
      routes: {
        '/home': (context) => HomePage(),
        '/password' :(context)=> Password(),
        '/signup' :(context)=>SignUp(),
       'settings' :(context)=>Settings(),
      }
    );
  }
}
