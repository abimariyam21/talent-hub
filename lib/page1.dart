import 'package:flutter/material.dart';

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
        leading: Icon(Icons.close),
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
                  child: Image.asset('picture/pencil_drawing.jpg'),
                ),
                     ),
                   ),
                   Container(
                     child: Column(
                          children:[ Text('Pencil drawing'),
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
                          children:[ Text('Oil painting'),
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
                          children:[ Text('Glass painting'),
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
                          children:[ Text('Water color painting'),
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