
import 'package:banking/view/source/authScreens/signupScreen.dart';
import 'package:flutter/material.dart';
//kjidsjf dioshf kdsfhkds isdhfds  idhf
void main()
{
 runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Signup_Screen(),
    );
  }
}
