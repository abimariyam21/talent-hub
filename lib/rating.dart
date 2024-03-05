import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_1/page2.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class Rating extends StatefulWidget {
  const Rating({super.key});

  @override
  State<Rating> createState() => _RatingState();
}

class _RatingState extends State<Rating> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ratings'),
        centerTitle: true,
        backgroundColor: Colors.red[100],
        leading: InkWell(onTap:() {
     Navigator.push(context, MaterialPageRoute(builder: (context) {
       return Page2();
     }));
    },child: Icon(Icons.close)),
      ),
      body: Column(
        children: [
          Row(children: [
            Text(
              'Person 1',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            Column(
              children: [
Row(
             children: [
               Container(
                     child:SizedBox(
                height: 170,
                width: 100,
                child: Padding(
                  padding:const EdgeInsets.only(top:20,left: 40),
                  child: Image.asset('picture/pencil_drawing.jpg'),
                ),
                   ),
),
               ] ),
          ]),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: RatingBar.builder(
                initialRating: 3,
                minRating: 1,
                direction: Axis.horizontal,
                allowHalfRating: true,
                itemCount: 5,
                itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                itemBuilder: (context, _) => Icon(
                  Icons.star,
                  color: Colors.amber,
                ),
                onRatingUpdate: (rating) {
                  print(rating);
                },
              ),
            ),
          
           Row(children: [
            Text(
              'Person 2',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
Column(
              children: [
Row(
             children: [
               Container(
                     child:SizedBox(
                height: 150,
                width: 100,
                child: Padding(
                  padding:const EdgeInsets.only(top:30,right:40 ),
                  child: Image.asset('picture/pencil_drawing.jpg'),
                ),
                   ),
),
               ] ),
                Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 10),
                              child: RatingBar.builder(
                              initialRating: 3,
                              minRating: 1,
                              direction: Axis.horizontal,
                              allowHalfRating: true,
                              itemCount: 5,
                              itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                              itemBuilder: (context, _) => Icon(
                                Icons.star,
                                color: Colors.amber,
                              ),
                              onRatingUpdate: (rating) {
                                print(rating);
                              },
                                          ),
                            ),
                          ],
                        ),
                      ),
          ]),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                     
                    ],
                  ),
                ],
              )
          ]),
    );
      
     
      
    
  }
}
