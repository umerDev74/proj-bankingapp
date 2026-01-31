import 'package:banking/view/utills/constants/AppColors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PasswordTextformfield extends StatefulWidget {

 final String hint_password;
  final Color hint_pcolor;
  final Color style;
  final TextEditingController controller;

  const PasswordTextformfield({super.key,required this.hint_password,required this.controller,this.style=Colors.black54,this.hint_pcolor=Colors.black54});

  @override
  State<PasswordTextformfield> createState() => _PasswordTextformfieldState();
}

class _PasswordTextformfieldState extends State<PasswordTextformfield> {
  bool isSecure=true;
  @override
  Widget build(BuildContext context) {
    return
      Container(
        decoration: BoxDecoration(
          border: Border.all(),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 12),
          child: TextFormField(
            obscureText: isSecure,
            style: TextStyle(color: App_Colors.neutralcolor),
            decoration: InputDecoration(
             hintText:  widget.hint_password,
              hintStyle: GoogleFonts.poppins(color: App_Colors.neutralcolor),
              border: InputBorder.none,
              suffixIcon: IconButton(onPressed: ()
              {
              //  isSecure=true;
                  if(isSecure==true)
                    {
                      setState(() {
                        isSecure=false;
                      });
                    }
                  else
                    {
                      setState(() {
                        isSecure=true;
                      });
                    }
              }, icon: Icon(isSecure==true?Icons.visibility_off:Icons.visibility),)
            ),
          ),
        ),
      );
  }
}