import 'package:flutter/material.dart';

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
        backgroundColor: Colors.red[100],
        leading: Icon(Icons.close),
       ),
        body:Column(
         children: [
           Row(
             children: [
               Container(
                     child:SizedBox(
                height: 150,
                width: 150,
                child: Padding(
                  padding:const EdgeInsets.only(top:30,left: 70),
                  child: Image.asset('picture/pencil_drawing.jpg'),
                ),
                   ),
                   ),
                    Row(
                      children: [
                        Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: ElevatedButton(onPressed:() {
                                }, child: Text('Reviews'),
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
                              
                            }, child: Text('Buy'),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: ElevatedButton(onPressed:() {
                              
                            }, child: Text('Cancel'),
                            ),
                          )
                                  ]),
                   ),
                    Container(
                     child:SizedBox(
                height: 150,
                width: 150,
                child: Padding(
                  padding:const EdgeInsets.only(top:30,left: 70),
                  child: Image.asset('picture/pencil_drawing.jpg'),
                ),
                     ),
                   ),
                    Row(
                      children: [
                        Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: ElevatedButton(onPressed:() {
                                }, child: Text('Reviews'),
                                ),
                              ),
                      ],
                    ),
                   Container(
                     child: Column(
                          children:[ Padding(
                            padding: const EdgeInsets.only(top: 10,bottom: 8),
                            child: Text('Color drawing'),
                          ),
                           Padding(
                             padding: const EdgeInsets.all(8.0),
                             child: Text('Cost:450'),
                           ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: ElevatedButton(onPressed:() {
                              
                            }, child: Text('Buy'),
                            ),
                          ),
Padding(
  padding: const EdgeInsets.all(8.0),
  child: ElevatedButton(onPressed:() {
                              
                            }, child: Text('Cancel'),
                            ),
)
                                  ]),
                   ),
          ])]),);
  }
}