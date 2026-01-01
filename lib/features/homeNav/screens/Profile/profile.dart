
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled1/features/Login/login.dart';
import 'package:untitled1/features/widgets/notification_switch.dart';

class ProfileScreen extends StatelessWidget{
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final myColor=Color(0xffFF5E00);
    final profileColor= Color(0xff804F1E);
    return Scaffold(
      backgroundColor: Colors.white,

      appBar: AppBar(
        elevation: 0,
        forceMaterialTransparency: true,

        backgroundColor: Colors.white,
        leading: SizedBox.shrink(),
        title: Text('Profile',
          style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w700,
              color: myColor),
        ),
        centerTitle:true,
      ),


      body:(
      Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [

          SizedBox(height: 30,),
          Container(
          child:Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(5),
                  child: Icon(Icons.person, color:profileColor),
                ),

                Text(
                  "Profile",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w400,
                      color: profileColor),
                ),

                Spacer(),

                Padding(
                  padding: const EdgeInsets.all(5),
                  child: Icon(Icons.arrow_forward_ios, color:profileColor),
                ),
              ],
            ),
          ),
          ),

          Container(
            child:Padding(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
              child: Row(
                children: [

                  Padding(
                    padding: const EdgeInsets.all(5),
                    child: Icon(Icons.vpn_key, color:profileColor),
                  ),

                  Text(
                    "Change Password",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w400,
                        color: profileColor),
                  ),

                  Spacer(),

                  Padding(
                    padding: const EdgeInsets.all(5),
                    child: Icon(Icons.arrow_forward_ios, color:profileColor),
                  ),
                ],
              ),
            ),
          ),

          Container(
            child:Padding(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
              child: Row(
                children: [

                  Padding(
                    padding: const EdgeInsets.all(5),
                    child: Icon(Icons.credit_card_rounded, color:profileColor),
                  ),

                  Text(
                    "Change Password",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w400,
                        color: profileColor),
                  ),

                  Spacer(),

                  Padding(
                    padding: const EdgeInsets.all(5),
                    child: Icon(Icons.arrow_forward_ios, color:profileColor),
                  ),
                ],
              ),
            ),
          ),


          SizedBox(height: 12,),

          Padding(
            padding: const EdgeInsets.only(left:20),
            child: Text(
              "App Settings",
              textAlign: TextAlign.start,
              style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.w700,
                  color: myColor),
            ),
          ),

          Container(
            child:Padding(
              padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 8),
              child: Row(
                children: [

                  Padding(
                    padding: const EdgeInsets.all(5),
                    child: Icon(Icons.notifications, color:profileColor),
                  ),

                  Text(
                    "Notifications",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w400,
                        color: profileColor),
                  ),

                  Spacer(),

                  NotificationSwitch()
                ],
              ),
            ),
          ),

          Container(
            child:Padding(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
              child: Row(
                children: [

                  Padding(
                    padding: const EdgeInsets.all(5),
                    child: Icon(Icons.g_translate, color:profileColor),
                  ),

                  Text(
                    "Language",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w400,
                        color: profileColor),
                  ),

                  Spacer(),
                  Text(
                    "English",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: profileColor),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(5),
                    child:
                    Icon(Icons.arrow_forward_ios, color:profileColor),
                  ),
                ],
              ),
            ),
          ),

          GestureDetector(
            onTap:
            () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context)
              {return LoginScreen();
              }
              ));
            },
            child: Container(
              child:Padding(
                padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                child: Row(
                  children: [

                    Padding(
                      padding: const EdgeInsets.all(5),
                      child: Icon(Icons.logout_outlined, color:profileColor),
                    ),


                       Text(
                        "Logout",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w400,
                            color: profileColor),
                      ),




                  ],
                ),
              ),
            ),
          ),

        ],
      )

      )


    );
  }}
