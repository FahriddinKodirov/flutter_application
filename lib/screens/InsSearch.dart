

import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:flutter_application_1/Utils/MyStylis.dart';
import 'package:flutter_application_1/Utils/colors.dart';
import 'package:flutter_application_1/Utils/images.dart';
class insSearch extends StatefulWidget {
  const insSearch({super.key});

  @override
  State<insSearch> createState() => _insSearchState();
}

class _insSearchState extends State<insSearch> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFAFAFA),
       body: SafeArea(
         child: SingleChildScrollView(physics: BouncingScrollPhysics(),
         child: Column(children: [
            Search(),
           
            Container(
              padding: EdgeInsets.only(left: 15,),
              height: 45,
              width: double.infinity,
              child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                 Manu(MyImages.Image_igtv, 'IGTV'),
                 SizedBox(width: 10,),
                 Manu(MyImages.Image_shop, 'shop'),
                 SizedBox(width: 10,),
                 Manu1('Auto'),
                 SizedBox(width: 10,),
                 Manu1('Sports'),
              ],)),
              SizedBox(height: 10,),
              Column(children: [
                Row(children: [
                  Expanded(
                    flex: 330,
                    child: Column(children: [
                    Container(
                    child: Image.network("https://i.pravatar.cc/300?img=12")),
                    Container(
                    child: Image.network("https://i.pravatar.cc/300?img=14")),
                  ],),
                  ),
                Expanded(
                  flex: 670,
                  child: Image.network("https://i.pravatar.cc/300?img=13")),
                  ],),
                  Row(children: [
                     Expanded(
                     flex: 333,
                     child: Image.network("https://i.pravatar.cc/300?img=44")),
                     Expanded(
                     flex: 333,
                     child: Image.network("https://i.pravatar.cc/300?img=23")),

                     Expanded(
                     flex: 333,
                     child: Image.network("https://i.pravatar.cc/300?img=24")),
                  ],),
                  Row(children: [
                     Expanded(
                     flex: 333,
                     child: Image.network("https://i.pravatar.cc/300?img=49")),
                     Expanded(
                     flex: 333,
                     child: Image.network("https://i.pravatar.cc/300?img=33")),

                     Expanded(
                     flex: 333,
                     child: Image.network("https://i.pravatar.cc/300?img=34")),
                  ],),
                  Row(children: [
                  Expanded(
                  flex: 670,
                  child: Image.network("https://i.pravatar.cc/300?img=53")),
                  Expanded(
                    flex: 330,
                    child: Column(children: [
                    Container(
                    child: Image.network("https://i.pravatar.cc/300?img=62")),
                    Container(
                    child: Image.network("https://i.pravatar.cc/300?img=64")),
                  ],),
                  ),
                
                  ],),
                  Row(children: [
                     Expanded(
                     flex: 333,
                     child: Image.network("https://i.pravatar.cc/300?img=42")),
                     Expanded(
                     flex: 333,
                     child: Image.network("https://i.pravatar.cc/300?img=43")),

                     Expanded(
                     flex: 333,
                     child: Image.network("https://i.pravatar.cc/300?img=32")),
                  ],),
                  Row(children: [
                     Expanded(
                     flex: 333,
                     child: Image.network("https://i.pravatar.cc/300?img=52")),
                     Expanded(
                     flex: 333,
                     child: Image.network("https://i.pravatar.cc/300?img=53")),

                     Expanded(
                     flex: 333,
                     child: Image.network("https://i.pravatar.cc/300?img=54")),
                  ],),

              
              
             
              ],)
              
              
            
              
          ],
            
          ),
             ),
       ),);
      
    
  }

Widget Search(){
  return Row(children: [
              Container(
              margin: EdgeInsets.all(15),
                  height: 50,
                  width: 340,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.grey[300],
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black12,
                            blurRadius: 1,
                            offset: Offset(0.1, 0.3)),
                      ],
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                    ),
                    padding: EdgeInsets.only(left: 15, top: 15),
                    child: Stack(
                       children: [
                      Container(),
                     Positioned(
                      bottom: 10,
                      child: Icon(Icons.search,size: 30,),),
                    
                    Positioned(
                      bottom: 12,
                      left: 35,
                      child:Text(
                      'Search',
                      style: TextStyle(
                          fontSize: 23,
                          color: Colors.black45),
                    )),],)
                    


                    
                  )),
                  Container(child: Image.asset(MyImages.Image_searchNastroyka,width: 28,),)

              
            ],);
}

Widget Manu(icon, word){
  return Container(
                 
                  height: 45,
                  width: 110,
                  child: Container(
                    decoration: BoxDecoration(
                      
                      color:myColors.C_FFFFFF,
                      boxShadow: [
                       BoxShadow(
                        
                        color: Colors.black12,
                         blurRadius: 10,
                           offset: Offset(1, 1),
                               ),
                                ], 
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                   
                    child: Stack(
                       children: [
                      Container(),
                     Positioned(
                      bottom: 11,
                      left: 15,
                      child: Image.asset(icon,width: 21,),),
                    
                    Positioned(
                      left: 45,
                      top: 15,
                      child:Text(
                      word,
                      style: Mystyle.BentonSansBold700.copyWith(
                          fontWeight: FontWeight.w900,fontSize: 21,
                          color: Colors.black),
                    )),],)
                    


                    
                  ));

              
            
}

Widget Manu1(word){
  return Container(
                 height: 45,
                  child: Container(
                    decoration: BoxDecoration(
                      color:myColors.C_FFFFFF,
                      boxShadow: [
                       BoxShadow(
                        
                        color: Colors.black12,
                         blurRadius: 3,
                           offset: Offset(1, 1),
                               ),
                                ], 
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    child:Padding(padding: EdgeInsets.symmetric(horizontal: 15, vertical: 13),
                    child: Text(
                      word,
                      style: Mystyle.BentonSansBold700.copyWith(
                          fontWeight: FontWeight.w900,fontSize: 21,
                          color: Colors.black)))));
}
                    
                    
}