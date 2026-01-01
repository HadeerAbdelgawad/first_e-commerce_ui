import 'package:flutter/material.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({super.key, this.showBackButton=false});

  final bool showBackButton;

  @override
  Widget build(BuildContext context) {
    final myColor = Color(0xffFF5E00);

    return Scaffold(
      backgroundColor: Colors.white,


      appBar: AppBar(
        backgroundColor: Colors.white,
        title:Text(
          'Categories',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.w700,
            color: myColor,
          ),
        ),

          centerTitle: true,
          leading: showBackButton?GestureDetector(
              onTap: () => Navigator.of(context).pop(context),
              child: Icon(Icons.arrow_back_ios_new,color: Colors.orange,)):SizedBox.shrink(),
        ),


      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: TextFormField(
                decoration: InputDecoration(
                  filled: true,
                  prefixIcon: Icon(
                    Icons.search,
                    color: Color(0xff6D38057D),
                  ),
                  fillColor: Color(0xffF3F3F3),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: myColor),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.transparent),
                  ),
                  hintText: "Search",
                ),
              ),
            ),

            SizedBox(height: 40),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    CircleAvatar(
                      radius: 55,
                      backgroundColor: Color(0xffEDD0FF),
                      child: Image.asset('assets/images/category1.png'),
                    ),
                    SizedBox(height: 12),
                    Text(
                      "Fruits",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w400,
                        color: Color(0xff6D3805),
                      ),
                    ),
                  ],
                ),

                SizedBox(width: 23),

                Column(
                  children: [
                    CircleAvatar(
                      radius: 55,
                      backgroundColor: Color(0xffFFD9BA),
                      child: Image.asset('assets/images/category2.png'),
                    ),
                    SizedBox(height: 12),
                    Text(
                      "Vegtables",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w400,
                        color: Color(0xff6D3805),
                      ),
                    ),
                  ],
                ),

                SizedBox(width: 23),

                Column(
                  children: [
                    CircleAvatar(
                      radius: 55,
                      backgroundColor: Color(0xffFFD9BA),
                      child: Image.asset('assets/images/category3.png'),
                    ),
                    SizedBox(height: 12),
                    Text(
                      "Meat",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w400,
                        color: Color(0xff6D3805),
                      ),
                    ),
                  ],
                ),
              ],
            ),

            SizedBox(height: 40),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    CircleAvatar(
                        radius: 55,
                        backgroundColor: Color(0xffFBC1BD),
                        child:Image.asset('assets/images/category4.png') ),
                    SizedBox(height: 12,),
                    Text(
                      "Fish",
                      style:
                      TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w400,
                          color: Color(0xff6D3805)),
                    ),
                  ],
                ),

                SizedBox(width: 23,),

                Column(
                  children: [
                    CircleAvatar(
                        radius: 55,
                        backgroundColor: Color(0xffFFE299),
                        child:Image.asset('assets/images/category5.png') ),
                    SizedBox(height: 12,),
                    Text(
                      "Sea food",
                      style:
                      TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w400,
                          color: Color(0xff6D3805)),
                    ),
                  ],
                ),

                SizedBox(width: 23,),

                Column(
                  children: [
                    CircleAvatar(
                        radius: 55,
                        backgroundColor: Color(0xffD3E5C4),
                        child:Image.asset('assets/images/category6.png')
                    ),

                    SizedBox(height: 12,),

                    Text(
                      "Juice",
                      style: TextStyle( fontSize: 15, fontWeight: FontWeight.w400, color: Color(0xff6D3805)),
                    ),
                  ],
                ),
              ],
            ),

            SizedBox(height: 40,),


                  Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
                  children: [
        CircleAvatar(
                  radius: 55,
          backgroundColor: Color(0xffDAF2FC),
          child:Image.asset('assets/images/category7.png') ),

            SizedBox(height: 12,),

            Text( "Egg & Milk",
              style:
              TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                  color: Color(0xff6D3805)),
            ),
          ],
        ),

        SizedBox(width: 23,),

        Column(
          children:
          [
            CircleAvatar(
                radius: 55,
                backgroundColor: Color(0xffFFDEF6),
                child:Image.asset('assets/images/category8.png') ),

            SizedBox(height: 12,),

            Text(
              "Ice cream",
              style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                  color: Color(0xff6D3805)),
            ),
          ],
        ),

        SizedBox(width: 23,),

        Column(

          children: [
            CircleAvatar(
                radius: 55,
                backgroundColor: Color(0xffFECA97),
                child:Image.asset('assets/images/category9.png') ),

            SizedBox(height: 12,),

            Text(
              "Cake",
              style:
              TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                  color: Color(0xff6D3805)),
            ),],
                  ),
                  ],
            ),
            ],
          ),
    ),
    );
  }
}