import 'package:banking/view/components/Textwidget.dart';
import 'package:banking/view/components/forget_text.dart';
import 'package:banking/view/components/num_controller.dart';
import 'package:banking/view/components/small_text.dart';
import 'package:banking/view/components/textButton-widget.dart';
import 'package:banking/view/utills/constants/AppColors.dart';
import 'package:flutter/material.dart';

class ForgetPassword extends StatefulWidget {
  const ForgetPassword({super.key});

  @override
  State<ForgetPassword> createState() => _ForgetPasswordState();
}

class _ForgetPasswordState extends State<ForgetPassword> {
  TextEditingController numcontroller=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: App_Colors.secondrycolor,
      appBar: AppBar(
        backgroundColor: App_Colors.secondrycolor,
        title: Row(children: [
          Icon(Icons.arrow_back_ios,color: Colors.black,),
          SizedBox(width: 10,),
          SigninText(signtext: 'Forget password', color: App_Colors.neutralcolor)
        ],),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          SizedBox(height: 50,),
          SmallText(smalltext: 'Type your phone number', smalltextcolor: App_Colors.neutralcolor),
          SizedBox(height: 30,),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: NumController(num_hint: '  (+92)', controller: numcontroller),
          ),
            ForgetText(forget_text: 'we texted you a code to verify your\nphone number', color: App_Colors.neutralcolor),
            SizedBox(height: 30,),
            Center(
              child: Container(
                height: 50,width: 200,
                  decoration: BoxDecoration(
                    color: App_Colors.primarycolor,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Text_button(text: 'send',tcolor: App_Colors.secondrycolor,)),
            )

        ],),
      ),
    );
  }
}
