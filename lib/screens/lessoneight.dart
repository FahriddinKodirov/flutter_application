import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_1/Utils/MyStylis.dart';



class lessonfive extends StatefulWidget {
  lessonfive({super.key});

  @override
  State<lessonfive> createState() => _lessonfiveState();
  
}
class _lessonfiveState extends State<lessonfive> {
  bool isPassVisib = false;
  var PhoneController = TextEditingController();
  var PhoneController_2 = TextEditingController();
  var Phone = '';
  

  @override
 Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        margin: EdgeInsets.all(12),
        child: Column(children: [
          TextField(
            controller: PhoneController,
            textInputAction: TextInputAction.next,
            keyboardType: TextInputType.number,
            obscureText: !isPassVisib,
            onChanged: ((value) {
              setState(() {
                Phone= value;
              });
              
            }),
            decoration: InputDecoration(
              prefixIcon: Icon(Icons.man),
              suffixIcon: IconButton(icon: isPassVisib? Icon(Icons.visibility):
                Icon(Icons.visibility_off),onPressed:() {
                setState(() {
                  isPassVisib = !isPassVisib;
                });
              },),
            
              hintText: 'Phone number',
              border: OutlineInputBorder(),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.red))
            ),
          ),
          TextField(
            controller: PhoneController_2,
            textInputAction: TextInputAction.next,
            keyboardType: TextInputType.text,
            obscureText: !isPassVisib,
            decoration: InputDecoration(
              prefixIcon: Icon(Icons.man),
              suffixIcon: IconButton(icon: isPassVisib? Icon(Icons.visibility):
                Icon(Icons.visibility_off),onPressed:() {
                setState(() {
                  isPassVisib = !isPassVisib;
                });
              },),
             
              hintText: 'Password',
              border: OutlineInputBorder(),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.red))
            ),
          ),
          SizedBox(height: 25,),
          Row(children: [
            Container(child: 
            Text('Phone', style: Mystyle.BentonSansBold700.copyWith(fontSize: 26),)
          ),
          SizedBox(width: 12,),
          Container(child: 
            Text(PhoneController.text, style: Mystyle.BentonSansBold700.copyWith(fontSize: 26),)
          ),
          
          ],),
          SizedBox(height: 15,),
          Row(children: [
            Container(child: 
            Text('Password', style: Mystyle.BentonSansBold700.copyWith(fontSize: 26),)
          ),          SizedBox(width:12,),

          Container(child: 
            Text(PhoneController_2.text, style: Mystyle.BentonSansBold700.copyWith(fontSize: 26),)
          ),
          
          ],),
          SizedBox(height: 15,),
          ElevatedButton(onPressed: (){
            setState(() {
              PhoneController.text;
               PhoneController_2.text;
            });
          }, child: Text('Ok')),
          
          
        ],),
        
      ),
    );
  }
}