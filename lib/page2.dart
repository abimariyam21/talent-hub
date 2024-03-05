import 'package:flutter/material.dart';
import 'package:flutter_application_1/cart.dart';
import 'package:flutter_application_1/order.dart';
import 'package:flutter_application_1/page1.dart';
import 'package:flutter_application_1/rating.dart';

class Page2 extends StatefulWidget {
  const Page2({super.key});

  @override
  State<Page2> createState() => _Page2State();
}

class _Page2State extends State<Page2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title:Text('Pencil Drawings'),
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 169, 186, 203),
        leading:InkWell(onTap:() {
     Navigator.push(context, MaterialPageRoute(builder: (context) {
       return Page1();
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
                  child: Image.asset('picture/pencil_drawing.jpg'),
                ),
                   ),
                   ),
                    Row(
                      children: [
                        Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: ElevatedButton(onPressed:() {
     Navigator.push(context, MaterialPageRoute(builder: (context) {
       return Rating();
     }));
    },
                                 child: Text('Reviews'),
                                ),
                              ),
                      ],
                    ),
                   Container(
                     child: Column(
                          children:[ Padding(
                            padding: const EdgeInsets.only(top: 10,bottom: 8),
                            child: Text('Pencil drawing'),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text('Cost:250'),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: ElevatedButton(onPressed:() {
                               Navigator.push(context, MaterialPageRoute(builder: (context) {
       return OrderedItemPage();
     }));
                          
                            }, child: Text('Buy'),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: ElevatedButton(onPressed:() {
                               Navigator.push(context, MaterialPageRoute(builder: (context) {
       return Page1();
     }));
                            }, child: Text('Cancel'),
                            ),
                          )
                                  ]),
                   ),
                     ])]),);
  }
}