import 'package:flutter/material.dart';
import 'package:flutter_application_1/Utils/MyStylis.dart';
import 'package:flutter_application_1/Utils/colors.dart';
import 'package:flutter_application_1/Utils/images.dart';
import 'package:flutter_application_1/screens/Call2.dart';
import 'package:flutter_application_1/screens/Payment_method.dart';
import 'package:flutter_application_1/screens/Video.dart';
import 'package:flutter_application_1/screens/contact.dart';
import 'package:flutter_application_1/screens2/all/Surat.dart';

class instprofile extends StatefulWidget {
  const instprofile({super.key});

  @override
  State<instprofile> createState() => _instprofileState();
}

class _instprofileState extends State<instprofile> {

  
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Center(
           child:Padding(padding: EdgeInsets.only(left: 60, top: 30),
             child: Text(
              'Boburjon',
              style: Mystyle.BentonSansBold700.copyWith(
                fontSize: 25,
                color: Colors.black,
              ),
                     ),
           )),
          backgroundColor: Colors.white,
          elevation: 0,
          actions: [
            Padding(
                padding: EdgeInsets.only(right: 20, top: 30),
                child: Image.asset(
                  MyImages.Image_tochka2
                  ,
                  width: 18,
                )),
          ],
          
        ),
        body: SingleChildScrollView(physics: BouncingScrollPhysics(),
            child: Column(children: [
            podpis(),
            SizedBox(height: 10,),
            comment(),
            SizedBox(height: 10,),
            Button(),
            SizedBox(height: 15,),
            Buttons(),
            SizedBox(height: 15,),
            Statuslar(),
            tabBar(),
            
               
              ]),
        ),
    ),
    );
  }

Widget Profile(){
  return Column(
    
    children: [
    SizedBox(height: 5,),
    Container(
              height: 80,
              width: 80,
              decoration: BoxDecoration(
              
              boxShadow:[BoxShadow(
              color: Colors.red,
              spreadRadius: 3.5

              ),] ,

              shape: BoxShape.circle
              ),
              child: Container(
              height: 70,
              width: 70,
              decoration: BoxDecoration(
              
              boxShadow:[BoxShadow(
              color: Colors.white,
              spreadRadius: 1.5

              ),] ,

              shape: BoxShape.circle
              ),
                
                child: 
              InkWell(
                onTap: (){},
                child: Container(
                decoration: BoxDecoration(
                shape: BoxShape.circle,
              
                image: DecorationImage(
                image: NetworkImage("https://i.pravatar.cc/300?img=${60}"), fit: BoxFit.fill,)
          ),
                )
              ),
                  ),
                 
    ),
  
  ],
    
  );
}

Widget tabBar(){
  return Column(children: [
         
          Container(
            child: TabBar(
            indicatorColor: Colors.black,
            tabs: [
            Tab(
              icon: Image.asset(MyImages.Image_video, color: Colors.black,width: 20,),
            ),
            Tab(
              icon: Image.asset(MyImages.Image_contact, color: Colors.black,width: 20,),
            ),
          ]),
          ),
          Container(
            height: MediaQuery.of(context).size.height * 0.836,
            child:  TabBarView(children: [
          Surat(),
          contact(),
        ])),
      

        ],);
       
}

Widget podpis(){
  return Container(
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Profile(),
        Column(children: [
          Container(child: Text('0,000',style: TextStyle(fontWeight: FontWeight.w800, fontSize: 18))),
          Container(child: Text('Posts',style: TextStyle(fontWeight: FontWeight.w500, fontSize: 15))),
        ],),
        Column(children: [
          Container(child: Text('0,000',style: TextStyle(fontWeight: FontWeight.w800, fontSize: 18))),
          Container(child: Text('Follewers',style: TextStyle(fontWeight: FontWeight.w500, fontSize: 15))),
        ],),
        Column(children: [
          Container(child: Text('0,000',style: TextStyle(fontWeight: FontWeight.w800, fontSize: 18))),
          Container(child: Text('Follewing',style: TextStyle(fontWeight: FontWeight.w500, fontSize: 15))),
        ],)
      ],),
  );
}

Widget comment(){
  return Column(children: [
     Container(
      alignment: Alignment.centerLeft,
      padding: EdgeInsets.only(left: 16),
      child: Text('Username',style: TextStyle(fontWeight: FontWeight.w800, fontSize: 18)),),
     Stack(children: [
      Container(
      alignment: Alignment.centerLeft,
      padding: EdgeInsets.only(left: 16),
      child: Text('Lorem ipsum dolor sit amet, consectetur adipis elit, sed do eiusmod tempor',style: TextStyle(fontSize: 18)),),
    Positioned(
      top: 20,
      left: 240,
      child: Text('#hashtag',style: TextStyle(fontSize: 18, color: Colors.blue)),),
    ]),
    Container(
      alignment: Alignment.centerLeft,
      padding: EdgeInsets.only(left: 16),
      child: Text('Like goes here',style: TextStyle(fontSize: 18, color: Colors.blue)),),
    Stack(children: [
      Container(
        alignment: Alignment.centerLeft,
        padding: EdgeInsets.only(left: 16),
        child: Text('Followed by                    and',style: TextStyle(fontSize: 18)),),
    Positioned(
      left: 114,
      child: Text('username',style: TextStyle(fontWeight: FontWeight.w800, fontSize: 18)),),
    Positioned(
      left: 236,
      child: Text('username',style: TextStyle(fontWeight: FontWeight.w800, fontSize: 18)),),

    ],
    
    ),
      
    
  ]);
}

Widget Button(){
  return Container(
                 
                  height: 40,
                  width: 380,
                  child: Container(
                    decoration: BoxDecoration(
                      
                      color: myColors.C_FFFFFF,
                      boxShadow: [
                       BoxShadow(
                        
                        color: Colors.black12,
                         blurRadius: 10,
                           offset: Offset(1, 1),
                               ),
                                ], 
                      borderRadius: BorderRadius.all(Radius.circular(3)),
                    ),
                   
                    child: Container(
                      alignment: Alignment.center,
                      child: Text('Button', style: TextStyle(fontWeight: FontWeight.w800, fontSize: 18)))
                    


                    
                  ));

              
            
}

Widget Buttons(){
  return Container(
    padding: EdgeInsets.only(left: 8, right: 8),
    child: Row(
         mainAxisAlignment: MainAxisAlignment.spaceAround,
         children: [
         Container(
                    height: 40,
                    width: 98,
                    child: Container(
                      decoration: BoxDecoration(
                        
                        color: myColors.C_FFFFFF,
                        boxShadow: [
                         BoxShadow(
                          
                          color: Colors.black12,
                           blurRadius: 10,
                             offset: Offset(1, 1),
                                 ),
                                  ], 
                        borderRadius: BorderRadius.all(Radius.circular(3)),
                      ),
                     
                      child: Container(
                        alignment: Alignment.center,
                        child: Text('Follow', style: TextStyle(fontWeight: FontWeight.w800, fontSize: 18)))
                  )),
            Container(
                    height: 40,
                    width: 98,
                    child: Container(
                      decoration: BoxDecoration(
                        
                        color: myColors.C_FFFFFF,
                        boxShadow: [
                         BoxShadow(
                          
                          color: Colors.black12,
                           blurRadius: 10,
                             offset: Offset(1, 1),
                                 ),
                                  ], 
                        borderRadius: BorderRadius.all(Radius.circular(3)),
                      ),
                     
                      child: Container(
                        alignment: Alignment.center,
                        child: Text('Message', style: TextStyle(fontWeight: FontWeight.w800, fontSize: 18)))
                  )),
            Container(
                    height: 40,
                    width: 98,
                    child: Container(
                      decoration: BoxDecoration(
                        
                        color: myColors.C_FFFFFF,
                        boxShadow: [
                         BoxShadow(
                          
                          color: Colors.black12,
                           blurRadius: 10,
                             offset: Offset(1, 1),
                                 ),
                                  ], 
                        borderRadius: BorderRadius.all(Radius.circular(3)),
                      ),
                     
                      child: Container(
                        alignment: Alignment.center,
                        child: Text('Email', style: TextStyle(fontWeight: FontWeight.w800, fontSize: 18)))
                  )),
          Container(
                    height: 40,
                    width: 40,
                    child: Container(
                      decoration: BoxDecoration(
                        
                        color: myColors.C_FFFFFF,
                        boxShadow: [
                         BoxShadow(
                          
                          color: Colors.black12,
                           blurRadius: 10,
                             offset: Offset(1, 1),
                                 ),
                                  ], 
                        borderRadius: BorderRadius.all(Radius.circular(3)),
                      ),
                     
                      child: Container(
                        alignment: Alignment.center,
                        child: Image.asset(
                        MyImages.Image_down,
                        width: 12,)),)),
              
  
    ]),
  );

}

Widget Statuslar(){
  return Container(
    height: 90,
    width: double.infinity,
    child: ListView.separated(
      padding: EdgeInsets.only(left: 18),
      scrollDirection: Axis.horizontal,
      itemCount: 10,
      itemBuilder: (BuildContext context, int index){
        return Column(
    
    children: [
    SizedBox(height: 5,),
    Container(
              height: 70,
              width: 70,
              decoration: BoxDecoration(
              
              boxShadow:[BoxShadow(
              color: Colors.black26,
              spreadRadius: 3.5

              ),] ,

              shape: BoxShape.circle
              ),
              child: Container(
              height: 69,
              width: 69,
              decoration: BoxDecoration(
              
              boxShadow:[BoxShadow(
              color: Colors.white,
              spreadRadius: 1.5

              ),] ,

              shape: BoxShape.circle
              ),
                
                child: 
              InkWell(
                onTap: (){},
                child: Container(
                decoration: BoxDecoration(
                shape: BoxShape.circle,
              
                image: DecorationImage(
                image: NetworkImage("https://i.pravatar.cc/300?img=${index}"), fit: BoxFit.fill,)
          )))),
                 
    ),
  
  ],
    
  );
      },
      separatorBuilder: (BuildContext context, int index){
        return SizedBox(
          width: 20);
        }
      ),

  );
  
  
}

}
