import 'package:banking/view/components/Textwidget.dart';
import 'package:banking/view/components/back_icon.dart';
import 'package:banking/view/components/forget_text.dart';
import 'package:banking/view/components/num_controller.dart';
import 'package:banking/view/components/small_text.dart';
import 'package:banking/view/components/textButton-widget.dart';
import 'package:banking/view/source/authScreens/change_password.dart';
import 'package:banking/view/utills/constants/AppColors.dart';
import 'package:flutter/material.dart';

class Forget_2 extends StatefulWidget {
  const Forget_2({super.key});

  @override
  State<Forget_2> createState() => _Forget_2State();
}

class _Forget_2State extends State<Forget_2> {

  TextEditingController codecontroller=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: App_Colors.secondrycolor,
      appBar: AppBar(
        backgroundColor: App_Colors.secondrycolor,
        title: Row(
          children: [
            //BackIcon(backicon: Icons.arrow_back_ios, iconColor: App_Colors.neutralcolor),
            SizedBox(width: 15,),
            SigninText(signtext: 'Forgot password', color: App_Colors.neutralcolor),
          ],
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
        SizedBox(height: 20,),
        Padding(
          padding: const EdgeInsets.only(left: 30),
          child: SmallText(smalltext: 'type a code', smalltextcolor: App_Colors.neutralcolor),
        ),
        Padding(
          padding: const EdgeInsets.all(12.0),
          child: Row(
            children: [
              Container(
                  height: 40,
                  width: 200,
                  child: NumController(num_hint: ' code', controller:codecontroller)),
              SizedBox(width: 20,),
              Container(
                  height: 40,width: 100,
                  decoration: BoxDecoration(
                    color: App_Colors.primarycolor,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: InkWell(
                      onTap: (){

                      },
                      child: Text_button(text: 'resend',tcolor: App_Colors.secondrycolor,)))
            ],
          ),
        ),
          SizedBox(height: 20,),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: ForgetText(forget_text: 'We texted you a code to verify your phone number\nThis code will expired 10 minutes\n after this message. If you dont get a message.', color:App_Colors.neutralcolor ),
          ),
          SizedBox(height: 30,),
          Center(
            child: Container(
                height: 45,width: 280,
                decoration: BoxDecoration(
                  color: App_Colors.primarycolor,
                  borderRadius: BorderRadius.circular(30),
                ),
                child: InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>ChangePassword()));
                    },
                    child: Text_button(text: 'Change password',tcolor: App_Colors.secondrycolor,))),
          ),
          SizedBox(height: 20,),
          Center(child: SmallText(smalltext: 'change your phone number', smalltextcolor: App_Colors.primarycolor))
      ],),
    );
  }
}
