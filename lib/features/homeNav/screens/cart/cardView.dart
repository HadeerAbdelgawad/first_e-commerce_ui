

import 'package:flutter/material.dart';
import 'package:untitled1/core/resources/app_images.dart';
import 'package:untitled1/features/widgets/carts_item.dart';
import 'package:untitled1/features/widgets/category_items.dart';
import 'package:untitled1/features/widgets/deals_item.dart';

class CartView extends StatelessWidget{
  CartView({super.key});


  List<String>cartTitle=['Red Apple', 'Orginal Banana','Avocado Bowl','Salmon' ];
  List<String>cartImage=['assets/images/redApple.png', 'assets/images/banana.png', 'assets/images/avocado.png', 'assets/images/salmon.png'];
  List<int>cartCount=[2,2,1,2];
  List<String>cartPrice=[r'$4,99 kg', r'$5,99 kg', r'$24 st', r'$24 st'];
  List<IconData>cartIncIcon=[Icons.add, Icons.add, Icons.add,Icons.add];
  List<IconData>cartDecIcon=[Icons.remove, Icons.remove, Icons.remove, Icons.remove];



  @override
  Widget build(BuildContext context){
    final primaryColor= Color(0xffFF5E00);

    return Scaffold(

        backgroundColor: Colors.white,


        appBar:AppBar(
          backgroundColor: Colors.white,
          centerTitle: true,
          leading: SizedBox.shrink(),
        title:Text(
          "Cart",
          style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 24,
              color: primaryColor
          ),
        ),

      ),


        body:Column(

            children: [
              Expanded(
                flex: 1,
                child: ListView.builder(
                  itemCount: cartTitle.length,
                  itemBuilder:
                      (context, index) {
                    return CartsItem(
                      cartTitle: cartTitle[index],
                      cartImage: cartImage[index],
                      cartCount: cartCount[index],
                      cartPrice: cartPrice[index],
                      cartIncIcon: cartIncIcon[index],
                      cartDecIcon: cartDecIcon[index],
                    );
                  },),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(onPressed: (){},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: primaryColor,
                      padding: EdgeInsets.symmetric(horizontal: 130, vertical: 10)
                    ),
                    child:Text('CheckOut',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.w700

                    ),),),
              )
            ],
        )








    );

  }

}