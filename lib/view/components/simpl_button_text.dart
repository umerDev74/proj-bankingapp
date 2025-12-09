import 'package:flutter/material.dart';

class SimplButtonText extends StatelessWidget {

  final String text;
  final Color tcolor;
  const SimplButtonText({super.key,required this.text,required this.tcolor});

  @override
  Widget build(BuildContext context) {
    return Text(text,style: TextStyle(color: tcolor),);
  }
}
