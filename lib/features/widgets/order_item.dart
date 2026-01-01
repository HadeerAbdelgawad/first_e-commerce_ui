
import 'package:flutter/material.dart';
import 'package:untitled1/core/resources/app_colors.dart';

class OrderItem extends StatelessWidget{
   OrderItem ({super.key,
  required this.orderNumber,
  required this.orderStatus,
  required this.orderDate,
  this.isGreen=true, required this.orderPrice});

  final String orderNumber;
  final String orderPrice;
  final String orderStatus;
  final String orderDate;
  bool isGreen;


  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),

          child: ListTile(
            title:Text('Order $orderNumber',
                style: TextStyle(fontSize: 18 ,
                    fontWeight: FontWeight.w700,
                    color:Color(0xff804F1E)
                )
            ),

            subtitle: Column(
              children: [
                Text(orderStatus,
                    style: TextStyle(fontSize: 14 ,
                        fontWeight: FontWeight.w400,
                        color:isGreen?Color(0xff5EC401):Color(0xffF2110D),
                    ),
                ),
                Text(orderDate,
                    style: TextStyle(fontSize: 14 ,
                        fontWeight: FontWeight.w400,
                        color:Color(0xff804F1E),
                    ),),
              ],
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,


            ),
            trailing: Text(orderPrice,
                style: TextStyle(fontSize: 20 ,
                    fontWeight: FontWeight.w700,
                    color:AppColor.primaryColor
                )),

          ),
        ),
        Divider(color: Colors.grey.shade200)


      ],
    );
  }
}