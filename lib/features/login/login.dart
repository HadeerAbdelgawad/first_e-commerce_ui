import 'package:flutter/material.dart';
import 'package:untitled1/features/HomeNav/home_nav.dart';
import 'package:untitled1/features/widgets/custom_password_field.dart';

import '../../../core/resources/app_field.dart';
import '../Signup/signup.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {

    final myColor=Color(0xffFF5E00);
    return Scaffold(
      backgroundColor: Colors.white,

      appBar: AppBar(
        elevation: 0,
       forceMaterialTransparency: true,

        backgroundColor: Colors.white,
          leading: SizedBox.shrink(),
          title: Text('Sign In',
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
              child:Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,

                children: [

                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: Image.asset("assets/images/login.png"),
                  ),

                  Text(
                    "Please enter your Email and Password to access your account.",
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w400,
                        color: Color(0xff6D3805)),
                  ),

                  SizedBox(height: 12),

                  AppField(myColor: myColor, hintText: 'Email', endIcon: SizedBox(),),

                  SizedBox(height: 12),


                  CustomPasswordField(hint: 'Password',),

                  SizedBox(height: 12),

                  Text(
                    "Forget Password",
                    textAlign: TextAlign.end,
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: myColor),
                  ),

                  SizedBox(height: 35,),

                  ElevatedButton(
                    style:ElevatedButton.styleFrom(
                    backgroundColor:myColor,
                    fixedSize: Size(343,50),

                  ),
                    onPressed: (){},
                      child:GestureDetector(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(builder: (context) {return HomeNavScreen(); } ));
                        },
                        child: Text('Sign in',
                        style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.w400,
                            color: Colors.white),
                                          ),
                      ) ),

                  SizedBox(height: 15,),

                  Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                    children: [

                      Text(
                        "Don't have an account? ",
                        textAlign:TextAlign.center,
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: Color(0xff6D3805)),
                      ),

                      GestureDetector(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(builder: (context) {return SignupScreen(); }) );
                        },
                        child: Text(
                          "Sign Up",
                          textAlign:TextAlign.center,
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              color: myColor),
                        ),
                      ),
                    ],
                  )

                ],

              ),




          ),



        )

    );
  }
}

