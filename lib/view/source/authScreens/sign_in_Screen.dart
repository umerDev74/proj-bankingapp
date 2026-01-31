import 'package:banking/view/components/Textwidget.dart';
import 'package:banking/view/components/password_textformfield.dart';
import 'package:banking/view/components/simpl_button_text.dart';
import 'package:banking/view/components/textButton-widget.dart';
import 'package:banking/view/components/textformfield_widget.dart';
import 'package:banking/view/source/authScreens/forget_password.dart';
import 'package:banking/view/source/authScreens/sign_up_Screen.dart';
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
          SizedBox(width:10,),
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
                PasswordTextformfield(hint_password: 'password', controller: passwordcontroller),
                SizedBox(height: 10,),
                Padding(
                  padding: const EdgeInsets.only(left: 300),
                  child: Container(
                    height: 30,
                    decoration: BoxDecoration(
                      color: App_Colors.primarycolor,
                      borderRadius: BorderRadius.circular(10)
                    ),
                    child: InkWell(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>ForgetPassword()));
                        },
                        child: Center(child: SimplButtonText(text: 'Forgot your password?', tcolor: App_Colors.secondrycolor))),
                  ),
                ),
                // Padding(
                //   padding: const EdgeInsets.only(left: 150),
                //   child: InkWell(
                //       onTap: (){
                //         Navigator.push(context, MaterialPageRoute(builder: (context)=>ForgetPassword()));
                //       },
                //       child: Text_button(text: 'Forgot your password?',tcolor: App_Colors.secondrycolor,)),
                // ),
                SizedBox(height: 20,),
                Center(
                  child: Container(
                      height: 40,width: 250,
                      decoration: BoxDecoration(
                        color: App_Colors.primarycolor,
                        borderRadius: BorderRadius.circular(20)
                      ),
                      // child: InkWell(
                      //   onTap: (){
                      //     Navigator.push(context, MaterialPageRoute(builder: (context)=>SignUpScreen()));
                      //   },
                      //     child: Text_button(text: 'Sign in',tcolor: Colors.white,))
                    child: InkWell(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>SignUpScreen()));
                        },
                        child: Center(child: SimplButtonText(text: 'sign in', tcolor: App_Colors.secondrycolor))),
                  ),
                ),
                SizedBox(height: 30,),
                Padding(
                  padding: const EdgeInsets.only(left: 200),
                  child: Container(
                    height: 80,width: 80,
                    decoration: BoxDecoration(
                      image: DecorationImage(image: AssetImage('assets/icons/authIcons/finger.png'),fit: BoxFit.cover)
                    ),
                  ),
                ),
                SizedBox(height: 9,),
                Padding(
                  padding: const EdgeInsets.only(left: 100),
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



