import 'package:flutter/material.dart';

class Home2 extends StatefulWidget {
  const Home2({super.key});

  @override
  State<Home2> createState() => _Home2State();
}

class _Home2State extends State<Home2> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body:
      Column(
        children: [
          Center(
           child:Text(('Colleges'),
           style: TextStyle(
            fontSize: 30,fontWeight: FontWeight.bold)),
          ),
          Expanded(
            child: ListView.builder(
                itemCount: 5,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(left:40,right: 400),
                    child: Card(
                      elevation: 5,
                      color: Color.fromARGB(255, 200, 225, 243),
                      child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: ListTile(
                            title:
                                    Text('College Name'),
                                    subtitle:
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                        Column(
                                          children: [
                                            Text('Address'),
                                             Text('Number:'),
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