

import 'package:flutter/material.dart';
import 'package:untitled1/core/resources/app_images.dart';
import 'package:untitled1/features/HomeNav/screens/orders/view.dart';
import 'package:untitled1/features/widgets/category_items.dart';
import 'package:untitled1/features/widgets/deals_item.dart';

import '../Category/category.dart';

class Homescreen extends StatelessWidget{
   Homescreen({super.key});


  List<String>dealImage=['assets/images/redApple.png', 'assets/images/banana.png','assets/images/banana2.jpg' ];
  List<String>dealTitle=['Red Apple', 'Orginal Banana', 'Po banana'];
  List<String>dealWeight=['1kg,priceg', '1kg,priceg', '1 pcs,priceg'];
  List<String>dealPricing=[r'$ 4,99', r'$ 5,99', r'$ 4,99'];

  List<String>categoryImg=['assets/images/category1.png', 'assets/images/category2.png', 'assets/images/category3.png', 'assets/images/category4.png'];
  List<Color>categoryColor=[Color(0xffEDD0FF),Color(0xffFFD9BA),Color(0xffFFD9BA),Color(0xffFBC1BD)];
  List<String>categoryTitle=['Fruits', 'Vegetables', 'Meat', 'Fish'];


  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Colors.grey.shade100,

      body:
        Column(
          children: [

            Padding(
              padding: const EdgeInsets.symmetric(vertical: 49, horizontal: 10),
              child: Image.asset('assets/images/homePageImg.png'),
            ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Categories',
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 22,
                    color: Color(0xff6D3805)
                  ),),

                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(builder: (context)
                      {return CategoryScreen(showBackButton: true,);
                      }
                      ));

                    },
                    child: Text('see all',
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 18,
                          color: Color(0xffFF5E00)
                      ),),
                  )
                ],
              ),
            ),

            SizedBox(height: 18,),

            SizedBox(
              height: 200,
              child: ListView.builder(scrollDirection: Axis.horizontal,

                itemCount: categoryImg.length,
                itemBuilder:
                    (context, index) {
                  return CategoryItems(
                    categoryImg: categoryImg[index],
                    categoryColor: categoryColor[index],
                    categoryTitle: categoryTitle[index],
                  );
                },),
            ),


            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Popular deals',
                    style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 22,
                        color: Color(0xff6D3805)
                    ),),

                  GestureDetector(
                    onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(builder: (context)
                        {return OrderView();
                        }
                      ));
                    },
                    child: Text('see all',
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 18,
                          color: Color(0xffFF5E00)
                      ),),
                  )
                ],
              ),
            ),

            SizedBox(height: 18,),

            SizedBox(
              height: 200,
              child: ListView.builder(scrollDirection: Axis.horizontal,

                itemCount: dealImage.length,
                itemBuilder:
                    (context, index) {
                  return DealsItem(
                    dealImage: dealImage[index],
                    dealPricing: dealPricing[index],
                    dealTitle: dealTitle[index],
                    dealWeight: dealWeight[index],
                  );
                },),
            ),

          ],
        )

    );
  }

}