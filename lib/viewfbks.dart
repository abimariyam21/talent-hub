import 'package:flutter/material.dart';

class Viewfbks extends StatefulWidget {
  const Viewfbks({super.key});

  @override
  State<Viewfbks> createState() => _ViewfbksState();
}

class _ViewfbksState extends State<Viewfbks> {
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
                 Text(('View feedbacks'),
                 style: TextStyle(
                  fontSize: 30,fontWeight: FontWeight.bold),
                  
                  ),
               ),
              ),
              Expanded(
                child: ListView.builder(
                    itemCount: 5, 
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.only(left: 20,right: 20),
                        child: Card(
                          elevation: 5,
                          color: Color.fromARGB(255, 179, 198, 212),
                          child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: ListTile(
                                title:
                                        Text('Name of the Person'),
                                        subtitle:
                                        Row(
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          children: [
                                            Column(
                                              children: [
                                                Text('**************'),
                                                
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