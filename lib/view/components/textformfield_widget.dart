import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class textformfield extends StatelessWidget {
final String hintText;
final Color hintcolor;
final Color style;
final FontWeight fontWeight;
final TextEditingController controller;
  const textformfield({super.key,required this.controller,required this.hintText,
  required this.fontWeight,
  this.hintcolor=Colors.black54,
  this.style=Colors.black54});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(),
          borderRadius: BorderRadius.circular(10)
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 12),
          child: TextFormField(
            style: TextStyle(color: style,),
            decoration: InputDecoration(
              hintText: hintText,
              border: InputBorder.none,
              hintStyle:GoogleFonts.poppins(color: hintcolor),
            ),
          ),
        ),
      ),
    );
  }
}
