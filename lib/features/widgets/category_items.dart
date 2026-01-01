import 'package:flutter/material.dart';
import 'package:untitled1/core/resources/app_images.dart';

class CategoryItems extends StatelessWidget{
  CategoryItems({super.key,
    required this.categoryImg,
    required this.categoryColor,
    required this.categoryTitle,

  });

  final String categoryImg;
  final Color categoryColor;
  final String categoryTitle;


  @override
  Widget build(BuildContext context) {
    return Container(
      margin:EdgeInsetsGeometry.all(8) ,
      child: Column(
      children: [
        CircleAvatar(
          radius: 55,
          backgroundColor: categoryColor,
          child: Image.asset(categoryImg),
        ),
        SizedBox(height: 12),
        Text(
          categoryTitle,
          style: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.w400,
            color: Color(0xff6D3805),
          ),
        ),
      ],
    ),);
  }
}