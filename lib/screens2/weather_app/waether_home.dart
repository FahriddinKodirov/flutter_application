// import 'dart:ffi';

// import 'package:flutter/material.dart';
// import 'package:flutter/src/widgets/container.dart';
// import 'package:flutter/src/widgets/framework.dart';
// import 'package:flutter_svg/flutter_svg.dart';
// import 'package:weather_app/home/menu.dart';
// import 'package:weather_app/utils/images.dart';

// class WeatherHome extends StatelessWidget {
//   const WeatherHome({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
      
//       backgroundColor: Colors.blue,
//        body: Container(
//         height: MediaQuery.of(context).size.height,
//         width: MediaQuery.of(context).size.width,
//         decoration: BoxDecoration(
//           image: DecorationImage(
//             fit: BoxFit.cover,
//             image: AssetImage(MyImage.oboy))
//         ),
//          child: Column(
//            children: [
//             SizedBox(height: MediaQuery.of(context).size.height*0.09),
//             boshi(),
//             SizedBox(height: MediaQuery.of(context).size.height*0.055),
//             home(context),
            
//            ],
//          ),
//        ),
//     );
//   }

//   Widget boshi(){
//     return Column(children: [
//       Container(
//               height: 30,
//               child: Text('Montreal', style: TextStyle(fontSize: 32,color: Colors.white))
//             ),
//             Stack(
//               children: [
//                 Container(
//                   height: 90,
//                   width: 370
//                 ),
//                 Positioned(
//                   left: 125,
//                   child: Container(
//                     child: Text('19', style: TextStyle(fontSize: 90,color: Colors.white,letterSpacing: -10,
//                     fontWeight: FontWeight.w200))
//                   ),
//                 ),
//                 Positioned(
//                   left: 215,
//                   top: 20,
//                   child: Container(
//                     height: 20,
//                     width: 20,
//                     decoration: BoxDecoration(
//                       color: Colors.transparent,
//                       shape: BoxShape.circle,
//                       border: Border.all(color: Colors.white,width: 2.9)
//                     ),
                    
                     
                  
//                   ),
//                 ),
//               ],
//             ),
//             SizedBox(height: 5,),
//             Container(
//               height: 20,
//               child: Text('Mostly Clear', style: TextStyle(fontSize: 20,color: Colors.white54))
//             ),
//             SizedBox(height: 2,),
//             Stack(children: [
//               Container(
//                 height: 20,
//                 width: 370,
//               ),
//               Positioned(
//                 left: 130,
//                 child: Container(
//                 height: 30,
//                 child: Text('H:24', style: TextStyle(fontSize: 20,color: Colors.white))
//                           ),
//               ),
//             Positioned(
//                 left: 190,
//                 child: Container(
//                 height: 30,
//                 child: Text('H:24', style: TextStyle(fontSize: 20,color: Colors.white))
//                           ),
//               ),
//               Positioned(
//                 top: 4,
//                   left: 172,
//                    child: Container(
//                     height: 6,
//                     width: 6,
//                     decoration: BoxDecoration(
//                       color: Colors.transparent,
//                       shape: BoxShape.circle,
//                       border: Border.all(color: Colors.white,width: 1.9)
//                     )),
//                 ),
//                 Positioned(
//                 top: 4,
//                   left: 232,
//                    child: Container(
//                     height: 6,
//                     width: 6,
//                     decoration: BoxDecoration(
//                       color: Colors.transparent,
//                       shape: BoxShape.circle,
//                       border: Border.all(color: Colors.white,width: 1.9)
//                     )),
//                 ),
//             ],)


//     ],);
    
    
//   }
//   Widget home(context){
//     return Stack(
//       children: [
//        Container(
//         height: 532,
//         width: MediaQuery.of(context).size.width,
//        ),
//         Positioned(
//           child: Container(
//             child: Image.asset(MyImage.home),
//             ),
//         ),
        
//         Positioned(
//           top: MediaQuery.of(context).size.height*0.24,
//           child: Container(
            
           
//             child: Stack(
//               children: [
               
//                 Container(child: Container(child: Image.asset(MyImage.bottomSheet,width: 412,))),
//                 Positioned(
//                   top: MediaQuery.of(context).size.height*0.034,
//                   child: Container(
//                   child: Column(
                   
//                   children: [
//                     Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
//                      children: [
//                       Container(
//                     padding: EdgeInsets.only(left: 10),
//                     child: Text('Hourly Forecast', style: TextStyle(fontSize: 20, color: Colors.white54),),
//                   ),
//                   Container(
//                     padding: EdgeInsets.only(left: 100),
//                     child: Text('Weekly Forecast', style: TextStyle(fontSize: 20, color: Colors.white54),),
//                   ),
//                     ],),
//                   Divider(thickness: 5, color: Color(0xFFA499C0,),)
                  
//                   ],),
//                                ),

//                 ),
//                 Positioned(
//                 top: MediaQuery.of(context).size.height*0.33,
//                 left: MediaQuery.of(context).size.width*0.12,
//                 child: InkWell(
//                 onTap: () {
//                   Navigator.push(context, MaterialPageRoute(builder: (_)=> Center()));
//                 },
//                 child: SvgPicture.asset(MyImage.nastroyka,width: 26,))),
//                 Positioned(
//                 top: MediaQuery.of(context).size.height*0.34,
//                 left: MediaQuery.of(context).size.width*0.8,
//                 child: InkWell(
//                   onTap: (){
//                     Navigator.push(context, MaterialPageRoute(builder: (_)=> Menu()));
                    
//                   },
//                   child: SvgPicture.asset(MyImage.menu,width: 26,))),
//                 Positioned(
//                   top: MediaQuery.of(context).size.height*0.07,
//                   child: Padding(
//                     padding: const EdgeInsets.only(left: 15),
//                     child: Container(
//                       height: MediaQuery.of(context).size.height*0.2,
//                       width: MediaQuery.of(context).size.width*1,
//                       child: ListView.separated(
//                       scrollDirection: Axis.horizontal,
//                       itemCount: 10,
//                       itemBuilder: ((context, index) {
//                         return ob_havo(context);
//                       }),
//                       separatorBuilder: (context, index) {
//                         return SizedBox(width: MediaQuery.of(context).size.height*0.02,);
//                       },
                      
//                       ),
//                     ),
//                   ),
//                 )
                
//               ],
//             ),)),
//           Positioned(
//              left: MediaQuery.of(context).size.width*0.13,
//              top: MediaQuery.of(context).size.width*1.075,
//              child: Stack(
//                children: [
//                  Container(
                 
//                  child: SvgPicture.asset(MyImage.plus_background,width: 290,color: 
//                  Color(0xFF373A6B),)),
//                  Positioned(
//                   top: MediaQuery.of(context).size.height*0.005,
//                  left: MediaQuery.of(context).size.width*0.283,
//                  child: Container(child:Image.asset(MyImage.plus,
//                  width: 80,))),
                 
            
//                ],
//              )), 
               
//       ],
//     );
//   }
 
// Widget ob_havo(context){
//   return Positioned(
//                 top: MediaQuery.of(context).size.height*0.03,
//                 left: MediaQuery.of(context).size.width*0.1,
//                 child: Container(
//                  height: MediaQuery.of(context).size.height*0.2,
//                  width: MediaQuery.of(context).size.width*0.18, 
//                  decoration: BoxDecoration(
//                   gradient: LinearGradient(
//                     begin: Alignment.centerLeft,
//                     end: Alignment.centerRight,
//                     colors: [
//                     Color(0xFF353159),
//                     Color(0xFF504773),
//                   ]),
//                   borderRadius: BorderRadius.circular(30)
//                  ),
//                  child: Column(children: [
//                   SizedBox(height: MediaQuery.of(context).size.height*0.012,),
//                   Container(
//                     child: Text('12 AM', style: TextStyle(fontSize: 20, color: Colors.white,
//                     fontWeight: FontWeight.w500),),
//                   ),
//                   SizedBox(height: MediaQuery.of(context).size.height*0.02,),
//                   Container(
//                     child: Image.asset(MyImage.cloud_rain,width: 40,),
//                   ),
//                   Container(
//                     child: Text('30%', style: TextStyle(fontSize: 14, color: Color(0xFF40CBD8),
//                     fontWeight: FontWeight.w500),),
//                   ),
//                   SizedBox(height: MediaQuery.of(context).size.height*0.023,),
//                   Container(
//                     child: Stack(
//                       children: [
//                         Container(
//                           height: MediaQuery.of(context).size.height*0.03,
//                           width: MediaQuery.of(context).size.width*0.14,
//                         ),
//                         Positioned(
//                           left: MediaQuery.of(context).size.width*0.025,
//                           child: Text('19', style: TextStyle(fontSize: 22, color: Colors.white,
//                           fontWeight: FontWeight.w500),),
//                         ),
//                         Positioned(
//                           top: MediaQuery.of(context).size.height*0.005,
//                           left: MediaQuery.of(context).size.width*0.09,
//                           child: Container(
//                                             height: 8,
//                                             width: 8,
//                                             decoration: BoxDecoration(
//                                               color: Colors.transparent,
//                                               shape: BoxShape.circle,
//                                               border: Border.all(color: Colors.white,width: 1.9)
//                                             ),
                                            
                                             
                                          
//                                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                  ]),
                
//                 ),

//               ) ;
// }
// }