import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_1/Utils/colors.dart';
import 'package:flutter_application_1/Utils/images.dart';
import 'package:flutter_application_1/screens2/fromjson_valuta.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:http/http.dart' as http;
import 'package:http/http.dart';

class ValutaPage extends StatefulWidget {
  const ValutaPage({super.key});

  @override
  State<ValutaPage> createState() => _ValutaPageState();
}

class _ValutaPageState extends State<ValutaPage> {
  Future<List<User>?>? getResult;

  Future<List<User>> getData() async {
    String url = "https://nbu.uz/uz/exchange-rates/json/";

    var response = await http.get(Uri.parse(url));
    if (response.statusCode == 200) {
      List json = jsonDecode(response.body) as List;
      List<User> users = json.map((e) => User.fromJson(e)).toList();

      return users;
    }
    return List.empty();
  }

  @override
  void initState() {
    super.initState();

    getResult = getData();
  }

  List list = [
    MyImages.Image_aed,
    MyImages.Image_aud,
    MyImages.Image_cad,
    MyImages.Image_chf,
    MyImages.Image_chn,
    MyImages.Image_dkk,
    MyImages.Image_egp,
    MyImages.Image_eur,
    MyImages.Image_gbp,
    MyImages.Image_isk,
    MyImages.Image_jpy,
    MyImages.Image_krw,
    MyImages.Image_kwd,
    MyImages.Image_kzt,
    MyImages.Image_lbp,
    MyImages.Image_myr,
    MyImages.Image_nok,
    MyImages.Image_pln,
    MyImages.Image_rub,
    MyImages.Image_sek,
    MyImages.Image_sgd,
    MyImages.Image_try,
    MyImages.Image_uah,
    MyImages.Image_usd,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown[200],
        appBar: AppBar(
          backgroundColor: Colors.brown.withOpacity(0.1),
          leading: Icon(
            Icons.arrow_back,
            color: Colors.black,
            size: 30,
          ),
          title: Text('Обменный курсы',
              style: TextStyle(color: Colors.black, fontSize: 26)),
          elevation: 0,
          actions: [
            Padding(
                padding: EdgeInsets.only(right: 18),
                child: Icon(
                  Icons.search,
                  color: Colors.black,
                  size: 35,
                )),
          ],
        ),
        body: FutureBuilder<List<User>?>(
            future: getResult,
            builder: (BuildContext context,
                AsyncSnapshot<List<User>?> snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return Container(
                  height: MediaQuery.of(context).size.height,
                  child: Center(child: CircularProgressIndicator()),
                );
              }
              if (snapshot.hasError) {
                return Center(child: Text(snapshot.error.toString()));
              }
              if (snapshot.hasData) {
                List<User?>? users = snapshot.data;

                return Container(
                
                  child: ListView.builder(
                      itemCount: users?.length ?? 0,
                      itemBuilder: (context, index) {
                        return kurs(
                            context,
                            list[index],
                            users?[index]?.code ?? "NO",
                            users?[index]?.cb_price ?? "NO",
                            users?[index]?.nbu_buy_price ?? "NO",
                            users?[index]?.nbu_cell_price ?? "NO");
                      }),
                      
                );
                
              }
              return Container();
            }));
  }

  Widget kurs(context, flag, code, cb_price, nbu_buy_price, nbu_cell_price) {
    return Container(
        margin: EdgeInsets.only(top: 25, left: 25, right: 25),
        height: MediaQuery.of(context).size.height * 0.18,
        width: MediaQuery.of(context).size.height * 0.8,
        decoration: BoxDecoration(
            color: Colors.brown[100],
            boxShadow: [
              BoxShadow(
                  blurRadius: 1,
                  spreadRadius: 1,
                  color: Colors.grey.withOpacity(0.5))
            ],
            borderRadius: BorderRadius.circular(18)),
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  padding: EdgeInsets.only(top: 20, left: 18),
                  child: SvgPicture.asset(
                    flag,
                    width: 30,
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: 20, left: 10),
                  child: Text(code,
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 29,
                          color: Colors.black)),
                ),
                Container(
                    padding: EdgeInsets.only(top: 20, left: 140),
                    child: Icon(
                      Icons.notifications_active_outlined,
                      size: 37,
                      color: Colors.black45,
                    )),
              ],
            ),
            Row(
              children: [
                Container(
                    padding: EdgeInsets.only(top: 25, left: 18),
                    child: Text('Курс ЦБ',
                        style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 17,
                            color: Colors.black54))),
                Container(
                  padding: EdgeInsets.only(top: 25, left: 40),
                  child: Text('Покупка',
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 17,
                          color: Colors.black54)),
                ),
                Container(
                    padding: EdgeInsets.only(top: 25, left: 40),
                    child: Text('Продажа',
                        style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 17,
                            color: Colors.black54)))
              ],
            ),
            SizedBox(height: 4,),
            Stack(
              children: [
                Container(
                  width: double.infinity,
                  height: 30,
                ),
                Positioned(
                    left: 18,
                    child: Text(cb_price,
                        style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 17,
                            color: Colors.black54))),
                Positioned(
                  left: 122,
                  child: Text(nbu_buy_price,
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 17,
                          color: Colors.black54)),
                ),
                Positioned(
                    left: 230,
                    child: Text(nbu_cell_price,
                        style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 17,
                            color: Colors.black54)))
              ],
            ),
          ],
        ));
  }
}
