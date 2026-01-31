import 'package:banking/view/components/Textwidget.dart';
//import 'package:banking/view/components/back_icon.dart';
import 'package:banking/view/components/password_textformfield.dart';
import 'package:banking/view/components/small_text.dart';
import 'package:banking/view/components/textButton-widget.dart';
import 'package:banking/view/source/authScreens/ok_screen.dart';
import 'package:banking/view/utills/constants/AppColors.dart';
import 'package:flutter/material.dart';

class ChangePassword extends StatefulWidget {
  const ChangePassword({super.key});

  @override
  State<ChangePassword> createState() => _ChangePasswordState();
}

class _ChangePasswordState extends State<ChangePassword> {
  TextEditingController changecontroller=TextEditingController();
  TextEditingController confirmcontroller=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: App_Colors.secondrycolor,
      appBar: AppBar(
        backgroundColor: App_Colors.secondrycolor,
        title: Row(children: [
          //BackIcon(backicon: Icons.arrow_back_ios, iconColor: App_Colors.neutralcolor),
          SizedBox(width: 10,),
          SigninText(signtext: 'Change password', color: App_Colors.neutralcolor),
        ],),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          SizedBox(height: 50,),
          SmallText(smalltext: 'Type your new password', smalltextcolor: App_Colors.neutralcolor),
          SizedBox(height: 20,),
          PasswordTextformfield(hint_password: 'New password', controller: changecontroller),
         // password_form(hintpassword: 'New password', controller: changecontroller, fontWeight: FontWeight.w500, iconcolor: App_Colors.neutralcolor, icon: Icons.visibility),
            SizedBox(height: 20,),
            SmallText(smalltext: 'Confirm password', smalltextcolor: App_Colors.neutralcolor),
            SizedBox(height: 20,),
           PasswordTextformfield(hint_password: 'New password', controller: confirmcontroller),
           // password_form(hintpassword: 'New password', controller: confirmcontroller, fontWeight: FontWeight.w500, iconcolor: App_Colors.neutralcolor, icon: Icons.visibility),
            SizedBox(height: 50,),
            Center(
              child: Container(
                  height: 45,width: 280,
                  decoration: BoxDecoration(
                    color: App_Colors.primarycolor,
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: InkWell(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>OkScreen()));
                      },
                      child: Text_button(text: 'Chang password',tcolor: App_Colors.secondrycolor,))),
            ),
          ],),
      ),
    );
  }
}
