import 'package:flutter/material.dart';
import 'package:flutter_application_1/ADMIN/registration4.dart';


class Adlogo extends StatelessWidget {
  const Adlogo({super.key});

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
       return registration4();
     }));
    },
            child: Image.asset("picture/logo.png"))),
      ));
  }
}