import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_1/Utils/MyStylis.dart';

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
   
        child: Stack(children: [
           Container(
            padding: EdgeInsets.only(top: 200),
             decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.circular(30),
              )
            ),
            Positioned(
            top: 200, 
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
                    child:Text('Welcome Back', style: Mystyle.BentonSansBold700.copyWith(
                      fontSize: 30
                    ),) ,),
                  Container(
                    padding: EdgeInsets.only(top: 1, right: 190),
                    child:Text('Login to welcome ', style: Mystyle.BentonSansBold700.copyWith(
                      fontSize: 17, color: Colors.black45
                    ),) ,),
                  Container(
                    padding: EdgeInsets.only(top: 35, right: 220),
                    child: Text('Email Adresss', style: Mystyle.BentonSansBold700.copyWith(
                      fontSize: 17, color: Colors.black45),)),
                          SizedBox(height: 5,),
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
                            borderSide: BorderSide(color: Colors.red))
                                      ),
                                    ),
                          ),
                          Container(
                             padding: EdgeInsets.only(top: 25, right: 255),
                             child: Text('Password', style: Mystyle.BentonSansBold700.copyWith(
                             fontSize: 17, color: Colors.black45),)),
                             SizedBox(height: 5,),
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
                            borderSide: BorderSide(color: Colors.red))
                                      ),
                                    ),
                          ),
                          Container(
                            padding: EdgeInsets.only(left: 225,top: 10),
                            child: Text('Frgot Password?',style: Mystyle.BentonSansBold700.copyWith(
                             fontSize: 15
                            )),),
                            SizedBox(height: 30,),
                            Container(
                              width: 350,
                              height: 55,
                              decoration: BoxDecoration(
                                color: Colors.blue,
                                borderRadius: BorderRadius.all(Radius.circular(6))
                              ),
                              child: Center(child: Text('Login', style: Mystyle.BentonSansBold700.copyWith(
                                fontSize: 15, color: Colors.white
                              ),)),
                            ),
                            SizedBox(height: 55,),
                            Container(
                             child: Text('Or Connect With',style: Mystyle.BentonSansBold700.copyWith(
                             fontSize: 15,color: Colors.black38
                            )),),
                            SizedBox(height: 10,),
                            Container(
                              padding: EdgeInsets.symmetric(horizontal: 25),
                              child: Row(
                                 mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [
                                Container(
                                  width: 75,
                                  height: 60,
                                  decoration: BoxDecoration(
                                    color: Colors.blue,
                                    borderRadius: BorderRadius.circular(12)
                                  ),
                                  
                                ),
                                 Container(
                                  width: 75,
                                  height: 60,
                                  decoration: BoxDecoration(
                                    color: Colors.black,
                                    borderRadius: BorderRadius.circular(12)
                                  ),
                                  
                                ),
                                 Container(
                                  width: 75,
                                  height: 60,
                                  decoration: BoxDecoration(
                                    color: Colors.grey,
                                    borderRadius: BorderRadius.circular(12)
                                  ),
                                  
                                ),
                                 Container(
                                  width: 75,
                                  height: 60,
                                  decoration: BoxDecoration(
                                    color: Colors.blueGrey,
                                    borderRadius: BorderRadius.circular(12)
                                  ),
                                  
                                ),
                               
                              ],),
                              
                            ),
                            SizedBox(height: 25,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [ 
                               Container(
                               child: Text('Dont have on account?',style: Mystyle.BentonSansBold700.copyWith(
                               fontSize: 15,color: Colors.black38
                              )),),
                              Container(
                               child: Text('Singe Up',style: Mystyle.BentonSansBold700.copyWith(
                               fontSize: 15,color: Colors.black
                              )),),

                            ],
                              
                            ),
                
                ],),
           

              
            ))

        ],
          
        ),
          
        ),
      
    );
  }
}