import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/Utils/MyStylis.dart';
import 'package:flutter_application_1/Utils/colors.dart';
import 'package:flutter_application_1/Utils/images.dart';
import 'package:flutter_application_1/screens/Payment_method.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_application_1/screens/Upload_Photo.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomePage10 extends StatelessWidget {
  const HomePage10({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        appBar: AppBar(
          backgroundColor: Theme.of(context).brightness == Brightness.dark
              ? Colors.black
              : myColors.C_FEFEFF,
          leading: TextButton(
              onPressed: () {},
              child: Expanded(
                  child: Container(
                      decoration: BoxDecoration(),
                      height: 30.h,
                      child: Image.asset(
                        MyImages.Image_back_arrow3,
                      )))),
          elevation: 0,
        ),
        body: Container(
          color: Theme.of(context).brightness == Brightness.dark
              ? Colors.black
              : myColors.C_FEFEFF,
          padding: EdgeInsets.only(top: 20, left: 20, right: 20).r,
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Padding(
                padding: EdgeInsets.only(left: 5).r,
                child: Text(
                  'Confirm Order',
                  style: Mystyle.BentonSansBold700.copyWith(fontSize: 30),
                )),
            SizedBox(height: 6.h),
            TextButton(
              onPressed: () {},
              child: Container(
                height: 115.h,
                width: 370.w,
                padding: EdgeInsets.symmetric(vertical: 16, horizontal: 24),
                decoration: BoxDecoration(
                    color: Theme.of(context).brightness == Brightness.dark
                        ? myColors.C_252525
                        : myColors.C_FFFFFF,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black12,
                        blurRadius: 1,
                        offset: Offset(0.1, 0.3),
                      ),
                    ],
                    borderRadius: BorderRadius.all(Radius.circular(18.r))),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                padding: EdgeInsets.only(bottom: 15),
                                child: Text(
                                  'Delive To',
                                  style: TextStyle(color: Theme.of(context).brightness == Brightness.dark?
                          Colors.white12:Colors.black26),
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.only(left: 170),
                                child: Text(
                                  'Edit',
                                  style: TextStyle(color: myColors.C_53E88B),
                                ),
                              ),
                              SizedBox(
                                height: 30,
                              ),
                            ]),
                      ),
                      Container(
                        child: Row(children: [
                          Container(
                            child: Image.asset(
                              MyImages.Image_location2,
                              width: 40,
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.only(left: 10),
                            child: Text(
                              '4517 Washington Ave. Manchester,\nKentucky 39495',
                              style: TextStyle(
                                  color: Theme.of(context).brightness ==
                                          Brightness.dark
                                      ? myColors.C_FFFFFF
                                      : Colors.black),
                            ),
                          ),
                        ]),
                      ),
                    ]),
              ),
            ),
            TextButton(
              onPressed: () {
                Text(
                  '212163528465*****',
                  style: TextStyle(color: Colors.black),
                );
              },
              child: Container(
                height: 110.h,
                width: 370.w,
                padding: EdgeInsets.symmetric(vertical: 16, horizontal: 24),
                decoration: BoxDecoration(
                    color: Theme.of(context).brightness == Brightness.dark
                        ? myColors.C_252525
                        : myColors.C_FFFFFF,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black12,
                        blurRadius: 1,
                        offset: Offset(0.1, 0.3),
                      ),
                    ],
                    borderRadius: BorderRadius.all(Radius.circular(18.r))),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                child: Text(
                                  'Payment Method',
                                  style: TextStyle(color: Theme.of(context).brightness == Brightness.dark?
                          Colors.white12:Colors.black26),
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.only(left: 170),
                                child: Text(
                                  'Edit',
                                  style: TextStyle(color: myColors.C_53E88B),
                                ),
                              ),
                              SizedBox(
                                height: 15,
                              ),
                            ]),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Container(
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                child: Image.asset(
                                  MyImages.Image_paypal,
                                  width: 100,
                                  color: Theme.of(context).brightness ==
                                          Brightness.dark
                                      ? myColors.C_FFFFFF
                                      : null,
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.only(left: 5),
                                child: Text(
                                  '212163528465*****',
                                  style: TextStyle(
                                      color: Theme.of(context).brightness ==
                                              Brightness.dark
                                          ? myColors.C_FFFFFF
                                          : Colors.black),
                                ),
                              ),
                            ]),
                      ),
                    ]),
              ),
            ),
            SizedBox(
              height: 115,
            ),
            Container(
                height: 260,
                width: 375,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(15.r)),
                  gradient: LinearGradient(
                      colors: [myColors.C_53E88B, myColors.C_15BE77]),
                ),
                child: Column(
                  children: [
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            padding: EdgeInsets.only(top: 20, left: 20),
                            child: Text(
                              'Sub-Total',
                              style: TextStyle(color: myColors.C_FFFFFF),
                            ),
                          ),
                          Container(
                              padding: EdgeInsets.only(top: 20, right: 20),
                              child: Text(
                                '120\$',
                                style: TextStyle(color: myColors.C_FFFFFF),
                              )),
                        ],
                      ),
                    ),
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            padding: EdgeInsets.only(top: 20, left: 20),
                            child: Text(
                              'Deliveri Charge',
                              style: TextStyle(color: myColors.C_FFFFFF),
                            ),
                          ),
                          Container(
                              padding: EdgeInsets.only(top: 20, right: 20),
                              child: Text(
                                '10\$',
                                style: TextStyle(color: myColors.C_FFFFFF),
                              )),
                        ],
                      ),
                    ),
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            padding: EdgeInsets.only(top: 20, left: 20),
                            child: Text(
                              'Discount',
                              style: TextStyle(color: myColors.C_FFFFFF),
                            ),
                          ),
                          Container(
                              padding: EdgeInsets.only(top: 20, right: 20),
                              child: Text(
                                '20\$',
                                style: TextStyle(color: myColors.C_FFFFFF),
                              )),
                        ],
                      ),
                    ),
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            padding: EdgeInsets.only(top: 20, left: 20),
                            child: Text(
                              'Total',
                              style: TextStyle(
                                  color: myColors.C_FFFFFF, fontSize: 20),
                            ),
                          ),
                          Container(
                              padding: EdgeInsets.only(top: 20, right: 20),
                              child: Text(
                                '150\$',
                                style: TextStyle(color: myColors.C_FFFFFF),
                              )),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Container(
                        height: 60,
                        width: 350,
                        decoration: BoxDecoration(
                          color: myColors.C_FFFFFF,
                          borderRadius: BorderRadius.all(Radius.circular(18)),
                        ),
                        child: TextButton(
                            onPressed: () {},
                            child: Center(
                              child: Text('Place My Oreder'),
                            ))),
                  ],
                )),
          ]),
        ));
  }
}
