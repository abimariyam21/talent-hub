import 'package:flutter/material.dart';

class Approvedisco extends StatefulWidget {
  const Approvedisco({super.key});

  @override
  State<Approvedisco> createState() => _ApprovediscoState();
}

class _ApprovediscoState extends State<Approvedisco> {
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
                 Text(('District coordinators'),
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
                                        Text('Name of the coordinators'),
                                        subtitle:
                                        Column(
                                          children: [
                                            Row(
                                              mainAxisAlignment: MainAxisAlignment.start,
                                              children: [
                                                Column(
                                                  children: [
                                                    Text('Place'),
                                                    Text('Email'),
                                                    Text('Contact'),
                                                    Text('Details'),
                                                  ],
                                                ),
                                              ],
                                            ),
                                            Row(
                                              mainAxisAlignment: MainAxisAlignment.end,
                                              children: [
                                                Center(
                                                  child: Column(
                                                    children: [
                                                      Padding(
                                                        padding: const EdgeInsets.only(top:30,right: 20),
                                                       child: ElevatedButton(onPressed: (){},
                                                       child: Text('View'),),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                               
                                        
                                        
                                      
                                         
            ])]),
                                       ),
                        ),
                      ));
                      
                    }),
              ),
            ],
          ),
        
      );
  }
}