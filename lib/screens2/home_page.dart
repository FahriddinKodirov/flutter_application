import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens2/ustoz.dart';
import 'package:http/http.dart' as http;
import 'package:http/http.dart';
import 'package:flutter_application_1/screens2/fromjson.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Future<UstozData?> getData() async {
    String url = "https://api.github.com/users/ZayniddinMamarasulov";

    Response response = await http.get(Uri.parse(url));

    if (response.statusCode == 200) {
      Map<String, dynamic> json =
          jsonDecode(response.body) as Map<String, dynamic>;
      return UstozData.fromjson(json);
    }

    return null;
  }

  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
      ),
      body: FutureBuilder<UstozData?>(
        future: getData(),
        builder: (BuildContext context, AsyncSnapshot<UstozData?>snapshot) {
          if(snapshot.connectionState == ConnectionState.waiting){
            return Center(child: CircularProgressIndicator());
          }
          if (snapshot.hasError) {
            return Center(child: Text(snapshot.error.toString()));
          }
          if (snapshot.hasData){
            UstozData? ustozDAta = snapshot.data;
            return Container(
              width: double.infinity,
              margin: EdgeInsets.all(12),
              child: Column(
                
                children: [
                  Container(),
                  Row(
                    children: [
                      Container(
                      padding: EdgeInsets.only(left: 10),
                      
                      
                      child: CircleAvatar(
                        radius: 50,
                        foregroundImage: NetworkImage(ustozDAta?.avatar_url??'')),
                    ),
                    Column(
                      children: [
                 Container(
                    padding: EdgeInsets.only(right: 80),
                    child: Text(
                      ustozDAta?.name ?? "",
                      style: TextStyle(fontWeight: FontWeight.w600, fontSize: 25, color: 
                      Colors.black),
                    ),
                  ),
                  SizedBox(height: 5,),
                  Container(
                    padding: EdgeInsets.only(left: 15),
                    child: Text(
                      ustozDAta?.login ?? "",
                      style: TextStyle(fontWeight: FontWeight.w400, fontSize: 20, color: 
                      Colors.black38),
                    ),
                  ),
                ],)],
                  ),
                  SizedBox(height: 28,),
                  Container(
                  
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 12, vertical: 5),
                    height: 40,
                    width: double.infinity,
                    decoration: BoxDecoration (
                    color:Colors.white,
                    border: Border.all(color: Colors.black, width: 1),
                     borderRadius: BorderRadius.circular(8)
                    ),
                    child: Padding(padding: EdgeInsets.only(top: 7,left: 8),
                    child: Text('Focusing',
                      style: TextStyle(fontWeight: FontWeight.w400, fontSize: 17)),
                  ))),
                  Container(
                  
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 12, vertical: 5),
                    height: 40,
                    width: double.infinity,
                    decoration: BoxDecoration (
                    color:Colors.white,
                    border: Border.all(color: Colors.black, width: 1),
                     borderRadius: BorderRadius.circular(8)
                    ),
                    child: Center(child: Text('Edit profile',
                      style: TextStyle(fontWeight: FontWeight.w600, fontSize: 17)),
                  ),
                  )),
                  
                  
                  
                  SizedBox(height: 30,),
                    
                  
                  
                  
              
                  Container(
                    padding: EdgeInsets.only(right: 10),
                    child: Text(
                      ustozDAta?.blog?? "",
                      style: TextStyle(fontWeight: FontWeight.w400, fontSize: 20, color: 
                      Colors.black45),
                    ),
                  ),
                     
                  SizedBox(height: 10,),
                  Row(children: [
                    
                    Container(
                    padding: EdgeInsets.only(left: 5),
                    child: Text(
                      ustozDAta?.followers.toString()??'',
                      style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20, color: 
                      Colors.black),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 5),
                    child: Text(
                      'followers ',
                      style: TextStyle(fontWeight: FontWeight.w400, fontSize: 20, color: 
                      Colors.black45),
                    ),
                  ),
                  Container(
                    
                    child: Text(
                      ustozDAta?.following.toString()??"",
                      style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20, color: 
                      Colors.black),
                    ),
                  ),
                   Container(
                    padding: EdgeInsets.only(left: 5),
                    child: Text(
                      'following',
                      style: TextStyle(fontWeight: FontWeight.w400, fontSize: 20, color: 
                      Colors.black45),
                    ),
                  ),


                  ],),
              
                  
                  
                     
                     
                     
                
                  
              ]),
            );
          }
          return Container();
        }),
        floatingActionButton: FloatingActionButton(onPressed: () {
          setState(() {
            
          });
        },),
      
        
    );
  }
}


