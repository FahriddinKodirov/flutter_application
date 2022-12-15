import 'package:flutter/material.dart';
class Surat extends StatelessWidget {
  const Surat({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: 
      Container(
        child: Column(children: [
          
            surat(50, 44, 69),
            surat(59, 45, 68),
            surat(58, 46, 54),
            surat(57, 47, 53),
            surat(56, 48, 52),
           
           


                      ]),  
      )),
    );
  }

Widget surat(index1, index2, index3){
  return Row(
            children: [
            Expanded(
            child: Image.network("https://i.pravatar.cc/300?img=${index1}")),
            Expanded(
            child: Image.network("https://i.pravatar.cc/300?img=${index2}")),
            Expanded(
            child: Image.network("https://i.pravatar.cc/300?img=${index3}")),
          ],);
}
}