import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/Utils/MyStylis.dart';
import 'package:flutter_application_1/Utils/colors.dart';
import 'package:flutter_application_1/Utils/images.dart';
import 'package:flutter_application_1/screens/Edit_location.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_application_1/screens/Upload_Photo.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomePage8 extends StatelessWidget {
  const HomePage8({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        appBar: AppBar(
          backgroundColor: Theme.of(context).brightness == Brightness.dark
                            ?Colors.black: myColors.C_FEFEFF,
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
                            ?Colors.black: myColors.C_FEFEFF,
          padding: EdgeInsets.only(top: 20, left: 20, right: 20).r,
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Padding(
                padding: EdgeInsets.only(left: 5).r,
                child: Text(
                  'Payment',
                  style: Mystyle.BentonSansBold700.copyWith(fontSize: 30)
                )),
            SizedBox(height: 6.h),
            TextButton(
              onPressed: () {},
              child: Container(
                height: 70.h,
                width: 370.w,
                padding: EdgeInsets.symmetric(vertical: 16, horizontal: 24),
                decoration: BoxDecoration(
                    color: Theme.of(context).brightness == Brightness.dark
                                  ?myColors.C_F4F4F4.
                                  withOpacity(0.1):myColors.C_FFFFFF,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black12,
                        blurRadius: 1,
                        offset: Offset(0.1, 0.3),
                      ),
                    ],
                    borderRadius: BorderRadius.all(Radius.circular(18.r))),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 24.h,
                        child: Image.asset(
                          MyImages.Image_paypal,
                          width: 90,color: Theme.of(context).brightness == Brightness.dark
                                  ?myColors.C_FFFFFF:null,
                                  
                        ),
                      ),
                      Container(
                        height: 24.h,
                        child: Text(
                          '212163528465*****',
                          style: TextStyle(color: Theme.of(context).brightness == Brightness.dark
                                  ?myColors.C_FFFFFF:Colors.black12),
                        ),
                      ),
                    ]),
              ),
            ),
            buildButton(context, MyImages.Image_visa),
            buildButton(context, MyImages.Image_payoneer),
          ]),
        ));
  }

  Widget buildButton(BuildContext context, String ImageName) {
    return TextButton(
      onPressed: () {},
      child: Container(
        height: 70.h,
        width: 370.w,
        padding: EdgeInsets.symmetric(vertical: 16, horizontal: 24),
        decoration: BoxDecoration(
            color: Theme.of(context).brightness == Brightness.dark
                                  ?myColors.C_F4F4F4.
                                  withOpacity(0.1):myColors.C_FFFFFF,
            boxShadow: [
              BoxShadow(
                color: Colors.black12,
                blurRadius: 1,
                offset: Offset(0.1, 0.3),
              ),
            ],
            borderRadius: BorderRadius.all(Radius.circular(18.r))),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Container(
            height: 24.h,
            child: Image.asset(
              ImageName,
              width: 70,color:Theme.of(context).brightness == Brightness.dark
                                  ?myColors.C_FFFFFF:null,
            ),
          ),
          Container(
            height: 24.h,
            child: Text(
              '212163528465*****',
              style: TextStyle(color: Theme.of(context).brightness == Brightness.dark
                                  ?Colors.white24 :Colors.black12),
            ),
          ),
        ]),
      ),
    );
  }
}
