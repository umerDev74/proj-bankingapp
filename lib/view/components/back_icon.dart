import 'package:flutter/material.dart';

class BackIcon extends StatelessWidget {
  
  final IconData backicon;
  final Color iconColor;
  const BackIcon({super.key,required this.backicon,required this.iconColor});

  @override
  Widget build(BuildContext context) {
    return Icon(backicon,color: iconColor,);
  }
}
