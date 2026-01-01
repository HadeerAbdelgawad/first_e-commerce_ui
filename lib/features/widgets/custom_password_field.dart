import 'package:flutter/material.dart';
import 'package:untitled1/core/resources/app_field.dart';
class CustomPasswordField extends StatefulWidget {
  const CustomPasswordField({super.key,required this.hint
  });
  final String hint;

  @override
  State<CustomPasswordField> createState() => _CustomPasswordFieldState();
}

class _CustomPasswordFieldState extends State<CustomPasswordField> {
  bool isHidden=true;
  @override
  Widget build(BuildContext context) {
    return AppField(
        myColor: Color(0xffFF5E00),
        hintText: widget.hint,
        obsecureText: isHidden ,
        endIcon: GestureDetector(
          onTap:() {
            setState(() {
              isHidden =! isHidden;
            });
          },
          child: isHidden?
                Icon(Icons.visibility_off_sharp , color: Colors.red)
                :Icon(Icons.remove_red_eye, color: Colors.orange,),
        ),


    );
  }
}
