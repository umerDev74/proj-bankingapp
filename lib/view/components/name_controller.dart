import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NameController extends StatelessWidget {

  final String namehint;
  final Color hintcolor;
  final Color style;
  final TextEditingController controller;
  const NameController({super.key,required this.namehint,required this.controller,
  this.hintcolor=Colors.black54,
  this.style=Colors.black54});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border: Border.all(),
          borderRadius: BorderRadius.circular(10)
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 12),
        child: TextFormField(
          style: TextStyle(color: style,),
          decoration: InputDecoration(
            hintText: namehint,
            border: InputBorder.none,
            hintStyle:GoogleFonts.poppins(color: hintcolor),
          ),
        ),
      ),
    );
  }
}
