import 'package:flutter/material.dart';
import 'package:untitled1/features/Welcome/welcome.dart';

import '../Login/login.dart';
class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
  }

    class _SplashScreenState extends State<SplashScreen> {
      @override
      void initState(){
        Future.delayed(
          Duration(seconds: 5))
          .then((value){
            if(mounted){
              Navigator.of(context).push(
                MaterialPageRoute(builder: (context)=> WelcomeScreen(),)
            );
          }
          });
        super.initState();
      }

      @override
      Widget build(BuildContext context) {
            return Scaffold(
                  backgroundColor: Colors.white,
                body:
                Padding(
                  padding: const EdgeInsets.all(20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                  child: Image.asset("assets/images/landingPageImg.png")),
                ]
            ),
            ),
            );
      }
}
