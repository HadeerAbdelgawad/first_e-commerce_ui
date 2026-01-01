
import 'package:flutter/material.dart';
class AppField extends StatelessWidget {
  const AppField({
    super.key,
    required this.myColor,
     this.obsecureText=false,
    required this.hintText, required this.endIcon,
  });

  final Color myColor;
  final bool obsecureText;
  final String hintText;
  final Widget endIcon;


  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: obsecureText,
      decoration: InputDecoration(
        filled: true,
        suffixIcon: endIcon,
        fillColor: Color(0xffF3F3F3),
        focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: myColor)
        ),

        enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color:Colors.transparent)
        ),
        errorBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.red)
        ),

        hintText: hintText,
      ),
    );
  }
}