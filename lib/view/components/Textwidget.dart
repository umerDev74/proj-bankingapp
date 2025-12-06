import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SigninText extends StatelessWidget {
  final String signtext;
  final Color color;
  const SigninText({super.key, required this.signtext,required this.color});

  @override
  Widget build(BuildContext context) {
    return Text(signtext,style: GoogleFonts.poppins(fontSize: 20,color: color,fontWeight: FontWeight.w600),);
  }
}
