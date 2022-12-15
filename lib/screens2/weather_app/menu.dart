// import 'dart:ffi';

// import 'package:flutter/material.dart';
// import 'package:flutter/src/widgets/container.dart';
// import 'package:flutter/src/widgets/framework.dart';
// import 'package:flutter_svg/flutter_svg.dart';
// import 'package:weather_app/utils/images.dart';

// class Menu extends StatelessWidget {
//   const Menu({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SingleChildScrollView(

//         child: SizedBox(
//           height: MediaQuery.of(context).size.height*1.5,
//           child: Container(
//           height: MediaQuery.of(context).size.height,  
//           width: MediaQuery.of(context).size.width,
//           decoration: BoxDecoration(
//            gradient: LinearGradient(
//             begin: Alignment.topCenter,
//             end: Alignment.bottomCenter,
//             colors: [
//             Color(0xFF2C3056),
//             Color(0xFF442C7B),
//             Color(0xFF2C224F),
//           ]) 
//           ),
          
//           child: 
//           Column(children: [
//             SizedBox(height: MediaQuery.of(context).size.height*0.06,),
//             appBar(context),
//             SizedBox(height: MediaQuery.of(context).size.height*0.01,),
//             search(context),
//             List(context),
              
          
//           ],)),
//         ),
//       ),
//     );
//   }

//   Widget search(context){
//     return Container(
//                           height: MediaQuery.of(context).size.height*0.05,
//                           width: MediaQuery.of(context).size.width*0.92,
//                           decoration: BoxDecoration(
//                             color:  Color(0xFF21233F),
//                             borderRadius: BorderRadius.circular(15),
//                             border: Border.all(color: Colors.white54)
//                           ),
//                           child: TextField(
//                             cursorHeight: 28,
//                             onChanged: (value) {
//                             },
//                             enableIMEPersonalizedLearning:false,
//                             strutStyle:StrutStyle(fontSize: 22),
//                             style: TextStyle(color: Colors.white,
//                             fontSize: 20),
//                             decoration: InputDecoration(
//                               icon: Padding(
//                                 padding: const EdgeInsets.only(left: 10),
//                                 child: Icon(Icons.search,color: Colors.white54,
//                                 size: 30,),
//                               )
//                               ,
//                               border: InputBorder.none,
//                               alignLabelWithHint:false,
                              
                      
//                               hintText: ' Search for a city or airport',
//                               hintStyle: TextStyle(color:  Colors.white54),
                              
                      
//                             )
//                 ),
//                 );
//   }
//   Widget appBar(context){
//     return  Row(
//         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//          children: [
//            Row(children: [
//             Container(child: IconButton(icon: Icon(Icons.arrow_back_ios_rounded,color: Colors.white54,),
//             onPressed: (){
//               Navigator.pop(context);
//             }
//            ,),),
//            Container(
//             child: Text('Weather',style: TextStyle(fontSize: 25,color: Colors.white),),
//            ),
//            ]),
//           Container(
//             padding: EdgeInsets.only(right: 18),
//             child: SvgPicture.asset(MyImage.nuqta)
//            ),
//          ],
//        );
//   }
//   Widget List(context){
//     return Container(
//       padding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width*0.05),
//       height: MediaQuery.of(context).size.height,
//       width: MediaQuery.of(context).size.width,
//       child: ListView.separated(
//         itemCount: 5,
//         itemBuilder: ((context, index) {
//         return Container(
//          child: Stack(children: [
//            Container(
//             child: Image.asset(MyImage.cloud),
            
//            ),
//            Positioned(
//                   top: MediaQuery.of(context).size.height*0.04,
//                   left: MediaQuery.of(context).size.width*0.04,
//                   child: Container(
//                     child: Text('19', style: TextStyle(fontSize: 70,color: Colors.white,letterSpacing: -10,
//                     fontWeight: FontWeight.w400))
                
//                   ),
//                 ),
//           Positioned(
//             top: MediaQuery.of(context).size.height*0.058,
//                   left: MediaQuery.of(context).size.width*0.2,
//                   child: Container(
//                     height: 20,
//                     width: 20,
//                     decoration: BoxDecoration(
//                       color: Colors.transparent,
//                       shape: BoxShape.circle,
//                       border: Border.all(color: Colors.white,width: 3.9)
//                     ),
                
                    
                     
                  
//                   ),
//                 ),
//                 Positioned(
//                   top: MediaQuery.of(context).size.height*0.14,
//                   right: MediaQuery.of(context).size.width*0.06,
//                   child: gradus(context)),
//                 Positioned(
//                   left: MediaQuery.of(context).size.width*0.04,
//                   top: MediaQuery.of(context).size.height*0.18,
//                   child: 
//                 Container(
                 
//                   child: Text('Toronto,Canada', style: TextStyle(color: Colors.white),),
//                 )),
//                 Positioned(
//                   left: MediaQuery.of(context).size.width*0.7,
//                   top: MediaQuery.of(context).size.height*0.18,
//                   child: 
//                 Container(
                 
//                   child: Text('Fast Wind', style: TextStyle(color: Colors.white),),
//                 )),
            
//            Positioned(
//             top: -MediaQuery.of(context).size.width*0.024,
//             left: MediaQuery.of(context).size.width*0.5,
//               child: Image.asset(MyImage.cloud_rain, width: 160,),)

//          ]),
//         );
//       }),
//       separatorBuilder: (context, index) {
//                         return SizedBox(height: MediaQuery.of(context).size.height*0.03,);
//                       },
      
      
      
//       ));
//   }
//   Widget gradus(context){
//     return Stack(children: [
//               Container(
//                 height: 20,
//                 width: 370,
//               ),
//               Positioned(
//                 left: MediaQuery.of(context).size.width*0.1,
//                 child: Container(
//                 height: 30,
//                 child: Text('H:24', style: TextStyle(fontSize: 16,color: Colors.white38))
//                           ),
//               ),
//             Positioned(
//                 left: MediaQuery.of(context).size.width*0.21,
//                 child: Container(
//                 height: 30,
//                 child: Text('L:24', style: TextStyle(fontSize: 16,color: Colors.white38))
//                           ),
//               ),
//               Positioned(
//                 top: 4,
//                   left: MediaQuery.of(context).size.width*0.18,
//                    child: Container(
//                     height: 6,
//                     width: 6,
//                     decoration: BoxDecoration(
//                       color: Colors.transparent,
//                       shape: BoxShape.circle,
//                       border: Border.all(color: Colors.white38,width: 1.9)
//                     )),
//                 ),
//                 Positioned(
//                 top: 4,
//                   left: MediaQuery.of(context).size.width*0.285,
//                    child: Container(
//                     height: 6,
//                     width: 6,
//                     decoration: BoxDecoration(
//                       color: Colors.transparent,
//                       shape: BoxShape.circle,
//                       border: Border.all(color: Colors.white38,width: 1.9)
//                     )),
//                 ),
                
//             ],);
//   }

// }