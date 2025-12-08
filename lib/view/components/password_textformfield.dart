import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class password_form extends StatelessWidget {
  final String hintpassword;
  final Color hint_pcolor;
  final Color style;
  final IconData icon;
  final Color iconcolor;
  final TextEditingController controller;
  final FontWeight fontWeight;
  const password_form({super.key,required this.hintpassword,required this.controller,
  required this.fontWeight,this.hint_pcolor=Colors.black54,this.style=Colors.black54,
  required this.iconcolor,
  required this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(),
        borderRadius: BorderRadius.circular(10)
      ),
      child:
      Padding(
        padding: const EdgeInsets.only(left: 12),
        child: TextFormField(
        style: TextStyle(color: style),
          decoration: InputDecoration(
            hintText: hintpassword,
            hintStyle: GoogleFonts.poppins(color: hint_pcolor),
            border: InputBorder.none,
            suffixIcon: Icon(icon,color: iconcolor,),
          ),
        ),
      ),
    );
  }
}
