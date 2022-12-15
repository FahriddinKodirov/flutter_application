import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_1/Utils/MyStylis.dart';
import 'package:flutter_application_1/Utils/colors.dart';
import 'package:flutter_application_1/Utils/images.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomePage18l extends StatefulWidget {
  const HomePage18l({super.key});

  @override
  State<HomePage18l> createState() => _HomePage18lState();
}

class _HomePage18lState extends State<HomePage18l> {
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
              padding: EdgeInsets.symmetric(horizontal: 24, vertical: 60),
              child: Column(
                children: [
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Find Your\nFavorite Food',
                          style: Mystyle.BentonSansBold700.copyWith(
                              fontSize: 30, letterSpacing: 1, height: 1.2)),
                      Container(
                        padding: const EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          color: Theme.of(context).brightness == Brightness.dark
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
                          borderRadius: BorderRadius.all(Radius.circular(15)),
                        ),
                        width: 45,
                        height: 45,
                        child: Image.asset(
                          MyImages.Image_qogiroq1,
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 24,
                  ),
                  Row(
                    children: [
                      Expanded(
                          child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: Theme.of(context).brightness ==
                                        Brightness.dark
                                    ? myColors.C_F4F4F4.withOpacity(0.1)
                                    : myColors.C_F9A84DF.withOpacity(0.2),
                              ),
                              child: TextField(
                                decoration: InputDecoration(
                                    prefixIcon: Icon(
                                      Icons.search,
                                      color: Theme.of(context).brightness ==
                                              Brightness.dark
                                          ? Colors.white
                                          : myColors.C_F9A84DF,
                                    ),
                                    hintText: 'What do you want to order?',
                                    hintStyle: TextStyle(
                                      color: Theme.of(context).brightness ==
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
                            color:
                                Theme.of(context).brightness == Brightness.dark
                                    ? myColors.C_F4F4F4.withOpacity(0.1)
                                    : myColors.C_F9A84DF.withOpacity(0.2),
                            borderRadius: BorderRadius.circular(12)),
                        child: Image.asset(
                          MyImages.Image_nastroyka,
                          color: Theme.of(context).brightness == Brightness.dark
                              ? Colors.white
                              : null,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    height: 1,
                  ),
                  Container(
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 6),
                            child: Text(
                              'Popular Menu',
                              style: Mystyle.BentonSansBold700.copyWith(
                                  fontSize: 17),
                            ),
                          ),
                        ]),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  BuildRestoran(MyImages.Image_herbal_pancake, 'Herbal Pancake',
                      'Warung Herbal', '\$7'),
                  SizedBox(
                    height: 18,
                  ),
                  BuildRestoran(MyImages.Image_fruit_salad, 'Fruit Salad',
                      'Wijie Resto', '\$5'),
                  SizedBox(
                    height: 18,
                  ),
                  BuildRestoran(MyImages.Image_green_noddle, 'Green Noddle',
                      'Noodle Home', '\$15'),
                ],
              ),
            ),
          ),
        ],
      )),
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
                    style: Mystyle.BentonSansBold700.copyWith(fontSize: 18),
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
                    style: TextStyle(fontSize: 27, color: myColors.C_F9A84DF),
                  )),
            ],
          )),
        ],
      ),
    );
  }
}
