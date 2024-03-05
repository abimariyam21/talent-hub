import 'package:flutter/material.dart';

class Viewstd extends StatefulWidget {
  const Viewstd({super.key});

  @override
  State<Viewstd> createState() => _ViewstdState();
}

class _ViewstdState extends State<Viewstd> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body:
      Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Icon(Icons.close),
              ),
            ],
          ),
          Center(
           child:Padding(
             padding: const EdgeInsets.only(top: 20,bottom: 5),
             child: Text(('Students View'),
             style: TextStyle(
              fontSize: 30,fontWeight: FontWeight.bold)),
           ),
          ),
          Expanded(
            child: ListView.builder(
                itemCount: 10,
                itemBuilder: (context, index) {
                  return Card(
                    elevation: 5,
                    color: Color.fromARGB(255, 144, 174, 196),
                    child: Padding(
                        padding: const EdgeInsets.only(bottom: 8),
                        child: ListTile(
                          title:
                                  Text('Name of the students'),
                                  subtitle:
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Column(
                                        children: [
                                          Text('Department'),
                                           Text('Number:'),
                                           Text('Details:')
                                        ],
                                      ),
                                    ],
                                  ),
                              
                        )),
                  );
                }),
          ),
        ],
      ),
    );
  }
}