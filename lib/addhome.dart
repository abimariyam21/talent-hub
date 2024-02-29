import 'package:flutter/material.dart';

void main() {
  runApp(Addhome());
}

class Addhome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return 
       MaterialApp(
        title: 'Add Items Page',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home:AddItemsPage(),
    );
  }
}

class AddItemsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Add Items')),
        backgroundColor: Colors.blueGrey,
        leading: Icon(Icons.close),
        shape:RoundedRectangleBorder(borderRadius: BorderRadius.vertical(bottom: Radius.circular(30)))
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(25),
              child: CategoryButton(category: 'Drawings'),
            ),
            Padding(
              padding: const EdgeInsets.all(25),
              child: CategoryButton(category: 'Stitchings'),
            ),
            Padding(
              padding: const EdgeInsets.all(25),
              child: CategoryButton(category: 'Mehndi Cones'),
            ),
            Padding(
              padding: const EdgeInsets.all(25),
              child: CategoryButton(category: 'Crafts'),
            ),
          ],
        ),
      ),
    );
  }
}

class CategoryButton extends StatelessWidget {
  final String category;

  CategoryButton({required this.category});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        
        print('Selected category: $category');

      },
      child: Text(category),
    );
  }
}
