import 'package:flutter/material.dart';

class AddImage extends StatefulWidget {
  const AddImage({super.key});

  @override
  State<AddImage> createState() => AddImageState();
}

class AddImageState extends State<AddImage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(child: Padding(
        padding: const EdgeInsets.only(top: 10,bottom: 40),
        child: Column(
          children: [
            Center(
              child: Text('Add items',
              style:TextStyle(color:Color.fromARGB(100, 20, 300, 200),
              fontSize:30,
              fontWeight:FontWeight.bold )),
            ),
             Padding(
                  padding: const EdgeInsets.only(top:50,bottom:10),
                  child: Text(' Add image form'),
                ),Container(
                  child: Padding(
                    padding: const EdgeInsets.only(top:10,left:400,right: 400),
                    child: Padding(
                      padding: const EdgeInsets.only(bottom:05),
                       child: TextFormField(
                      decoration: InputDecoration(border:OutlineInputBorder() ,labelText: ('Image')),
                    ),
                    ),
                  ),
                ),
                 SizedBox(height:10),
                 Container(
                   child: Padding(
                     padding: const EdgeInsets.only(top:0,left:400,right: 400,bottom: 05),
                     child: TextFormField(
                      decoration: InputDecoration(border:OutlineInputBorder() ,labelText: ('Price')),
                               ),
                   ),
                 ),
                  SizedBox(height:10),
                 Container(
                   child: Padding(
                     padding: const EdgeInsets.only(top:0,left:400,right: 400,bottom: 05),
                     child: TextFormField(
                      decoration: InputDecoration(border:OutlineInputBorder() ,labelText: ('Description')),
                               ),
                   ),
                 ),
                
          ],
        ),
      ),));
  }
}
