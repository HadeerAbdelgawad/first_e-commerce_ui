
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:untitled1/core/resources/app_colors.dart';
import 'package:untitled1/core/resources/app_images.dart';


class CartsItem extends StatefulWidget {
   CartsItem ({super.key,
    required this.cartTitle,
    required this.cartImage,
    required this.cartCount,
    required this.cartPrice,
    required this.cartIncIcon,
    required this.cartDecIcon});

    final String cartTitle;
    final String cartImage;
    final int cartCount;
    final String cartPrice;
    final IconData cartIncIcon;
    final IconData cartDecIcon;

  @override
  State<CartsItem> createState() => _CartsItemState();



}

class _CartsItemState extends State<CartsItem> {
  int cartCount=1;
  @override
  void initState(){
    cartCount= widget.cartCount;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5),
      child: Column(
        children: [

          Dismissible(
            key: UniqueKey(),
            background: Container(
              padding: EdgeInsets.only(right: 10),
              decoration: BoxDecoration(
                  color:Color(0xffA42B32)
              ),
              child: Align(
                alignment: Alignment.centerRight,
                child: SvgPicture.asset(AppImages.deleteIcon),
              ),
            )
            ,
            child: ListTile(
              title:Text(widget.cartTitle,
                  style: TextStyle(fontSize: 18 ,
                      fontWeight: FontWeight.w700,
                      color:Color(0xff804F1E)
                  )
              ),
              leading: Image.asset(widget.cartImage,width: 70,),


              subtitle:

              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [

                      Container(
                        width: 90,
                        height: 35,
                        decoration:BoxDecoration(
                          color:Color(0xffF4F4F4),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child:
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            GestureDetector(
                              onTap: (){
                                setState(() {
                                  cartCount++;
                                });
                              },
                              child: CircleAvatar(
                                radius: 10,
                                backgroundColor: Color(0xffFFFFFF),
                                child: Icon(widget.cartIncIcon, color: Color(0xff6D3805),size: 16,),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 12),
                              child: Text("$cartCount",
                                  style: TextStyle(fontSize: 18 ,
                                      fontWeight: FontWeight.w400,
                                      color:Color(0xff804F1E)
                                  )),
                            ),
                            GestureDetector(
                              onTap: (){
                                setState(() {
                                  cartCount>1? cartCount-- :cartCount;
                                });
                              },
                              child: CircleAvatar(
                                radius: 10,
                                backgroundColor: Color(0xffFFFFFF),
                                child: Icon(widget.cartDecIcon, color: Color(0xff6D3805),size: 16,),
                              ),
                            ),
                          ],
                        ),



                      ),

                      Text(r'$4,99 kg',
                          style: TextStyle(fontSize: 18 ,
                              fontWeight: FontWeight.w400,
                              color:Color(0xff804F1E)
                          )),


                    ]
                ),

              ),


            ),

          ),


        ],
      ),
    );
  }
}
