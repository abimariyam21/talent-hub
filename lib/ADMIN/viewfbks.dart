import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/USER/rating.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class Viewfbks extends StatefulWidget {
  const Viewfbks({super.key});

  @override
  State<Viewfbks> createState() => _ViewfbksState();
}

class _ViewfbksState extends State<Viewfbks> {
  Future<QuerySnapshot<Map<String,dynamic>>> getData() async {//backend 
    QuerySnapshot<Map<String,dynamic>> querySnapshot = await FirebaseFirestore.instance.collection('ratingbar').get();
    return querySnapshot;
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
SingleChildScrollView(
      child: Column(
              children: [
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 50),
                      child: Icon(Icons.close),
                    ),
                  ],
                ),
                Center(
                 child:Padding(
                   padding: const EdgeInsets.only(top: 50),
                   child: 
                   Text(('View feedbacks'),
                   style: TextStyle(
                    fontSize: 30,fontWeight: FontWeight.bold),
                    
                    ),
                 ),
                ),
                Expanded(
                  child: FutureBuilder(
                    future: getData(),
                    builder: (context,snapshot) {
                      final RatingBar = snapshot.data!.docs??[];
                
                      return ListView.builder(
                          itemCount: RatingBar.length, 
                          itemBuilder: (context,Index) {
                            
                             var index;
                             var usr = RatingBar[index].data() as Map<String,dynamic>;
      
                            return Padding(
                              padding: const EdgeInsets.only(left: 20,right: 20),
                              child: Card(
                                elevation: 5,
                                color: Color.fromARGB(255, 179, 198, 212),
                                child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: ListTile(
                                      title:
                                              Text(usr['Name of the Person']),
                                              subtitle:
                                              Row(
                                                mainAxisAlignment: MainAxisAlignment.start,
                                                children: [
                                                  Column(
                                                    children: [
                                                      Text(usr['**************']),
                                                      
                                                    ],
                                                  ),
                                                ],
                                              ),
                                              
                                             )),
                              ),
                            );
                          });
                    }
                  ),
                ),
              ],
            ),
    ),
        
      );
  }
}