import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ForgetText extends StatelessWidget {

  final String forget_text;
  final Color color;
  const ForgetText({super.key,required this.forget_text,required this.color});

  @override
  Widget build(BuildContext context) {
    return Text(forget_text,style: GoogleFonts.poppins(fontSize: 14,color: color,fontWeight: FontWeight.w500),);
  }
}
