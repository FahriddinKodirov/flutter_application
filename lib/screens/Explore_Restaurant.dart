import 'dart:ffi';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_1/Utils/MyStylis.dart';
import 'package:flutter_application_1/Utils/colors.dart';
import 'package:flutter_application_1/Utils/images.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomePage19l extends StatefulWidget {
  const HomePage19l({super.key});

  @override
  State<HomePage19l> createState() => _HomePage19lState();
}

class _HomePage19lState extends State<HomePage19l> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: SafeArea(
        child: Stack(children: [
           Container(
            child: Image.asset(MyImages.Image_background7, color: 
            Color(0xFF53E88B).withOpacity(0.15),),
           ),
           Container(
            child: Container(
              padding: EdgeInsets.only(left: 24, right: 24),
              child: Column(
                    children: [
                      SizedBox(height: 60,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Find Your\nFavorite Food',
                            style: Mystyle.BentonSansBold700.copyWith(fontSize: 30, height: 1.2),
                          ),
                          Container(
                            padding: const EdgeInsets.all(8),
                            decoration: BoxDecoration(
                              color: Theme.of(context).brightness == Brightness.dark
                              ?Theme.of(context).scaffoldBackgroundColor.
                              withOpacity(0.5):Colors.white,
                              boxShadow: [
                                BoxShadow(
                                  offset: Offset(0, 1),
                                  color: Colors.grey.withOpacity(0.5),
                                )
                              ],
                              borderRadius: BorderRadius.all(Radius.circular(15)),
                            ),
                            width: 45,
                            height: 45,
                            child: Image.asset(MyImages.Image_qogiroq1),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 34,
                      ),
                      Row(
                        children: [
                          Expanded(
                              child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                    color: Theme.of(context).brightness == Brightness.dark
                                    ?myColors.C_F4F4F4.
                                    withOpacity(0.1):myColors.C_F9A84DF.withOpacity(0.2),
                                  ),
                                  child: TextField(
                                    decoration: InputDecoration(
                                        prefixIcon: Icon(
                                          Icons.search,
                                          color: Theme.of(context).brightness == Brightness.dark
                                                ?Colors.white:myColors.C_F9A84DF,
                                        ),
                                        hintText: 'What do you want to order?',
                                        hintStyle:
                                            TextStyle(color: Theme.of(context).brightness == Brightness.dark
                                                ?Colors.white38:myColors.C_F9A84DF,),
                                        border: InputBorder.none),
                                  ))),
                          SizedBox(
                            width: 8,
                          ),
                          Container(
                            width: 50,
                            padding: const EdgeInsets.all(12),
                            decoration: BoxDecoration(
                                color: Theme.of(context).brightness == Brightness.dark
                                    ?myColors.C_F4F4F4.
                                    withOpacity(0.1):myColors.C_F9A84DF.withOpacity(0.2),
                                borderRadius: BorderRadius.circular(12)),
                            child: Image.asset(MyImages.Image_nastroyka, color: 
                            Theme.of(context).brightness == Brightness.dark?Colors.white:null),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                      padding: EdgeInsets.only(right: 220),
                      child:
                      Text('Popular Restaurant', style: TextStyle(fontSize: 15),),),
                      SizedBox(height: 16,),
                      Expanded(
                          child: ListView(
                        scrollDirection: Axis.vertical,
                        children: [
                          buildNearestRestaurantTime(MyImages.Image_vegan, MyImages.Image_healthy1, 
                          'Vegan Resto', 'Healthy Food', '12 Mins', '8 Mins'),
                          SizedBox(height: 15,),
                          buildNearestRestaurantTime(MyImages.Image_Good_Food1, MyImages.Image_smart_resto,
                          'Good Food', 'Smart Resto', '12 Mins', '8 Mins'),
                          SizedBox(height: 15,),
                          buildNearestRestaurantTime(MyImages.Image_bosh_kiyim, MyImages.Image_oshpaz1,
                          'Vegan Resto', 'Healthy', '12 Mins', '8 Mins'),
                          
                        ],
                      )),
                      SizedBox(
                        height: 10,
                      ),
                      
                      
                    ],
                  ),
                ),
           )

        ],
          
        ),
           
      ),
    );
  }

 

  Widget buildNearestRestaurantTime(String img, String img2, String str, String str2, String minut1, String minut2) {
    return Container(child:Row(children: [
      Expanded(
        child: Container(
          margin: EdgeInsets.only(right: 8),
        height: 150,
        decoration: BoxDecoration(
         color: Theme.of(context).brightness == Brightness.dark?
             myColors.C_252525:myColors.C_FFFFFF, boxShadow: [
          BoxShadow(
          color: Colors.black12,
            blurRadius: 4,
            offset: Offset(0.1, 0.3),),],
          borderRadius: BorderRadius.all(Radius.circular(22)),
        ),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 16, right: 16, left: 16),
              child: Image.asset(
                img,
                width: 82,
              ),
            ),
            SizedBox(height: 10,),
            Text(str),
            SizedBox(
              height: 1,
            ),
            Text(
              minut1,
              style: TextStyle(color: Colors.grey),
            ),
          ],
        ),),
      ),
      SizedBox(width: 15,),

      Expanded(
        child: Container(
          margin: EdgeInsets.only(right: 8),
       
        height: 150,
        decoration: BoxDecoration(
         color: Theme.of(context).brightness == Brightness.dark?
             myColors.C_252525:myColors.C_FFFFFF, boxShadow: [
         BoxShadow(
           color: Colors.black12,
            blurRadius: 4,
            offset: Offset(0.1, 0.3),),],
          borderRadius: BorderRadius.all(Radius.circular(22)),
        ),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 16, right: 16, left: 16),
              child: Image.asset(
                img2,
                width: 70,
              ),
            ),
            SizedBox(height: 10,),
            Text(str2),
            SizedBox(
              height: 1,
            ),
            Text(
              minut2,
              style: TextStyle(color: Colors.grey),
            ),
          ],
        ),),
      ),
     

    ],),
      
    );
  }

  
}
