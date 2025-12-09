import 'package:banking/view/components/Textwidget.dart';
import 'package:banking/view/components/back_icon.dart';
import 'package:banking/view/components/forget_text.dart';
import 'package:banking/view/components/textButton-widget.dart';
import 'package:banking/view/utills/constants/AppColors.dart';
import 'package:flutter/material.dart';

class OkScreen extends StatefulWidget {
  const OkScreen({super.key});

  @override
  State<OkScreen> createState() => _OkScreenState();
}

class _OkScreenState extends State<OkScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: App_Colors.secondrycolor,
      appBar: AppBar(
        backgroundColor: App_Colors.secondrycolor,
        //title: BackIcon(backicon: Icons.arrow_back_ios, iconColor: App_Colors.neutralcolor),
      ),
      body: Column(children: [
        SizedBox(height:20,),
        Center(
          child: Container(
            height: 300,width: 300,
            decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage('assets/images/authImage/ok.png')),
            ),
          ),
        ),
        SizedBox(height: 30,),
        SigninText(signtext: 'Change password sucessfully!', color: App_Colors.primarycolor),
        SizedBox(height: 20,),
        ForgetText(forget_text: 'you have sucessfully change password.\nplease use the new password when sign in.', color: App_Colors.neutralcolor),
        SizedBox(height: 30,),
        Center(
          child: Container(
              height: 45,width: 280,
              decoration: BoxDecoration(
                color: App_Colors.primarycolor,
                borderRadius: BorderRadius.circular(30),
              ),
              child: Text_button(text: 'OK',tcolor: App_Colors.secondrycolor,)),
        ),
      ],),
    );
  }
}
