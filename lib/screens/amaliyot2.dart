import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_1/Utils/MyStylis.dart';

class MyWidget2 extends StatelessWidget {
  const MyWidget2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Stack(
          children: [
            Container(
                padding: EdgeInsets.only(top: 200),
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(30),
                )),
            Positioned(
                top: 460,
                child: Container(
                  height: 630,
                  width: 412,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(45),
                    color: Colors.white,
                  ),
                  child: Column(
                    children: [
                      Container(
                        padding: EdgeInsets.only(top: 30, right: 125),
                        child: Text(
                          'Forget Password',
                          style:
                              Mystyle.BentonSansBold700.copyWith(fontSize: 28),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(top: 1, right: 20),
                        child: Text(
                          'Error your email recover your password',
                          style: Mystyle.BentonSansBold700.copyWith(
                              fontSize: 17, color: Colors.black45),
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Container(
                          padding: EdgeInsets.only(top: 25, right: 245),
                          child: Text(
                            'Email Adress',
                            style: Mystyle.BentonSansBold700.copyWith(
                                fontSize: 17, color: Colors.black45),
                          )),
                      SizedBox(
                        height: 5,
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 30),
                        child: TextField(
                          textInputAction: TextInputAction.next,
                          keyboardType: TextInputType.text,
                          decoration: InputDecoration(
                              prefixIcon: Icon(Icons.man),
                              hintText: 'Password',
                              border: OutlineInputBorder(),
                              focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.red))),
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Container(
                        width: 350,
                        height: 55,
                        decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.all(Radius.circular(6))),
                        child: Center(
                            child: Text(
                          'Singe Up',
                          style: Mystyle.BentonSansBold700.copyWith(
                              fontSize: 15, color: Colors.white),
                        )),
                      ),
                      SizedBox(
                        height: 55,
                      ),
                      SizedBox(
                        height: 25,
                      ),
                    ],
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
