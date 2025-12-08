
import 'package:banking/view/source/authScreens/forget.2.dart';
import 'package:banking/view/source/authScreens/forget_password.dart';
import 'package:banking/view/source/authScreens/sign_in_Screen.dart';
import 'package:banking/view/source/authScreens/sign_up_Screen.dart';
import 'package:flutter/material.dart';
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
      home:Forget_2(),
    );
  }
}
