import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Haedingtext extends StatelessWidget {

  final String headingtext;
  final Color headingcolor;
  const Haedingtext({super.key,required this.headingtext,required this.headingcolor});

  @override
  Widget build(BuildContext context) {
    return Text(headingtext,style: GoogleFonts.poppins(fontSize: 24,color: headingcolor,fontWeight: FontWeight.w600),);
  }
}
