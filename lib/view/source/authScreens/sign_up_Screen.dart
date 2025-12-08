import 'package:banking/view/components/Textwidget.dart';
import 'package:banking/view/components/headingtext.dart';
import 'package:banking/view/components/name_controller.dart';
import 'package:banking/view/components/password_textformfield.dart';
import 'package:banking/view/components/small_text.dart';
import 'package:banking/view/components/textButton-widget.dart';
import 'package:banking/view/components/textformfield_widget.dart';
import 'package:banking/view/utills/constants/AppColors.dart';
import 'package:flutter/material.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  TextEditingController namecontroller=TextEditingController();
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
          SigninText(signtext: 'sign up', color: App_Colors.secondrycolor),
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
            padding: const EdgeInsets.all(12.0),
            child: SingleChildScrollView(scrollDirection: Axis.vertical,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 20,),
                Haedingtext(headingtext: 'Welcome to us', headingcolor: App_Colors.primarycolor),
                  SmallText(smalltext: 'Hello there, create New account', smalltextcolor: App_Colors.neutralcolor),
                  SizedBox(height: 30,),
                  Center(
                    child: Container(
                      height: 150,width: 310,
                      decoration: BoxDecoration(
                        image: DecorationImage(image: AssetImage('assets/images/authImage/signup.png')),
                      ),
                    ),
                  ),
                  SizedBox(height: 20,),
                  NameController(namehint: 'Name', controller: namecontroller),
                  SizedBox(height: 10,),
                  textformfield(controller: hintcontroller, hintText: 'Text input', fontWeight: FontWeight.w500),
                 SizedBox(height: 10,),
                  password_form(hintpassword: 'password', controller: passwordcontroller, fontWeight: FontWeight.w500, iconcolor: Colors.green, icon: Icons.visibility_off),
                  SizedBox(height: 25,),
                  Row(
                    children: [
                      Container(
                        height: 25,width: 25,
                       decoration: BoxDecoration(
                         color: Colors.white24,
                         border: Border.all(),
                       ),
                      ),
                      SizedBox(width: 20,),
                      Text('by creating an account your aggree to our \nTerm And Condition ....',
                      style: TextStyle(color: App_Colors.neutralcolor),),
                    ],
                  ),
                  SizedBox(height: 40,),
                  Center(child: Container(
                      height: 40,width: 250,
                      decoration: BoxDecoration(
                          color: App_Colors.primarycolor,
                          borderRadius: BorderRadius.circular(20)
                      ),
                      child: Text_button(text: 'sign up',tcolor: App_Colors.secondrycolor,))),
                  SizedBox(height: 10,),
                  Padding(
                    padding: const EdgeInsets.only(left: 70),
                    child: Row(
                      children: [
                        SmallText(smalltext: 'Have an account?', smalltextcolor: App_Colors.neutralcolor),
                        Text_button(text: 'sign in',tcolor: App_Colors.primarycolor,)
                      ],
                    ),
                  ),

              ],),
            ),
          ),
        )
      ],),
    );
  }
}
