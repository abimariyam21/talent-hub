import 'package:flutter/material.dart';
import 'package:flutter_application_1/home.dart';
import 'package:flutter_application_1/home0.dart';
import 'package:flutter_application_1/page2.dart';

class Page1 extends StatefulWidget {
  const Page1({super.key});

  @override
  State<Page1> createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title:Text('Drawings'),
        centerTitle: true,
        backgroundColor: Colors.red[100],
        leading:InkWell( onTap:() {
                    Navigator.push(context, MaterialPageRoute(builder: (context){
return Mynavigationbar();
                    }));
                  },
          child: Icon(Icons.close)),
       ),
       body:Column(
         children: [
           Row(
             children: [
               Container(
                     child:SizedBox(
                height: 100,
                width: 100,
                child: Padding(
                  padding:const EdgeInsets.only(top:30),
                  child: InkWell(
                    onTap: () {
     Navigator.push(context, MaterialPageRoute(builder: (context) {
       return Page2();
     }));
    },
                     child: Image.asset('picture/pencil_drawing.jpg')),
                ),
                     ),
                   ),
                   Container(
                     child: Column(
                          children:[ Text('Pencil'),
                                  ]),
                   ),
                    Container(
              child:SizedBox(
                height: 100,
                width: 100,
                child: Padding(
                  padding:const EdgeInsets.only(top:30,left:10),
                  child: Image.asset('picture/oil.webp'),
                ),
              ),
            ),    
                           Container(
                     child: Column(
                          children:[ Text('Oilpainting'),
                                  ]),
                   ),
             ]
           ),
             Column(
               children: [
                 Row(
                   children: [
                     Container(
                               child:SizedBox(
                                 height: 100,
                                 width: 100,
                                 child: Padding(
                      padding:const EdgeInsets.only(top:30),
                      child: Image.asset('picture/glass_paint.webp'),
                                 ),
                               ),
                             ),
                                                Container(
                     child: Column(
                          children:[ Text('Glass'),
                                  ]),
                   ),
                              Container(
              child:SizedBox(
                height: 100,
                width: 100,
                child: Padding(
                  padding:const EdgeInsets.only(top:30),
                  child: Image.asset('picture/watercolor.jpg'),
                ),
              ),
            ),
                               Container(
                     child: Column(
                          children:[ Text('Watercolor'),
                                  ]),
                   ),
                   ],
                 ),
               ],
             ),
       
        
         ],
       ), 

  
    
    );

  
  }
}