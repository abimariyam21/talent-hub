import 'dart:ffi';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/ADMIN/homeadmin.dart';

// Data model for Student
class Student {
  final String name;
  final String Mail_id;
  final String phoneNumber;
  final String details;

  Student({
    required this.name,
    required this.Mail_id,
    required this.phoneNumber,
    required this.details,
  });
}

class Viewstds extends StatefulWidget {
  const Viewstds({Key? key}) : super(key: key);

  @override
  State<Viewstds> createState() => _ViewstdsState();
}

class _ViewstdsState extends State<Viewstds> {
  Future<QuerySnapshot<Map<String,dynamic>>> getData() async {//backend 
    QuerySnapshot<Map<String,dynamic>> querySnapshot = await FirebaseFirestore.instance.collection('user').get();
    return querySnapshot;
  }
 
  List<Student> students = [
    Student(
      name: 'John Doe',
     Mail_id: 'mail',
      phoneNumber: '+1234567890',
      details:'Pensil drawings and water colour drawings',
    ),
    Student(
      name: 'Juan',
       Mail_id: 'mail',
      phoneNumber: '+9876543210',
      details: 'craft with frames',
    ),
  ];
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: IconButton(
                  icon: InkWell
                (onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) {
                      return Adminhome();
                    }));
                  },
                   child: Icon(Icons.close)), onPressed: () {  },
                 
                ),
              ),
            ],
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.only(top: 20, bottom: 5),
              child: Text(
                'Students View',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Expanded(
            child: FutureBuilder(
              future:FirebaseFirestore.instance.collection('user').get(),
              builder: (context,AsyncSnapshot<QuerySnapshot> snapshot) {
                  if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(
              child: CircularProgressIndicator(),
            );
          }

          if (snapshot.hasError) {
            return Center(
              child: Text('Error: ${snapshot.error}'),
            );
          }

          final user = snapshot.data?.docs ?? [];


                return FutureBuilder(
                  future: getData(),
                  builder: (context,snapshot) {
                    final user=snapshot.data!.docs??[];
                    return ListView.builder(
                      
                      itemCount: user.length,
                      itemBuilder: (context, index) {
                        user[index].data();  
                        // user[index]['user'];
                                  final name = user[index]['name'];
                                   final mail_id = user[index]['Email_Id']; 
                                  final phoneNumber = user[index]['number'];
                                  final password = user[index]['password'];
                        return Card(
                          elevation: 5,
                          color: Color.fromARGB(255, 144, 174, 196),
                          child: Padding(
                            padding: const EdgeInsets.only(bottom: 8),
                            child: ListTile(
                              title: Text(students[index].name),
                              subtitle: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('Email_id: ${students[index].Mail_id}'),
                                  Text('Number: ${students[index].phoneNumber}'),
                                  Text('Details: ${students[index].details}'),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    children: [
                                      ElevatedButton(
                                        onPressed: () {
                                          
                                        },
                                        child: Text('Approve'),
                                      ),
                                      ElevatedButton(
                                        onPressed: () {
                                          // Implement reject button functionality
                                        },
                                        child: Text('Reject'),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        );
                      },
                    );
                  }
                );
              }
            ),
          ),
        ],
      ),
    );
  }
}
