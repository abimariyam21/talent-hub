import 'package:flutter/material.dart';
import 'package:flutter_application_1/ADMIN/Viewstdadmin.dart';
import 'package:flutter_application_1/ADMIN/viewclg.dart';
import 'package:flutter_application_1/COLLEGE/viewstd.dart';
import 'package:flutter_application_1/COLLEGE/STOREKEEPERS/skworks.dart';

import 'package:flutter_application_1/COLLEGE/STOREKEEPERS/viework.dart';
import 'package:flutter_application_1/COLLEGE/approvestd.dart';

void main() {
  runApp(Homeadmin());
}

class Homeadmin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: AddItemsPage(),
    );
  }
}

class AddItemsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Edit')),
        backgroundColor: Colors.blueGrey,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(bottom: Radius.circular(30))),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Works'),
            Padding(
              padding: const EdgeInsets.only(top: 50, bottom: 25),
              child: CategoryButton(category: 'View district coordinators', destination: Approvestd()),
            ),
            Padding(
              padding: const EdgeInsets.all(25),
              child: CategoryButton(category: 'View college', destination:Viewclg()),
            ),
             Padding(
              padding: const EdgeInsets.all(25),
              child: CategoryButton(category: 'View storekeepers', destination: Storekeeper()),
            ),
           
            Padding(
              padding: const EdgeInsets.all(25),
              child: CategoryButton(category: 'View students', destination:Viewstds()),
            ),
            Padding(
              padding: const EdgeInsets.all(25),
              child: CategoryButton(category: 'View works', destination: Viework()),
            ),
          ],
        ),
      ),
    );
  }
}

class CategoryButton extends StatelessWidget {
  final String category;
  final Widget destination;

  CategoryButton({required this.category, required this.destination});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        // Navigate to the destination screen when the button is pressed
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => destination),
        );
      },
      child: Text(category),
    );
  }
}

class Viewdisco extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('View district coordinators'),
      ),
      body: Center(
        child: Text('This is the View district coordinators page'),
      ),
    );
  }
}

class viewclg extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('View college'),
      ),
      body: Center(
        child: Text('This is the View college'),
      ),
    );
  }
}

class skworks extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('View storekeepers'),
      ),
      body: Center(
        child: Text('This is the View storekeepers'),
      ),
    );
  }
}

class Viewstd extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('View Students'),
      ),
      body: Center(
        child: Text('This is the View students'),
      ),
    );
  }
}
