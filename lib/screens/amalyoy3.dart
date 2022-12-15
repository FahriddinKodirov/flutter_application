import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_1/Utils/MyStylis.dart';
import 'package:flutter_application_1/Utils/colors.dart';
import 'package:flutter_application_1/Utils/images.dart';
import 'package:flutter_application_1/screens/amaliyot.dart';
import 'package:flutter_application_1/screens/amaliyot1.dart';
import 'package:flutter_application_1/screens/amaliyot2.dart';

class MyWidget3 extends StatefulWidget {
  const MyWidget3({super.key});

  @override
  State<MyWidget3> createState() => _MyWidget3State();
}

class _MyWidget3State extends State<MyWidget3> {
   
 
  

 
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
       appBar: AppBar(
        actions: [
           TextButton(onPressed: (){}, child: Icon(Icons.search, size: 30, color: 
          Colors.white,)),],
        title: Center(child: Text('Dubai, UAE'))),
      drawer: Drawer(
        
        child: ListView(children: [
        DrawerHeader(
          
          padding: EdgeInsets.zero,
          child: Stack(children: [
            Container(
              color: Colors.blue,
          ),
           Positioned(
            left: 8,
            top: 15,
            child:Text('Dubai', style: Mystyle.BentonSansBook400.copyWith(
              fontSize: 27, color: 
            Colors.white))),
          Positioned(
            top: 90,
            left: 8,
            child: Text('Sayohat',style: Mystyle.BentonSansBook400.copyWith(
              fontSize: 27, color: 
            Colors.white))),
         
          Positioned(
            top: 1,
            left: 119,
            child: Image.asset(MyImages.Image_dubai2,width: 185,)),
          
            Positioned(
            top: 136,
            left: 35,
            child: Text('10000',style: Mystyle.BentonSansBook400.copyWith(
              fontSize: 15, color: 
            Colors.white))),
            Positioned(
            top: 135,
            left: 140,
            child: Text('12166',style: Mystyle.BentonSansBook400.copyWith(
              fontSize: 15, color: 
            Colors.white))),
            
            
            Positioned(
            top: 133,
            left: 8,
            child: Icon(Icons.monetization_on_outlined,color: Colors.white,)),

            Positioned(
            top: 133,
            left: 115,
            child: Icon(Icons.euro, color: Colors.white,)),


            Positioned(
            top: 133,
            left: 230,
            child: Icon(Icons.mode_standby_outlined, color: Colors.white,)),
            Positioned(
            top: 136,
            left: 255,
            child: Text('14617',style: Mystyle.BentonSansBook400.copyWith(
              fontSize: 15, color: 
            Colors.white))),

            Positioned(
            top: 115,
            left: 8,
            child: Text('----------------------------------------------------------------',
            style: Mystyle.BentonSansBook400.copyWith(
              fontSize: 15, color: 
            Colors.grey)))
      ])
        ),
        
          
        
        ListTi('ovqat'),

        ListTi('chomilish'),
        ListTi('sayohat'),
        ListTi('mehmonhona'),
        ListTi('tolov'),
        ListTi('moshina'),
        ListTi('footbol'),
        ListTi('qaylula'),
        ListTi('foto'),
        ListTi('massaj'),
        ListTi('Kolumnistlar'),
        ListTi('Afisha'),
        
      ]),
      ),
      body: Container(
        child: Column(children: [
          Container(
            
            padding: EdgeInsets.only(top: 20, right: 150),
            child: Text('Good Mornig!',style: Mystyle.BentonSansBold700.copyWith(
              fontSize: 30,
            ),),
          ),
          SizedBox(height: 20,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
            stuff(Icons.connect_without_contact_outlined, 'Community', '52'),
            stuff(Icons.mark_unread_chat_alt_sharp, 'Forums', '94'),
          ],),
          SizedBox(height: 20,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
            
            Container(
      height: 150,
      width: 160,
      decoration: BoxDecoration(
        color: Colors.blue,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(children: [
        Container(
          
          padding: EdgeInsets.only(top: 20,right: 70),
          child: Icon(Icons.auto_delete,size: 45,),),
          Container(
            padding: EdgeInsets.only(right: 30, top: 8),
            child: Text('jobs',style: Mystyle.BentonSansBold700.copyWith(fontSize: 17),),),
          
          Row(
            children: [
            Container(
              padding: EdgeInsets.only(left: 30, top: 10),
              child: Text('94',style: Mystyle.BentonSansBold700.copyWith(fontSize: 25),),),
            Container(
              padding: EdgeInsets.only(left: 10, top: 10),
              child: Text('items',style: Mystyle.BentonSansBold700.copyWith(color: Colors.black38),),),
              
          ],
          
          ),
          
          
      
      ]),
    ),
     stuff(Icons.home_outlined, 'Housing', '32'),
          ],),
          SizedBox(height: 20,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
            stuff(Icons.account_circle_outlined, 'Housing', '32'),
            stuff(Icons.bookmark_outline_sharp, 'Jobs', '94'),
          ],),
          SizedBox(height: 20,)
,          Container(
            height: 70,
            width: 360,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20)
            ),
            child: Center(child: Text('View All'),)),
          
        ],),

      
      ),
      
    );
  }

 Widget ListTi(String text){
    return ListTile(
        
        onTap: () {},
        title: Text(text, style: TextStyle(fontSize: 20),),
        );
  }

  Widget stuff(icon,word,number){
    return Container(
      height: 150,
      width: 160,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(children: [
        Container(
          
          padding: EdgeInsets.only(top: 20,right: 70),
          child: Icon(icon,size: 45,),),
          Container(
            padding: EdgeInsets.only(right: 30, top: 8),
            child: Text(word,style: Mystyle.BentonSansBold700.copyWith(fontSize: 17),),),
          
          Row(
            children: [
            Container(
              padding: EdgeInsets.only(left: 30, top: 10),
              child: Text(number,style: Mystyle.BentonSansBold700.copyWith(fontSize: 25),),),
            Container(
              padding: EdgeInsets.only(left: 10, top: 10),
              child: Text('items',style: Mystyle.BentonSansBold700.copyWith(color: Colors.black38),),),
          ],
          
          ),

          
      
      ]),
    );
  }
}
