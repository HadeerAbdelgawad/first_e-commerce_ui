import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:untitled1/core/resources/app_images.dart';
import 'package:untitled1/features/HomeNav/screens/Category/category.dart';
import 'package:untitled1/features/HomeNav/screens/Home/HomeScreen.dart';
import 'package:untitled1/features/HomeNav/screens/Profile/profile.dart';
import 'package:untitled1/features/HomeNav/screens/cart/cardView.dart';
import 'package:untitled1/features/HomeNav/screens/orders/view.dart';

class HomeNavScreen extends StatefulWidget{
  const HomeNavScreen({super.key});

  @override
  State<HomeNavScreen> createState()=> _HomeNavScreenState();
}

class _HomeNavScreenState extends State<HomeNavScreen>{
  int currentIndex=0;
  List<Widget>screens=[
    Homescreen(),
    CategoryScreen(),
    CartView(),
    OrderView(),
    ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
        
        bottomNavigationBar: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(topRight: Radius.circular(30),topLeft: Radius.circular(30)),
            border: Border.all(color: Color(0xffE9E9E9), width: 1),

          ),
          child: ClipRRect(
            borderRadius: BorderRadius.only(topRight: Radius.circular(30),topLeft: Radius.circular(30)),

            child: BottomNavigationBar(
              backgroundColor: Colors.white,
              items: [
                BottomNavigationBarItem( icon:SvgPicture.asset(AppImages.homeImage,
                colorFilter: ColorFilter.mode(currentIndex==0?Color(0xffFF5E00):Color(0xff6D3805),BlendMode.srcIn),),
                label: 'Shop'),
                BottomNavigationBarItem( icon:SvgPicture.asset(AppImages.searchImage,
                colorFilter: ColorFilter.mode(currentIndex==1? Color(0xffFF5E00):Color(0xff6D3805),BlendMode.srcIn)),
                label: 'Explore'),
            
                BottomNavigationBarItem( icon:SvgPicture.asset(AppImages.cartImage,
                colorFilter: ColorFilter.mode(currentIndex==2?Color(0xffFF5E00):Color(0xff6D3805),BlendMode.srcIn))
                , label: 'Cart'),

                BottomNavigationBarItem( icon:Icon(Icons.library_books_sharp)
                    , label: 'Order'),

                // BottomNavigationBarItem( icon:SvgPicture.asset(AppImages.favImage, colorFilter: ColorFilter.mode(currentIndex==3?Color(0xffFF5E00):Color(0xff6D3805),BlendMode.srcIn), semanticsLabel: 'Favorite'),
                BottomNavigationBarItem( icon:SvgPicture.asset(AppImages.accountImage,
                colorFilter: ColorFilter.mode(currentIndex==4?Color(0xffFF5E00):Color(0xff6D3805),BlendMode.srcIn))
                , label: 'Account')
            
            
              ],
              type: BottomNavigationBarType.fixed,
              elevation: 0,
              selectedFontSize: 12,
              unselectedFontSize: 10,
            
              onTap:
                  (value) {
                setState(() {
                  currentIndex = value;
                });
              },
            
              currentIndex: currentIndex,
              selectedItemColor: Color(0xffFF5E00),
              unselectedItemColor: Color(0xff6D3805),
            
            
            ),
          ),
        ),

      body:screens[currentIndex]
    );
  }
}