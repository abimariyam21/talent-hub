import 'package:flutter/material.dart';
import 'package:flutter_application_1/DIS-CO/registration3.dart';



class Cologo extends StatelessWidget {
  const Cologo({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        body: Center(
          child: Container(
             height:400,
             width:200,
            child:InkWell(
    onTap: () {
     Navigator.push(context, MaterialPageRoute(builder: (context) {
       return registration3();
     }));
    },
            child: Image.asset("picture/logo.png"))),
      ));
  }
}