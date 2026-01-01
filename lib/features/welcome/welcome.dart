
import 'package:flutter/material.dart';
import 'package:untitled1/features/Login/login.dart';
import 'package:untitled1/features/Signup/signup.dart';

class WelcomeScreen extends StatelessWidget{
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final myColor=Color(0xffFF5E00);
    return Scaffold(
        backgroundColor: Colors.white,

      body:
        Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [

              Padding(
                padding: const EdgeInsets.only(top:40),
                child: Image.asset("assets/images/welcome.png", width: 329,),
              ),

              SizedBox(height: 45,),

              Text(
                "welcome to our app",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w400,
                    color: Color(0xff7F4E1D)),
              ),

              SizedBox(height: 15,),

              Text(
                "Shop online and get groceries \ndelivered from stores to your home \nin as fast as 1 hour .",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: Color(0xff7F4E1D)),
              ),

              SizedBox(height: 55,),

              ElevatedButton(
                  style:ElevatedButton.styleFrom(
                    backgroundColor:myColor,
                    fixedSize: Size(343,50),

                  ),
                  onPressed: (){
                    Navigator.of(context).push(MaterialPageRoute(builder: (context)
                    {return SignupScreen();
                    }
                    ));
                  },
                  child:Text('Sign up',
                    style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w400,
                        color: Colors.white),
                  ) ),

              SizedBox(height: 12,),

              ElevatedButton(
                  style:ElevatedButton.styleFrom(
                    backgroundColor:Colors.white,
                    fixedSize: Size(343,50),
                    side:BorderSide(width: 1, color: myColor),

                  ),
                  onPressed: (){
                    Navigator.of(context).push(MaterialPageRoute(builder: (context)
                    {return LoginScreen();
                    }
                    ));
                  },
                  child:Text('Sign in',
                    style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w400,
                        color: myColor),
                  ) ),


            ]

          ),
        )
    );
  }}