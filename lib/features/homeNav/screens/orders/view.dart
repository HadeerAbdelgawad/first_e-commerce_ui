

import 'package:flutter/material.dart';
import 'package:untitled1/features/widgets/order_item.dart';

class OrderView extends StatelessWidget{
  OrderView ({super.key,});


  List<String>orderNumber=['#345', '#346', '#;347'];
  List<String>orderStatus=['Delivered', 'Cancelled', 'Delivered'];
  List<String>orderDate=['October 26, 2014', 'October 14, 2016', 'July 26, 2017'];
  List<bool>isGreen=[true,false,true];
  List<String>orderPrice=[r'$700',r'$452', r'$281' ];


  @override
  Widget build(BuildContext context) {
    final primaryColor= Color(0xffFF5E00);


  return DefaultTabController(
    length: 2,

    child: Scaffold(
      backgroundColor: Colors.white,
      appBar:AppBar(
        leading: SizedBox.shrink(),
        backgroundColor: Colors.white,
        centerTitle: true,
        title:Text(
          "Orders",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 24,
            color: primaryColor
          ),
        ),
        bottom: TabBar(
          dividerColor: Colors.grey.shade300,
          indicatorWeight: 4,
          indicatorColor: primaryColor,
          indicatorSize: TabBarIndicatorSize.label,
          labelStyle:TextStyle(
            fontSize:20,
            fontWeight: FontWeight.w400,
            color:primaryColor,
          ),
          unselectedLabelStyle:TextStyle(
              fontSize:20,
              fontWeight: FontWeight.w400,
              color:Color(0xff6D3805),
          ),
          tabs:[
            Tab(text:"Ongoing"),
            Tab(text:"History"),
          ],

        ),
    
      ),

      body:
        ListView.builder(
          itemCount: orderNumber.length,
          itemBuilder:
        (context, index) {
          return OrderItem(
              orderNumber: orderNumber[index],
              isGreen: isGreen[index],
              orderStatus: orderStatus[index],
              orderDate: orderDate[index],
              orderPrice: orderPrice[index],
          );

        },
        ),


        ),

  );

}}