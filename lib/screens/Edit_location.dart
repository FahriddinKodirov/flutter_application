import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/Utils/MyStylis.dart';
import 'package:flutter_application_1/Utils/colors.dart';
import 'package:flutter_application_1/Utils/images.dart';
import 'package:flutter_application_1/screens/Payments.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_application_1/screens/Upload_Photo.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomePage9 extends StatelessWidget {
  const HomePage9({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        appBar: AppBar(
          backgroundColor: Theme.of(context).scaffoldBackgroundColor,
          leading: TextButton(
              onPressed: () {},
              child: Expanded(
                  child: Container(
                      decoration: BoxDecoration(),
                      height: 60.h,
                      child: Image.asset(MyImages.Image_back_arrow3)))),
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
                  'Shipping',
                  style: Mystyle.BentonSansBold700.copyWith(fontSize: 30),
                )),
            SizedBox(height: 6.h),
            TextButton(
              onPressed: () {},
              child: Container(
                height: 110.h,
                width: 370.w,
                padding: EdgeInsets.symmetric(vertical: 16, horizontal: 24),
                decoration: BoxDecoration(
                    color: Theme.of(context).brightness == Brightness.dark?
             myColors.C_252525:myColors.C_FFFFFF,
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
                        height: 24.h,
                        child: Text('Order location',
                            style: TextStyle(color: Theme.of(context).brightness == Brightness.dark?
                          Colors.white12: Colors.black26)),
                      ),
                      Container(
                        child: Row(children: [
                          Container(
                            padding: EdgeInsets.only(right: 10, top: 5),
                            child: Image.asset(
                              MyImages.Image_location2,
                              width: 40,
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.only(top: 4),
                            child: Text(
                              '8502 Preston Rd. Inglewood,\n Maine 98380',
                              style: TextStyle(color: Theme.of(context).brightness == Brightness.dark?
                          myColors.C_FFFFFF:Colors.black),
                            ),
                          ),
                        ]),
                      ),
                    ]),
              ),
            ),
            TextButton(
              onPressed: () {},
              child: Container(
                height: 130.h,
                width: 370.w,
                padding: EdgeInsets.symmetric(vertical: 16, horizontal: 24),
                decoration: BoxDecoration(
                    color: Theme.of(context).brightness == Brightness.dark?
             myColors.C_252525:myColors.C_FFFFFF,
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
                        height: 24.h,
                        child: Text(
                          'Order location',
                          style: TextStyle(color: Theme.of(context).brightness == Brightness.dark?
                          Colors.white12: Colors.black26),
                        ),
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
                            padding: EdgeInsets.only(left: 10, bottom: 5),
                            child: Text(
                              '4517 Washington Ave. Manchester,\n Kentucky 39495',
                              style: TextStyle(color: Theme.of(context).brightness == Brightness.dark?
                          myColors.C_FFFFFF:Colors.black),
                            ),
                          ),
                        ]),
                      ),
                      Container(
                        padding: EdgeInsets.only(left: 55, top: 10),
                        child: Text('Set location',
                            style: TextStyle(color: myColors.C_15BE77)),
                      ),
                    ]),
              ),
            )
          ]),
        ));
  }
}
