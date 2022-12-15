//? 1.dark bilan light ortasidagi shart
// 1.dark bilan light ortasidagi shart

//? 2. Navigator:
// 2.kirish -> Navigator.push(context,MaterialPageRoute(builder: (context) 
// =>HomePage19l()));
// 2.chiqish -> navigator.pop(context);

//? 3. pasga tushib chiqish:
// SingleChildScrollView(physics: BouncingScrollPhysics(),
// child: SizedBox(child: Column(children: [])))

//? 4. snackBar: pasdanyozuv chiqishi:
// var snack = SnackBar(
//                   action: SnackBarAction(onPressed: () {},label: 
//                   'Tushinarli',),
//                   content: Text('bu yerda nmadur bor'));
               
//                 ScaffoldMessenger.of(context).showSnackBar(snack);

//? 5. showdialog: "ok-- no" deb chiqish:
// showDialog(context: context,
//                     builder: ((context) => AlertDialog(
//                           title: Text('bu title'),
//                           content: Text('rost'),
//                           actions: [
//                             TextButton(
//                                 onPressed: () {
//                                   Navigator.pop(context);
//                                 },
//                                 child: Text('Ok')),
//                             OutlinedButton(
//                               onPressed: () {
//                                 exit(0);
//                               },
//                               child: Text('no'),
//                             )
//                           ],
//                         )));

//? 6. WillPopScope: ikki marta bossa chiqib ketish:
// body: WillPopScope(
          // onWillPop: onWillPop,
          // child: Container()
// !---------
// int backPressCounter = 0;
// int backPressTotal = 2;

//   Future<bool> onWillPop() {
//     if (backPressCounter < 1) {
//       var snack = SnackBar(
//             action: SnackBarAction(onPressed: () {},label: 
//               'Tushinarli',),
//             content: Text('yana bir marta qaytaring'));
               
//     Scaff
//     oldMessenger.of(context).showSnackBar(snack);
//       backPressCounter++;
//       Future.delayed(Duration(seconds: 1, milliseconds: 500), () {
//         backPressCounter--;
//       });
//       return Future.value(false);
//     } else {
//       return Future.value(true);
//     }
// }

//? 7. ranglarni arlashmasi
// Container(
//         decoration: BoxDecoration(
//           gradient: (1)LinearGradient(
//             begin: Alignment.topLeft,
//             end: Alignment.bottomLeft,
//              colors: [
//             Colors.green,
//             Colors.red,])
//         ),
// ),
// (2)RadialGradient