// import 'dart:ffi';

// import 'package:flutter/material.dart';
// import 'package:flutter/src/widgets/container.dart';
// import 'package:flutter/src/widgets/framework.dart';
// import 'package:flutter_svg/flutter_svg.dart';
// import 'package:flutter_svg/parser.dart';
// import 'package:weather_app/utils/images.dart';

// class CenterWidget extends StatelessWidget {
//   const CenterWidget({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Container(
//         height: MediaQuery.of(context).size.height,
//         width: MediaQuery.of(context).size.width,
//         decoration: BoxDecoration(
//            gradient: LinearGradient(
//             begin: Alignment.topCenter,
//             end: Alignment.bottomCenter,
//             colors: [
//             Color(0xFF3E2E68),
//             Color(0xFF4D2E86),
//             Color(0xFF3E3664),
//           ]) 
//           ),
//         child: Column(children: [
          
//           Container(
//           color: Color(0xFF2C3056),
//           height: MediaQuery.of(context).size.height*0.24,
//           width: MediaQuery.of(context).size.width,
//           child: Column(children: [
//             SizedBox(height: MediaQuery.of(context).size.height*0.085),
//             Container(child: Text('Montreal',style: TextStyle(fontSize: 35,
//             color: Colors.white),),),
//             Container(child: Text('19° | Mostly Clear',style: TextStyle(fontSize: 22,
//             color: Colors.white38),),),
//           ]),
//           ),
//           Stack(
//             children: [
//               Container(
//                 height: MediaQuery.of(context).size.height*0.05,
//                 width: MediaQuery.of(context).size.width,
//               ),
//               Container(
//               child: SvgPicture.asset(MyImage.chiziq,width: 450,),),
//               Positioned(
//                 top: MediaQuery.of(context).size.height*0.012,
//                 left: MediaQuery.of(context).size.width*0.43,
//                 child: Container(child: SvgPicture.asset(MyImage.indecator),))
//             ],
//           ),
//           Air_Quality(context),
//           SizedBox(height: MediaQuery.of(context).size.height*0.02,),
//           rezultat(context),
//           SizedBox(height: MediaQuery.of(context).size.height*0.02,),
//           rezultat2(context),
//         ]),
//       ),
//     );
//   }

//   Widget Air_Quality(context){
//     return Container(
//      height: MediaQuery.of(context).size.height*0.2,
//      width: MediaQuery.of(context).size.width*0.9,
     
//      decoration: BoxDecoration(
//      color: Color(0xFF282253), 
//      borderRadius: BorderRadius.circular(18)
//      ),
//      child: Column(
//       mainAxisAlignment: MainAxisAlignment.start,
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
      
//       Padding(
//         padding: EdgeInsets.only(top: MediaQuery.of(context).size.height*0.01),
//         child: Row(
//           children: [
//             Container(
//               child: IconButton(icon: Icon(Icons.star_border,size: 24, color: Colors.white70),onPressed: (){},),
//             ),
//             Container(
//             child: Text('AIR QUALITY',style: TextStyle(fontSize: 16,color: Colors.white38))),
            
//           ],
//         ),
//       ),
//       Container(
//       padding: EdgeInsets.only(top: MediaQuery.of(context).size.height*0.008, left: MediaQuery.of(context).size.height*0.02), 
//       child: Text('3-Low Health Risk',style: TextStyle(fontSize: 16,color: Colors.white))),
//       SizedBox(height: MediaQuery.of(context).size.height*0.02,),
//       Padding(
//         padding: EdgeInsets.only(left: MediaQuery.of(context).size.width*0.04),
//         child: Container(
//          padding: EdgeInsets.only(left: MediaQuery.of(context).size.height*0.02), 
//          height: MediaQuery.of(context).size.height*0.005,
//           width: MediaQuery.of(context).size.width*0.8,
//           decoration: BoxDecoration(
//             gradient: LinearGradient(
//               begin: Alignment.centerLeft,
//               end: Alignment.centerRight,
//                colors: [
//               Color(0xFF4158B5),
//               Color(0xFF7A58CE),
//               Color(0xFFC656DF),
//               Color(0xFFDD46A3),
//             ]),
//             borderRadius: BorderRadius.circular(12)
//           ),
//         ),
//       ),
//       Padding(
//         padding: EdgeInsets.only(top: MediaQuery.of(context).size.height*0.016, left: MediaQuery.of(context).size.height*0.02), 
//         child: Row(
//           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//           children: [
//             Container(
            
//             child: Text('See more',style: TextStyle(fontSize: 18,color: Colors.white70))),
//             Container(
//             child: IconButton(icon: Icon(Icons.chevron_right_outlined,size: 28, color: Colors.white70),onPressed: (){},))
//           ],
//         ),
//       ),
//      ],),
//     );
//   }

//  Widget rezultat(context){
//   return Row(
//     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//     children: [
//       Padding(
//         padding:  EdgeInsets.only(left: MediaQuery.of(context).size.width*0.01),
//         child: Container(
//            height: MediaQuery.of(context).size.height*0.21,
//            width: MediaQuery.of(context).size.width*0.43,
           
//            decoration: BoxDecoration(
//            color: Color(0xFF282253), 
//            borderRadius: BorderRadius.circular(22)
//            ),
//            child: Column(
//             mainAxisAlignment: MainAxisAlignment.start,
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
            
//             Padding(
//               padding: EdgeInsets.only(top: MediaQuery.of(context).size.height*0.01),
//               child: Row(
//                 children: [
//                   Container(
//                     child: IconButton(icon: Icon(Icons.light_mode,size: 22, color: Colors.white70),onPressed: (){},),
//                   ),
//                   Container(
//                   child: Text('UV INDEX',style: TextStyle(fontSize: 16,color: Colors.white38))),
                  
//                 ],
//               ),
//             ),
//             Container(
//             height: MediaQuery.of(context).size.height*0.048,
//             padding: EdgeInsets.only( left: MediaQuery.of(context).size.height*0.02), 
//             child: Text('4',style: TextStyle(fontSize: 36,color: Colors.white))),
            
//             Container(
//             padding: EdgeInsets.only( left: MediaQuery.of(context).size.height*0.02,), 
//             child: Text('Moderate',style: TextStyle(fontSize: 20,color: Colors.white))),
//             SizedBox(height:MediaQuery.of(context).size.height*0.02,),
//             Padding(
//               padding:  EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.height*0.02),
//               child: Container(
//                 padding: EdgeInsets.only(top: MediaQuery.of(context).size.height*0.01, left: MediaQuery.of(context).size.height*0.02), 
//                 height: MediaQuery.of(context).size.height*0.005,
//                 width: MediaQuery.of(context).size.width*0.8,
//                 decoration: BoxDecoration(
//                   gradient: LinearGradient(
//                     begin: Alignment.centerLeft,
//                     end: Alignment.centerRight,
//                      colors: [
//                     Color(0xFF4158B5),
//                     Color(0xFF7A58CE),
//                     Color(0xFFC656DF),
//                     Color(0xFFDD46A3),
//                   ])
//                 ),
//               ),
//             ),
           
//            ],),
//           ),
//       ),

//         Padding(
//           padding: EdgeInsets.only(right: MediaQuery.of(context).size.width*0.01),
//           child: Container(
//            height: MediaQuery.of(context).size.height*0.21,
//            width: MediaQuery.of(context).size.width*0.43,
           
//            decoration: BoxDecoration(
//            color: Color(0xFF282253), 
//            borderRadius: BorderRadius.circular(22)
//            ),
//            child: Column(
//             mainAxisAlignment: MainAxisAlignment.start,
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
            
//             Padding(
//               padding: EdgeInsets.only(top: MediaQuery.of(context).size.height*0.01),
//               child: Row(
//                 children: [
//                   Container(
//                     child: IconButton(icon: Icon(Icons.light_mode,size: 24, color: Colors.white70),onPressed: (){},),
//                   ),
//                   Container(
//                   child: Text('RAINFALL',style: TextStyle(fontSize: 16,color: Colors.white38))),
                  
//                 ],
//               ),
//             ),
//             Container(
//             padding: EdgeInsets.only( left: MediaQuery.of(context).size.height*0.02), 
//             child: Text('1.8 mm',style: TextStyle(fontSize: 30,color: Colors.white, fontWeight: FontWeight.w400))),

//             Container(
//               padding: EdgeInsets.only(top: MediaQuery.of(context).size.height*0.00, left: MediaQuery.of(context).size.height*0.02), 
//               child: Text('in last hour', style: TextStyle(fontSize: 22, color: Colors.white),),),
            
//              Container(
//               padding: EdgeInsets.only(top: MediaQuery.of(context).size.height*0.008, left: MediaQuery.of(context).size.height*0.02), 
//               child: Text('1.2 mm expected in\nnext 24h.', style: TextStyle(fontSize: 14, color: Colors.white70),),),
           
//            ],),
//           ),
//         ),
//     ],
//   );
//  }
 
//  Widget rezultat2(context){
//   return Row(
//     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//     children: [
//       Padding(
//         padding:  EdgeInsets.only(left: MediaQuery.of(context).size.width*0.01),
//         child: Container(
//            height: MediaQuery.of(context).size.height*0.21,
//            width: MediaQuery.of(context).size.width*0.43,
           
//            decoration: BoxDecoration(
//            color: Color(0xFF282253), 
//            borderRadius: BorderRadius.circular(22)
//            ),
//            child: Column(
//             mainAxisAlignment: MainAxisAlignment.start,
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
            
//             Padding(
//               padding: EdgeInsets.only(top: MediaQuery.of(context).size.height*0.01),
//               child: Row(
//                 children: [
//                   Container(
//                     height: MediaQuery.of(context).size.height*0.05,
//                     child: IconButton(icon: Icon(Icons.light_mode,size: 22, color: Colors.white70),onPressed: (){},),
//                   ),
//                   Container(
//                   child: Text('FEELS LIKE',style: TextStyle(fontSize: 16,color: Colors.white38))),
                  
//                 ],
//               ),
//             ),
//             Container(
//             height: MediaQuery.of(context).size.height*0.048,
//             padding: EdgeInsets.only( left: MediaQuery.of(context).size.height*0.02), 
//             child: Text('19°',style: TextStyle(fontSize: 32,color: Colors.white))),
            
//             Container(
//             padding: EdgeInsets.only(top: MediaQuery.of(context).size.height*0.035, left: MediaQuery.of(context).size.height*0.02,), 
//             child: Text('Similar to the actual\ntempreature.',style: TextStyle(fontSize: 16,color: Colors.white))),
//             SizedBox(height:MediaQuery.of(context).size.height*0.02,),
            
           
//            ],),
//           ),
//       ),

//       Padding(
//         padding:  EdgeInsets.only(left: MediaQuery.of(context).size.width*0.01),
//         child: Container(
//            height: MediaQuery.of(context).size.height*0.21,
//            width: MediaQuery.of(context).size.width*0.43,
           
//            decoration: BoxDecoration(
//            color: Color(0xFF282253), 
//            borderRadius: BorderRadius.circular(22)
//            ),
//            child: Column(
//             mainAxisAlignment: MainAxisAlignment.start,
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
            
//             Padding(
//               padding: EdgeInsets.only(top: MediaQuery.of(context).size.height*0.01),
//               child: Row(
//                 children: [
//                   Container(
//                     height: MediaQuery.of(context).size.height*0.05,
//                     child: IconButton(icon: Icon(Icons.light_mode,size: 22, color: Colors.white70),onPressed: (){},),
//                   ),
//                   Container(
//                   child: Text('FEELS LIKE',style: TextStyle(fontSize: 16,color: Colors.white38))),
                  
//                 ],
//               ),
//             ),
//             Container(
//             height: MediaQuery.of(context).size.height*0.048,
//             padding: EdgeInsets.only( left: MediaQuery.of(context).size.height*0.02), 
//             child: Text('90%',style: TextStyle(fontSize: 32,color: Colors.white))),
            
//             Container(
//             padding: EdgeInsets.only(top: MediaQuery.of(context).size.height*0.035, left: MediaQuery.of(context).size.height*0.02,), 
//             child: Text('The dew point is 17\nright now.',style: TextStyle(fontSize: 16,color: Colors.white))),
//             SizedBox(height:MediaQuery.of(context).size.height*0.02,),
            
           
//            ],),
//           ),
//       ),

//     ],
//   );
//  }

// }