import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/COLLEGE/viewstd.dart';

class Viewclg extends StatefulWidget {
  const Viewclg({super.key});

  @override
  State<Viewclg> createState() => _ViewclgState();
}

class _ViewclgState extends State<Viewclg> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
    Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 60,left: 300),
                child: InkWell(
                    onTap: () {
     Navigator.push(context, MaterialPageRoute(builder: (context) {
       return Viewstd();
     }));
    },child: Icon(Icons.people_rounded)),
              ),
               Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(),
              
                    child: Icon(Icons.close),
                     
                  ),
                ],
              ),
              Center(
               child:Padding(
                 padding: const EdgeInsets.only(top: 40),
                 child: 
                 Text(('Works'),
                 style: TextStyle(
                  fontSize: 30,fontWeight: FontWeight.bold),
                  
                  ),
               ),
              ),
              Expanded(
                child: ListView.builder(
                    itemCount: 10, 
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.only(left: 20,right: 20),
                        child: Card(
                          elevation: 5,
                          color: Color.fromARGB(255, 241, 205, 175),
                          child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: ListTile(
                                title:
                                        Text('Colleges'),
                                        subtitle:
                                        Column(
                                          children: [
                                            Row(
                                              mainAxisAlignment: MainAxisAlignment.start,
                                              children: [
                                                Column(
                                                  children: [
                                                    Text('Name'),
                                                    Text('Email'),
                                                    Text('Contact'),
                                                    Text('Details'),
                                                  ],
                                                ),
                                              ],
                                            ),
                                          
                                        
                                        
                                      
                                         
            ])),
                                       ),
                        ),
                      );
                      
                    }),
              ),
            ],
          ),
        
      );
  }
}