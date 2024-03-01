import 'package:flutter/material.dart';

class Approvestd extends StatefulWidget {
  const Approvestd({super.key});

  @override
  State<Approvestd> createState() => _ApprovestdState();
}

class _ApprovestdState extends State<Approvestd> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text('Approve students'),
        centerTitle: true,
        leading: Icon(Icons.close),
        actions: [Padding(
          padding: const EdgeInsets.only(right: 30),
          child: Icon(Icons.people),
        )],
       
       ),
      body:   Padding(
        padding: const EdgeInsets.only(left: 20,right: 20,bottom: 60),
        child: Container(
          color: Colors.green[50],
          child: Column(
            children: [
              Container(
              child: Padding(
                padding: EdgeInsets.only(top: 30,right:100),
                child: Text('Name of the college:************',
                style:TextStyle(fontSize: 20)),
              ),
              ),
              Container(
          child: Padding(
            padding: const EdgeInsets.only(top: 20,right:200),
            child: Text('Details:*********',
            style:TextStyle(fontSize: 20)),
          ),
          ),
          Container(
          child: Padding(
            padding: const EdgeInsets.only(top: 20,right:200),
            child: Text('About:**********',
            style:TextStyle(fontSize: 20)),
          ),
          ),
           Padding(
             padding: const EdgeInsets.only(top: 80),
             child: ElevatedButton(onPressed: () {
                                        
                                      },
                                      child: Text('Approve'),),
           ),
            ],
          ),
        ),
      ),

      );
  }
}