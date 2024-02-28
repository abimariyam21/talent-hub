import 'package:flutter/material.dart';

class List extends StatefulWidget {
  const List ({super.key});

  @override
  State<List> createState() => _ListState();}
class _ListState extends State<List > {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
      Column(
        children: [
          Center(
           child:Text(('List of People'),
           style: TextStyle(
            fontSize: 30,fontWeight: FontWeight.bold)),
          ),
          Expanded(
            child: ListView.builder(
                itemCount: 5,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(left: 3),
                    child: Card(
                      elevation: 5,
                      color: Color.fromARGB(255, 179, 198, 212),
                      child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: ListTile(
                            title:
                                    Text('Name:'),
                                    subtitle:
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                        Column(
                                          children: [
                                            Text('Address'),
                                             Text('Number:'),
                                        Text('Mail id:'),
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