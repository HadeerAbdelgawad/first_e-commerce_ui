import 'package:flutter/material.dart';
import 'package:untitled1/core/resources/app_images.dart';

class DealsItem extends StatelessWidget{
   DealsItem({super.key,
    required this.dealImage,
    required this.dealTitle,
    required this.dealWeight,
    required this.dealPricing,

  });

  final String dealImage;
  final String dealTitle;
  final String dealWeight;
  final String dealPricing;


  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      margin:EdgeInsetsGeometry.all(8) ,
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
      decoration: BoxDecoration(
        borderRadius:BorderRadius.circular(20),
        color: Colors.white,
        boxShadow:[BoxShadow(
            color: Color(0xffC4C4C4),
            spreadRadius: 0 ,
            blurRadius: 13 ,
            offset: Offset(0, 0))],

      ),
      child:Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [

          Expanded(child: Image.asset(dealImage, width: 120)),
          Text(dealTitle,
            style: TextStyle(fontSize: 15,
                fontWeight: FontWeight.w700,
                color: Color(0xff6D3805)),),

          Text(dealWeight,
            style: TextStyle(fontSize: 12,
                fontWeight: FontWeight.w400,
                color: Color(0xff929292)),),

          SizedBox(height: 15,),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(dealPricing,
                style: TextStyle(fontSize: 20,
                    fontWeight: FontWeight.w700,
                    color: Color(0xffFF5E00)),
              ),
              CircleAvatar(
                radius: 12,
                backgroundColor: Color(0xff3AA14C),
                child:Icon(Icons.add, color: Colors.white,size: 20,),
              )

            ],)

        ],
      ),);
  }
}