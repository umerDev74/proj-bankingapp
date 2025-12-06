import 'package:flutter/material.dart';

class password_form extends StatelessWidget {
  final String hintpassword;
  final Color hint_pcolor;
  final Color style;
  final TextEditingController controller;
  final FontWeight fontWeight;
  const password_form({super.key,required this.hintpassword,required this.controller,
  required this.fontWeight,this.hint_pcolor=Colors.black54,this.style=Colors.black54});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextFormField(
      style: TextStyle(color: style),
        decoration: InputDecoration(
          hintText: hintpassword,

        ),
      ),
    );
  }
}
