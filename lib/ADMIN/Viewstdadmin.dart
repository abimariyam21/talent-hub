import 'package:flutter/material.dart';
import 'package:flutter_application_1/ADMIN/homeadmin.dart';

// Data model for Student
class Student {
  final String name;
  final String department;
  final String phoneNumber;
  final String details;

  Student({
    required this.name,
    required this.department,
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
  // Sample list of students
  List<Student> students = [
    Student(
      name: 'John Doe',
      department: 'Computer Science',
      phoneNumber: '+1234567890',
      details:'Pensil drawings and water colour drawings',
    ),
    Student(
      name: 'Juan',
      department: 'Electrical Engineering',
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
                'Students requested View',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: students.length,
              itemBuilder: (context, index) {
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
                          Text('Department: ${students[index].department}'),
                          Text('Number: ${students[index].phoneNumber}'),
                          Text('Details: ${students[index].details}'),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              ElevatedButton(
                                onPressed: () {
                                  // Implement approve button functionality
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
            ),
          ),
        ],
      ),
    );
  }
}
