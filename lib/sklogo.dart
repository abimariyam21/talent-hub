import 'package:flutter/material.dart';
import 'package:flutter_application_1/STOREKEEPERS/registration2.dart';



class Sklogo extends StatelessWidget {
  const Sklogo({super.key});

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
       return registration2();
     }));
    },
            child: Image.asset("picture/logo.png"))),
      ));
  }
}