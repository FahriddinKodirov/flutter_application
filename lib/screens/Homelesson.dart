import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_1/Utils/MyStylis.dart';
import 'package:flutter_application_1/Utils/colors.dart';
import 'package:flutter_application_1/Utils/images.dart';
import 'package:flutter_application_1/screens/Explore_Manu.dart';
import 'package:flutter_application_1/screens/Explore_Restaurant.dart';
import 'package:flutter_application_1/screens/lessonone.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomePage20l extends StatefulWidget {
  const HomePage20l({super.key});

  @override
  State<HomePage20l> createState() => _HomePage20lState();
}

class _HomePage20lState extends State<HomePage20l> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: SafeArea(
        child: Stack(
          children: [
            Container(
              child: Image.asset(
                MyImages.Image_background7,
                color: Color(0xFF53E88B).withOpacity(0.15),
              ),
            ),
            Container(
              child: Container(
                  padding: EdgeInsets.only(right: 24, left: 24),
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(MyImages.Image_background2))),
                  child: SizedBox(
                    height: MediaQuery.of(context).size.height * 1,
                    child: SingleChildScrollView(
                        physics: BouncingScrollPhysics(),
                        child: SizedBox(
                          child: Column(
                            children: [
                              SizedBox(
                                height: 60,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text('Find Your\nFavorite Food',
                                      style: Mystyle.BentonSansBold700.copyWith(
                                          fontSize: 30, height: 1.2)),
                                  Container(
                                    padding: const EdgeInsets.all(8),
                                    decoration: BoxDecoration(
                                      color: Theme.of(context).brightness ==
                                              Brightness.dark
                                          ? Theme.of(context)
                                              .scaffoldBackgroundColor
                                              .withOpacity(0.5)
                                          : Colors.white,
                                      boxShadow: [
                                        BoxShadow(
                                          offset: Offset(0, 1),
                                          color: Colors.grey.withOpacity(0.5),
                                        )
                                      ],
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(15)),
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
                                            borderRadius:
                                                BorderRadius.circular(15),
                                            color:
                                                Theme.of(context).brightness ==
                                                        Brightness.dark
                                                    ? myColors.C_F4F4F4
                                                        .withOpacity(0.1)
                                                    : myColors.C_F9A84DF
                                                        .withOpacity(0.2),
                                          ),
                                          child: TextField(
                                            decoration: InputDecoration(
                                                prefixIcon: Icon(
                                                  Icons.search,
                                                  color: Theme.of(context)
                                                              .brightness ==
                                                          Brightness.dark
                                                      ? Colors.white
                                                      : myColors.C_F9A84DF,
                                                ),
                                                hintText:
                                                    'What do you want to order?',
                                                hintStyle: TextStyle(
                                                  color: Theme.of(context)
                                                              .brightness ==
                                                          Brightness.dark
                                                      ? Colors.white38
                                                      
                                                      : myColors.C_F9A84DF,
                                                ),
                                                border: InputBorder.none),
                                          ))),
                                  SizedBox(
                                    width: 8,
                                  ),
                                  Container(
                                    width: 50,
                                    padding: const EdgeInsets.all(12),
                                    decoration: BoxDecoration(
                                        color: Theme.of(context).brightness ==
                                                Brightness.dark
                                            ? myColors.C_F4F4F4.withOpacity(0.1)
                                            : myColors.C_F9A84DF
                                                .withOpacity(0.2),
                                        borderRadius:
                                            BorderRadius.circular(12)),
                                    child: Image.asset(
                                      MyImages.Image_nastroyka,
                                      color: Theme.of(context).brightness ==
                                              Brightness.dark
                                          ? Colors.white
                                          : null,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              buildBanner(),
                              SizedBox(
                                height: 10,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Nearest Restaurant',
                                    style: TextStyle(fontSize: 17),
                                  ),
                                  TextButton(
                                      style: ElevatedButton.styleFrom(
                                          splashFactory:
                                              NoSplash.splashFactory),
                                      onPressed: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    HomePage19l()));
                                      },
                                      child: Text(
                                        'View More',
                                        style: TextStyle(
                                            color: myColors.C_F9A84DF),
                                      ))
                                ],
                              ),
                              Container(
                                  height: 155,
                                  width: 370,
                                  child: ListView(
                                    scrollDirection: Axis.horizontal,
                                    children: [
                                      buildNearestRestaurantTime(
                                          MyImages.Image_vegan,
                                          'Vegan Resto',
                                          '12 Mins'),
                                      buildNearestRestaurantTime(
                                          MyImages.Image_healthy1,
                                          'Healthy Food',
                                          '8 Mins'),
                                      buildNearestRestaurantTime(
                                          MyImages.Image_oshpaz1,
                                          'Good Food',
                                          '12 Mins'),
                                      buildNearestRestaurantTime(
                                          MyImages.Image_bosh_kiyim,
                                          'Smart Resto',
                                          '8 Mins'),
                                    ],
                                  )),
                              SizedBox(
                                height: 18,
                              ),
                              Container(
                                child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        'Popular Menu',
                                        style: TextStyle(fontSize: 20),
                                      ),
                                      TextButton(
                                        style: ElevatedButton.styleFrom(
                                            splashFactory:
                                                NoSplash.splashFactory),
                                        onPressed: () {
                                        },
                                        child: Text(
                                          'View More',
                                          style: TextStyle(
                                              color: myColors.C_F9A84DF),
                                        ),
                                      ),
                                    ]),
                              ),
                              SizedBox(
                                height: 18,
                              ),
                              BuildRestoran(MyImages.Image_herbal_pancake,
                                  'Herbal Pancake', 'Warung Herbal', '\$8'),
                              SizedBox(
                                height: 15,
                              ),
                              BuildRestoran(MyImages.Image_fruit_salad,
                                  'Fruit Salad', 'Wijie Resto', '\$5'),
                              SizedBox(
                                height: 15,
                              ),
                              BuildRestoran(MyImages.Image_green_noddle,
                                  'Green Noddle', 'Noodle Home', '\$15'),
                              SizedBox(
                                height: 20,
                              )
                            ],
                          ),
                        )),
                  )),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildBanner() {
    return Container(
      width: double.infinity,
      height: 150,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          gradient: const LinearGradient(
              colors: [myColors.C_53E88B, myColors.C_15BE77])),
      child: Stack(
        children: [
          Container(
              width: double.infinity,
              child: Expanded(
                child: Image.asset(
                  MyImages.Image_background1,
                  color: Theme.of(context).brightness == Brightness.dark
                      ? Colors.black12
                      : Colors.white30,
                ),
              )),
          Positioned(
              right: 50,
              top: 30,
              child: Text(
                'Special Deal For\nOctober',
                style: TextStyle(
                    color: Theme.of(context).brightness == Brightness.dark
                        ? Colors.black
                        : Colors.white,
                    fontSize: 17),
              )),
          Positioned(
            child: Image.asset(MyImages.Image_icecream),
          ),
          Positioned(
              bottom: 20,
              right: 90,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(primary: Colors.white),
                onPressed: () {},
                child: Text(
                  'Buy now',
                  style: TextStyle(color: myColors.C_53E88B),
                ),
              ))
        ],
      ),
    );
  }

  Widget buildNearestRestaurantTime(String img, String name, String minut) {
    return Container(
      margin: EdgeInsets.only(right: 8),
      width: 138,
      height: 150,
      decoration: BoxDecoration(
        color: Theme.of(context).brightness == Brightness.dark
            ? myColors.C_252525
            : myColors.C_FFFFFF,
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 4,
            offset: Offset(0.1, 0.3),
          ),
        ],
        borderRadius: BorderRadius.all(Radius.circular(22)),
      ),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(top: 15, right: 10, left: 10),
            child: Image.asset(
              img,
              width: 82,
            ),
          ),
          SizedBox(
            height: 6,
          ),
          Text(name),
          SizedBox(
            height: 1,
          ),
          Text(
            minut,
            style: TextStyle(color: Colors.grey),
          ),
        ],
      ),
    );
  }

  Widget BuildRestoran(image, String str1, String str2, String money) {
    return Container(
      child: Column(
        children: [
          Container(
              child: Stack(
            children: [
              Container(
                width: 370,
                height: 80,
                decoration: BoxDecoration(
                  color: Theme.of(context).brightness == Brightness.dark
                      ? myColors.C_252525
                      : myColors.C_FFFFFF,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black12,
                      blurRadius: 5,
                      offset: Offset(0.5, 0.9),
                    ),
                  ],
                  borderRadius: BorderRadius.all(Radius.circular(22)),
                ),
              ),
              Positioned(
                  left: 10,
                  top: 10,
                  child: Image.asset(
                    image,
                    width: 60,
                  )),
              Positioned(
                  left: 100,
                  top: 15,
                  child: Text(
                    str1,
                    style: TextStyle(fontSize: 20),
                  )),
              Positioned(
                  left: 100,
                  top: 38,
                  child: Text(
                    str2,
                    style: TextStyle(
                        fontSize: 16,
                        color: Theme.of(context).brightness == Brightness.dark
                            ? Colors.white24
                            : Colors.black38),
                  )),
              Positioned(
                  right: 20,
                  top: 16,
                  child: Text(
                    money,
                    style: TextStyle(fontSize: 28, color: myColors.C_F9A84DF),
                  )),
            ],
          )),
        ],
      ),
    );
  }
}
