import 'package:flutter/material.dart';
import 'package:flutter_application_1/Utils/MyStylis.dart';
import 'package:flutter_application_1/Utils/images.dart';
class HomePage21 extends StatefulWidget {
  const HomePage21({super.key});

  @override
  State<HomePage21> createState() => _HomePage21State();
}

class _HomePage21State extends State<HomePage21> {
  var stuff = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
           TextButton(onPressed: (){}, child: Icon(Icons.search, size: 30, color: 
          Colors.white,)),],
        title: Text('Daryo')),
      drawer: Drawer(child: ListView(children: [
        DrawerHeader(
          padding: EdgeInsets.zero,
          child: Stack(children: [
            Container(
              color: Colors.blue,
          ),
           Positioned(
            left: 8,
            top: 15,
            child:Text('Daryo', style: Mystyle.BentonSansBook400.copyWith(
              fontSize: 27, color: 
            Colors.white))),
          Positioned(
            top: 90,
            left: 8,
            child: Text('Tashkent',style: Mystyle.BentonSansBook400.copyWith(
              fontSize: 17, color: 
            Colors.white))),
          Positioned(
            top: 90,
            left: 225,
            child: Icon(Icons.backup_rounded,color: Colors.white,)),
          Positioned(
            top: 95,
            left: 255,
            child: Text('+12.0',style: Mystyle.BentonSansBook400.copyWith(
              fontSize: 15, color: 
            Colors.white))),
          Positioned(
            top: 12,
            left: 100,
            child: Container(
               width: 190,
               height: 35,
               decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(100)),
                child: Row(children: [
                  Expanded(
                    
                    child: Container(
                    padding: EdgeInsets.only(left: 10),
                      child: Text('Lotincha',style: TextStyle(fontSize: 18),),
                    ),
                  ),
                  SizedBox(width: 25,),
                  Expanded(
                    
                    child: Container(
                    child: Text('Кирилча',style: TextStyle(fontSize: 18)),
                    ),
                  ),

                ],),
            )),
            Positioned(
            top: 136,
            left: 35,
            child: Text('10769/78',style: Mystyle.BentonSansBook400.copyWith(
              fontSize: 15, color: 
            Colors.white))),
            Positioned(
            top: 135,
            left: 140,
            child: Text('12166.62',style: Mystyle.BentonSansBook400.copyWith(
              fontSize: 15, color: 
            Colors.white))),
            
            
            Positioned(
            top: 133,
            left: 8,
            child: Icon(Icons.monetization_on_outlined,color: Colors.white,)),

            Positioned(
            top: 133,
            left: 115,
            child: Icon(Icons.mode_standby_rounded, color: Colors.white,)),


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
          
        ListTile(
        tileColor: Colors.yellow[100],  
        onTap: () {},
        title: Text('Qollanma ekranini Korsatish', style: TextStyle(fontSize: 20),),
        ),
        ListTi('Songi yangiliklar'),
        ListTi('Mahaliy'),
        ListTi('Dunyo'),
        ListTi('Texnologiya'),
        ListTi('Tanlangan xabarlar'),
        ListTi('Madaniyat'),
        ListTi('Avto'),
        ListTi('Sport'),
        ListTi('Foto'),
        ListTi('Lifestyle'),
        ListTi('Kolumnistlar'),
        ListTi('Afisha'),
        
      ]),
      ),
      body: Container(child: 
      Column(children: [
        Container(child: 
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
        Container(
          padding: EdgeInsets.only(top: 10, left: 15),
          child: Text('Maslahatlar, Salo..', style: Mystyle.BentonSansBold700.copyWith(fontSize: 17
          , color: Colors.blue),),
        ),
        Container(
          padding: EdgeInsets.only(top: 10),
          child: Text('17:30|08 Decaber 2021|', style: Mystyle.BentonSansBold700.copyWith(
          color: Colors.black54),
        ),),
        Container(
          padding: EdgeInsets.only(top: 8),
          child: Icon(Icons.remove_red_eye_outlined)),
        
        Container(
          padding: EdgeInsets.only(top: 10, right: 5),
          child: Text('526', style: Mystyle.BentonSansBold700.copyWith(
          color: Colors.black54),
        ),),

         

      ],),), 
         Surat(MyImages.Image_green_noddle, 'O‘zbekistonga eng ko‘p qaysi oziq-ovqat\nmahsulotlari import qilinayotgani aytildi\nDavlat statistika qo‘mitasi 2022\n-yilningyanvar avgust oylaridaimport\nqilingan ayrim turdagioziq-ovqat\nmahsulotlari qiymati bo‘yicha.'),
         
        
         Container(child: Text('-------------------------------------------------------------------------------=----------------',),),
         
         Mundarija('Reklama', '15:00|08 Decaber 2021|', '12219'),
         Surat(MyImages.Image_fruit_salad, 'A salad is a dish consisting of\nmixed, mostly natural ingredients\nwith at least one raw ingredient.\nThey are often dressed, and typically\nserved at room temperature or chilled,\nthough some can be served warm.'),
         Container(child: Text('-------------------------------------------------------------------------------=----------------',),),

         Mundarija('Dunyo', '19:30|08 Decaber 2021|', '9226'),
         Surat(MyImages.Image_herbal_pancake, 'Tayyorlanishi oson va tez bo’lgan,\ntarkibiga tuxum qo’shilmaydigan\noddiy va mazzali keks. O’rtasi biroz\nnamli, juda shokoladli ta’mga ega\nbo’lib pishadi..'),
         Container(child: Text('-------------------------------------------------------------------------------=----------------',),),

         Reklama(MyImages.plisos, MyImages.plisos2, 'Reklama  ----------------------------------------------------------'),
         Container(child: Text('-------------------------------------------------------------------------------=----------------',),),
         Mundarija('Mahalliy.', '16:30|08 Decaber 2021|', '1326'),
         Surat(MyImages.Image_shahar1, 'Сурат упомянут в эпосе Махабхарата.\nСогласно эпосу здесь останавливался\nбог Кришна по пути из Матхуры в '),
         
         
         
      ],)),



    );
  }
  
  Widget ListTi(String text){
    return ListTile(
        onTap: () {},
        title: Text(text, style: TextStyle(fontSize: 20),),
        );
  }

  Widget Mundarija(String mundarija, String sana,String son){
    return Container(child: 
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
        Container(
          padding: EdgeInsets.only(top: 10, left: 15),
          child: Text(mundarija, style: Mystyle.BentonSansBold700.copyWith(fontSize: 17
          , color: Colors.blue),),
        ),
        Container(
          padding: EdgeInsets.only(top: 10),
          child: Text(sana, style: Mystyle.BentonSansBold700.copyWith(
          color: Colors.black54),
        ),),
        Container(
          padding: EdgeInsets.only(top: 8,left: 70),
          child: Icon(Icons.remove_red_eye_outlined)),
        
        Container(
          padding: EdgeInsets.only(top: 10, right: 5),
          child: Text(son, style: Mystyle.BentonSansBold700.copyWith(
          color: Colors.black54),
        ),),

         

      ],),);
  }


  Widget Surat(String surat, String word){
    return Container(child: 
      Row(
        
        children: [
        Container(
          
          padding: EdgeInsets.only(top: 10, left: 15),
          child: Image.asset(surat,width: 90,)
        ),
        Container(
          padding: EdgeInsets.only(top: 10, left: 15),
          child: Text(word, style: Mystyle.BentonSansBold700.copyWith(
          color: Colors.black54),
        ),),
       
         

      ],),);
  }


  Widget Reklama(String surat, String surat2, String word){
    return Container(child: 
      Column(
        
        children: [
        Container(
          padding: EdgeInsets.only(top: 10, left: 15),
          child: Text(word, style: Mystyle.BentonSansBold700.copyWith(
          color: Colors.black54),
        ),),
        Row(children: [
       Container(
            padding: EdgeInsets.only(top: 10, left: 30),
            child: Image.asset(surat,width: 160,)
          ),
       Container(
            padding: EdgeInsets.only(top: 10, left: 30),
            child: Image.asset(surat2,width: 160,)
          ),


        ],
          
        ),
       
         

      ],),);
  }
}



