import 'package:flutter/material.dart';

class Home0 extends StatefulWidget {
  const Home0({super.key});

  @override
  State<Home0> createState() => _Home0State();
}

class _Home0State extends State<Home0> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: const Text('Talent hub')),
        backgroundColor:Color.fromARGB(255, 184, 175, 187),
 ),
      body:Column(
        crossAxisAlignment:CrossAxisAlignment.center,
children: [
 Container(
  child: Padding(padding:const EdgeInsets.only(right: 900),
  child: Text('Works',style: TextStyle(fontSize: 20,fontWeight:FontWeight.bold),),
)),
Row(
  children:[
    Container(
      child:SizedBox(
        height: 180,
        width: 180,
        child: Padding(
          padding:const EdgeInsets.only(top:30,left: 70),
          child: Image.asset('picture/drawing.jpg'),
        ),
      ),
    ),
     Container(
      child:SizedBox(
        height: 180,
        width: 180,
        child: Padding(
          padding:const EdgeInsets.only(top:30,left: 70),
          child: Image.asset('picture/craft.jpg'),
        ),
      ),
    ),
  ]
),

Row(
  children:[
    Container(
      child:SizedBox(
        height: 180,
        width: 180,
        child: Padding(
          padding:const EdgeInsets.only(top:30,left: 70),
          child: Image.asset('picture/stitching.jpg'),
        ),
      ),
    ),
     Container(
      child:SizedBox(
        height: 180,
        width: 180,
        child: Padding(
          padding:const EdgeInsets.only(top:30,left: 70),
          child: Image.asset('picture/mehandhi.jpg'),
        ),
      ),
    ),
  ]
),
],

      ) 
      );
  }
}