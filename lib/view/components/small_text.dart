import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SmallText extends StatelessWidget {
  final String smalltext;
  final Color smalltextcolor;
  const SmallText({super.key,required this.smalltext,required this.smalltextcolor});

  @override
  Widget build(BuildContext context) {
    return Text(smalltext,style:GoogleFonts.poppins(fontSize: 12,color: smalltextcolor,fontWeight: FontWeight.w500),);
  }
}
