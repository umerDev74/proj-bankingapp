import 'package:banking/view/components/Textwidget.dart';
import 'package:banking/view/components/password_textformfield.dart';
import 'package:banking/view/components/textButton-widget.dart';
import 'package:banking/view/components/textformfield_widget.dart';
import 'package:banking/view/utills/constants/AppColors.dart';
import 'package:flutter/material.dart';

import '../../components/headingtext.dart';
import '../../components/small_text.dart';

class Signup_Screen extends StatefulWidget {
  const Signup_Screen({super.key});

  @override
  State<Signup_Screen> createState() => _Signup_ScreenState();
}

class _Signup_ScreenState extends State<Signup_Screen> {
  TextEditingController hintcontroller=TextEditingController();
  TextEditingController passwordcontroller=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: App_Colors.primarycolor,
      appBar: AppBar(
        backgroundColor: App_Colors.primarycolor,
        title: Row(children: [
          Icon(Icons.arrow_back_ios,size: 20,color: App_Colors.secondrycolor,),
          SizedBox(width: 5,),
          SigninText(signtext: 'sign in', color: App_Colors.secondrycolor),
        ],),
      ),
      body: Stack(children: [
        Container(
          width: double.infinity,
          decoration: BoxDecoration(
              color: App_Colors.secondrycolor,
            borderRadius: BorderRadius.only(topLeft: Radius.circular(35),
            topRight: Radius.circular(35)),
          ),
         child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: SingleChildScrollView(scrollDirection: Axis.vertical,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
              Haedingtext(headingtext: 'Welcome Back', headingcolor: App_Colors.primarycolor,),
              SmallText(smalltext: 'Hello there, sign in to continue', smalltextcolor: App_Colors.neutralcolor,),
                SizedBox(height: 30,),
                Center(
                  child: Container(
                    height: 140,width: 310,
                    decoration: BoxDecoration(
                      image: DecorationImage(image: AssetImage('assets/images/authImage/auth1.png')),
                    ),
                  ),
                ),
                SizedBox(height: 30,),
                textformfield(controller: hintcontroller, hintText: 'Enter Email', fontWeight: FontWeight.w500,),
                SizedBox(height: 10,),
                password_form(hintpassword: 'password', controller: passwordcontroller, fontWeight: FontWeight.w500, icon: Icons.visibility_off, iconcolor: Colors.green,),
                Padding(
                  padding: const EdgeInsets.only(left: 150),
                  child: Text_button(text: 'Forgot your password ?',),
                ),
                SizedBox(height: 20,),
                Center(child: Container(
                    height: 40,width: 250,
                    decoration: BoxDecoration(
                      color: App_Colors.primarycolor,
                      borderRadius: BorderRadius.circular(20)
                    ),
                    child: Text_button(text: 'Sign in',tcolor: Colors.white,))),
                SizedBox(height: 30,),
                Padding(
                  padding: const EdgeInsets.only(left: 130),
                  child: Container(
                    height: 80,width: 80,
                    decoration: BoxDecoration(
                      image: DecorationImage(image: AssetImage('assets/icons/authIcons/finger.png'),fit: BoxFit.cover)
                    ),
                  ),
                ),
                SizedBox(height: 9,),
                Padding(
                  padding: const EdgeInsets.only(left: 80),
                  child: Row(
                    children: [
                      SmallText(smalltext: 'Dont have an acount?', smalltextcolor: App_Colors.neutralcolor),
                      SizedBox(width: 10,),
                      Text_button(text: 'signup',tcolor: App_Colors.primarycolor,)
                    ],
                  ),
                )
            ],),
          ),
         ),
        ),
      ],),
    );
  }
}
