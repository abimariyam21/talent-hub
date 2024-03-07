import 'package:flutter/material.dart';

class Adviewworks extends StatefulWidget {
  const Adviewworks ({super.key});

  @override
  State<Adviewworks> createState() => _AdviewworksState();
}

class _AdviewworksState extends State<Adviewworks> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
    Column(
            children: [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 50),
                    child: Icon(Icons.close),
                  ),
                ],
              ),
              Center(
               child:Padding(
                 padding: const EdgeInsets.only(top: 50),
                 child: 
                 Text(('View Works'),
                 style: TextStyle(
                  fontSize: 30,fontWeight: FontWeight.bold),
                  
                  ),
               ),
              ),
              Expanded(
                child: ListView.builder(
                    itemCount: 30, 
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
                                        Text('Name of the Shopkeeper'),
                                        subtitle:
                                        Row(
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          children: [
                                            Column(
                                              children: [
                                                Text('Sold'),
                                                Text('Bought'),
                                                Text('Out of stock'),
                                              ],
                                            ),
                                          ],
                                        ),
                                        
                                       )),
                        ),
                      );
                    }),
              ),
            ],
          ),
        
      );
  }
}