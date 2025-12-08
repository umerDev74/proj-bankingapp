import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NumController extends StatelessWidget {

  final String num_hint;
  final Color hintcolor;
  final Color style;
  final TextEditingController controller;
  const NumController({super.key,required this.num_hint,required this.controller,
  this.hintcolor=Colors.black54,this.style=Colors.black54});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(),
        borderRadius: BorderRadius.circular(10),
      ),
      child: TextFormField(
        style:
        TextStyle(color: style),
        decoration: InputDecoration(
          hintText: num_hint,
          hintStyle: GoogleFonts.poppins(color: hintcolor),
          border: InputBorder.none,
        ),
      ),
    );
  }
}
