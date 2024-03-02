import 'package:flutter/material.dart';

class Approvedisco2 extends StatefulWidget {
  const Approvedisco2({super.key});

  @override
  State<Approvedisco2> createState() => Approvedisco2State();
}

class Approvedisco2State extends State<Approvedisco2> {
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
                 Text(('VIEWS'),
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
                                              mainAxisAlignment: MainAxisAlignment.end,
                                              children: [
                                                Center(
                                                  child: Column(
                                                    children: [
                                                      Padding(
                                                        padding: const EdgeInsets.only(top:30,right: 20),
                                                       child: ElevatedButton(onPressed: (){},
                                                       child: Text('Approve'),),
                                                      ),
                                                    ],
                                                  ),
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