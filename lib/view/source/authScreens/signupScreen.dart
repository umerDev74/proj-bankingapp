import 'package:banking/view/components/Textwidget.dart';
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
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
            SizedBox(height: 20,),
            Haedingtext(headingtext: 'Welcome Back', headingcolor: App_Colors.primarycolor,),
            SmallText(smalltext: 'Hello there, sign in to continue', smalltextcolor: App_Colors.neutralcolor,),
              SizedBox(height: 10,),
              Center(
                child: Container(
                  height: 120,width: 310,
                  decoration: BoxDecoration(
                    image: DecorationImage(image: AssetImage('assets/images/authImage/auth1.png')),
                  ),
                ),
              ),
              SizedBox(height: 50,),
              textformfield(controller: hintcontroller, hintText: 'Enter Email', fontWeight: FontWeight.w500,),
          ],),
         ),
        ),
      ],),
    );
  }
}
