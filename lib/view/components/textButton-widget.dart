import 'package:banking/view/source/authScreens/sign_up_Screen.dart';
import 'package:flutter/material.dart';

class Text_button extends StatelessWidget {
  final String text;
  final Color tcolor;
  const Text_button({super.key,required this.text,this.tcolor=Colors.black54});

  @override
  Widget build(BuildContext context) {
    return TextButton(onPressed: (){
      Navigator.push(context, MaterialPageRoute(builder: (context)=>SignUpScreen()));
    }, child:
    Text(text,style: TextStyle(color: tcolor),));
  }
}
