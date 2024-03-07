import 'package:flutter/material.dart';
import 'package:flutter_application_1/USER/order.dart';
import 'package:flutter_application_1/USER/page1.dart';
import 'package:flutter_application_1/USER/rating.dart';


class Page2 extends StatefulWidget {
  const Page2({Key? key}) : super(key: key);

  @override
  State<Page2> createState() => _Page2State();
}

class _Page2State extends State<Page2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pencil Drawings'),
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 169, 186, 203),
        leading: InkWell(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return Page1();
            }));
          },
          child: Icon(Icons.close),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset('picture/pencil_drawing.jpg', height: 150),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) {
                      return Rating();
                    }));
                  },
                  child: Text('Reviews'),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Pencil drawing',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),

                    ),
                    Text(
                      'Cost: 250',
                      style: TextStyle(fontSize: 16),
                    ),
                  ],
                ),
                Column(
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) {
                          return OrderItemPage();
                        }));
                      },
                      child: Text('Buy'),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) {
                          return Page1();
                        }));
                      },
                      child: Text('Cancel'),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
      
    );
  }
}
