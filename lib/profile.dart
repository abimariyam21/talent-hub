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
       
       ),
      body:   Column(
        children: [
          Container(
          child: Padding(
            padding: EdgeInsets.only(top: 30,right:800),
            child: Text('Name:************',
            style:TextStyle(fontSize: 20)),
          ),
          ),
          Container(
child: Padding(
  padding: const EdgeInsets.only(top: 20,right:750),
  child: Text('Description:************',
  style:TextStyle(fontSize: 20)),
),
),
        ],
      ),

      );


  }
}
            
             