import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text('Profile'),
        centerTitle: true,
        actions: [Padding(
          padding: const EdgeInsets.only(right: 30),
          child: Icon(Icons.person),
        )],
       
       ),
      body:   Padding(
        padding: const EdgeInsets.only(left: 25,bottom: 10),
        child: Container(
          color: Color.fromARGB(255, 221, 199, 234),
          child: Column(
            children: [
              Container(
              child: Padding(
                padding: EdgeInsets.only(top: 30,right:100),
                child: Text('Name:************',
                style:TextStyle(fontSize: 20)),
              ),
              ),
              Container(
          child: Padding(
            padding: const EdgeInsets.only(top: 20,right:100,left: 20),
            child: Text('Description:************',
            style:TextStyle(fontSize: 20)),
          ),
          ),
            ],
          ),
        ),
      ),

      );


  }
}
            
             