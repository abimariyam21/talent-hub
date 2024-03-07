import 'package:flutter/material.dart';
import 'package:flutter_application_1/COLLEGE/registration5.dart';


class Clglogo extends StatelessWidget {
  const Clglogo({super.key});

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
       return registration5();
     }));
    },
            child: Image.asset("picture/logo.png"))),
      ));
  }
}