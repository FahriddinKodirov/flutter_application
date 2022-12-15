import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/Utils/MyStylis.dart';
import 'package:flutter_application_1/Utils/colors.dart';
import 'package:flutter_application_1/Utils/images.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_application_1/screens/Upload_Photo.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomePage1 extends StatelessWidget {
  const HomePage1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        appBar: AppBar(
          backgroundColor: Theme.of(context).brightness == Brightness.dark
              ? Colors.black
              : myColors.C_FFFFFF,
          leading: TextButton(
              onPressed: () {},
              child: Expanded(
                  child: Container(
                    
                      decoration: BoxDecoration(),
                      height: 60.h,
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
                  'Payment Method',
                  style: Mystyle.BentonSansBold700.copyWith(fontSize: 30)
                )),
            SizedBox(height: 20.h),
            Padding(
              padding: EdgeInsets.only(left: 5).r,
              child: Text(
                'This data will be displayed in your account\n profile for security',
                style: TextStyle(fontSize: 14.sp),
              ),
            ),
            SizedBox(height: 32.h),
            buildButton(context, MyImages.Image_paypal),
            SizedBox(height: 20.h),
            buildButton(context, MyImages.Image_visa),
            SizedBox(height: 20.h),
            buildButton(context, MyImages.Image_payoneer),
            Expanded(
                child:
                    Column(mainAxisAlignment: MainAxisAlignment.end, children: [
              Center(
                child: TextButton(
                  onPressed: () {},
                  child: Container(
                    height: 56.h,
                    width: 150.w,
                    decoration: BoxDecoration(
                     borderRadius: BorderRadius.all(Radius.circular(15.r)),
                      gradient: LinearGradient(
                          colors: [myColors.C_53E88B, myColors.C_15BE77]),
                    ),
                    child: Center(
                        child: Text(
                      'Next',
                      style:
                          TextStyle(color: myColors.C_FEFEFF, fontSize: 16.sp),
                    )),
                  ),
                ),
              ),
              SizedBox(height: 36.h),
            ]))
          ]),
        ));
  }

  Widget buildButton(BuildContext context, String ImageName) {
    return TextButton(
      onPressed: () {},
      child: Container(
          height: 76.h,
          padding: EdgeInsets.symmetric(vertical: 16, horizontal: 24),
          decoration: BoxDecoration(
              color: Theme.of(context).brightness == Brightness.dark
                  ? myColors.C_252525
                  : myColors.C_FFFFFF,
              boxShadow: [
                BoxShadow(
                  color: Colors.black12,
                  blurRadius: 3,
                  offset: Offset(0.1, 0.3),
                ),
              ],
              borderRadius: BorderRadius.all(Radius.circular(18))),
          child: Container(
            height: 32,
            child: Center(
              child: Image.asset(
                ImageName,
                color: Theme.of(context).brightness == Brightness.dark
                    ? Colors.white
                    : null,
              ),
            ),
          )),
    );
  }
}
