import 'package:flutter/material.dart';
import 'package:untitled1/core/resources/app_field.dart';
import 'package:untitled1/features/widgets/custom_password_field.dart';

import '../Login/login.dart';

class SignupScreen extends StatelessWidget{
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context){
    final myColor=Color(0xffFF5E00);
    return Scaffold(
      backgroundColor: Colors.white,

      appBar:AppBar(

        elevation: 0,
        forceMaterialTransparency: true,
        backgroundColor: Colors.white,
        leading:GestureDetector(
            onTap: () {
              Navigator.of(context).pop(context);
            },
            child: Icon(Icons.arrow_back_ios_new, color:myColor)),
        title: Text('Sign Up',
          style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w400,
              color: myColor),
        ),
        centerTitle:true,
      ),



      body: SingleChildScrollView(
        child:Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [

            Padding(
              padding: const EdgeInsets.all(20),
              child: Image.asset("assets/images/login.png"),
            ),

            Text(
              "Please enter your information to \ncreate an account.",
              style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.w400,
                  color: Color(0xff6D3805)),
            ),

            SizedBox(height: 12),


            AppField(myColor: myColor, hintText: 'Name', endIcon: SizedBox(),),


            SizedBox(height: 12),

            AppField(myColor: myColor, hintText: 'Email', endIcon: SizedBox(),),
            // TextFormField(
            //   decoration: InputDecoration(
            //       filled: true,
            //       fillColor: Color(0xffF3F3F3),
            //       focusedBorder: OutlineInputBorder(
            //           borderSide: BorderSide(color: myColor)
            //       ),
            //       enabledBorder: OutlineInputBorder(
            //           borderSide: BorderSide(color:Colors.transparent)
            //       ),
            //       hintText: "Email"
            //   ),
            // ),

            SizedBox(height: 12),

            CustomPasswordField(hint: 'Password'),
            // TextFormField(
            //   decoration: InputDecoration(
            //       filled: true,
            //       suffixIcon: Icon(
            //         Icons.remove_red_eye,
            //         color: myColor,
            //       ),
            //       fillColor: Color(0xffF3F3F3),
            //       focusedBorder: OutlineInputBorder(
            //           borderSide: BorderSide(color: myColor)
            //       ),
            //
            //       enabledBorder: OutlineInputBorder(
            //           borderSide: BorderSide(color:Colors.transparent)
            //       ),
            //
            //       hintText: "Password"
            //   ),
            // ),

            SizedBox(height: 12),

            CustomPasswordField(hint: 'Confirm Password'),
            // TextFormField(
            //   decoration: InputDecoration(
            //       filled: true,
            //       suffixIcon: Icon(
            //         Icons.remove_red_eye,
            //         color: myColor,
            //       ),
            //       fillColor: Color(0xffF3F3F3),
            //       focusedBorder: OutlineInputBorder(
            //           borderSide: BorderSide(color: myColor)
            //       ),
            //
            //       enabledBorder: OutlineInputBorder(
            //           borderSide: BorderSide(color:Colors.transparent)
            //       ),
            //
            //       hintText: "Confirm Password"
            //   ),
            // ),

            SizedBox(height: 35,),

            ElevatedButton(
                style:ElevatedButton.styleFrom(
                  backgroundColor:myColor,
                  fixedSize: Size(343,50),
                ),
                onPressed: (){
                  Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) {return LoginScreen(); } ));

                },
                child:Text('Sign in',
                  style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.w400,
                      color: Colors.white),
                ) ),


          ],

            ),
      ),
      ),

    );

  }
}