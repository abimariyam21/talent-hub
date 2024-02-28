import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Notification extends StatefulWidget {
  const Notification({super.key});

  @override
  State<Notification> createState() => _NotificationState();
}

class _NotificationState extends State<Notification> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body:
      Column(
        children: [
          
           Row(
             children: [
               Text(('Notification'),
               style: TextStyle(
                fontSize: 30,fontWeight: FontWeight.bold)),
             ],
           ),
          
          Expanded(
            child: ListView.builder(
                itemCount: 5,
                itemBuilder: (context, index) {
                  return   Padding(
                    padding: EdgeInsets.all(8),
                    child: Card(
                      elevation: 5,
                      color: Color.fromARGB(255, 179, 198, 212),
                      child: Padding(
                          padding: EdgeInsets.all(8.0),
                          child: ListTile(
                            title:
                                    Text('Name:'),
                                    subtitle:
                                   Text('************')
                                   
                                
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