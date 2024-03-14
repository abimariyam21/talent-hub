import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/USER/page1.dart';

import 'package:image_picker/image_picker.dart';
class ImagePickerPage extends StatefulWidget {
  const ImagePickerPage({super.key});

  @override
  State<ImagePickerPage> createState() =>_ImagePickerPageState();
}
 


class _ImagePickerPageState extends State<ImagePickerPage> {
  var profileImage;
  String? _imageUrl;

  Future<void> _pickImage() async {
    final picker = ImagePicker();
    final pickedFile = await picker.pickImage(source: ImageSource.gallery);

    if (pickedFile != null) {
      setState(() {
        _imageUrl = pickedFile.path;
         
      });
    }
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(child: Padding(
        padding: const EdgeInsets.only(top: 10,bottom: 30),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Center(
                child: Text('Add items',
                style:TextStyle(color:Color.fromARGB(100, 20, 300, 200),
                fontSize:30,
                fontWeight:FontWeight.bold )),
              ),
            ),
             Padding(
                  padding: const EdgeInsets.only(top:30,bottom: 10),
                  child: Text(' Add image form'),
                ),
Padding(
  padding: const EdgeInsets.only(top: 20,right: 80,left: 80),
  child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _imageUrl != null
                  ? Image.network(_imageUrl!, width: 100, height: 100)
                  : Placeholder(
                      fallbackHeight: 100,
                      fallbackWidth: 100,
                    ),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.only(bottom:10),
                child: ElevatedButton(
                  onPressed: _pickImage,
                  child: Text('Pick Image'),
                ),
              ),
            ],
          ),
        ),
),Container(
                   child: Padding(
                     padding: const EdgeInsets.only(top:0,left:80,right:80,bottom:10),
                     child: TextFormField(
                      decoration: InputDecoration(border:OutlineInputBorder() ,labelText: ('Price')),
                               ),
                   ),
                 ),
                  SizedBox(height:10),
                 Container(
                   child: Padding(
                     padding: const EdgeInsets.only(top:0,left:80,right: 80,bottom: 10),
                     child: TextFormField(
                      decoration: InputDecoration(border:OutlineInputBorder() ,labelText: ('Description')),
                               ),
                   ),
                 ),
                Column(
                 children: [
                   Center(
                     child: Padding(
                       padding: const EdgeInsets.only(top: 50),
                       child: ElevatedButton(
                        onPressed: () {
                           Navigator.push(context, MaterialPageRoute(
                        builder: (context) {
                          return Page1();
                        },
                      ));
                        }, child:Text('Addimage'),
                        
                       ),
                     ),
                   )
                 ]
                ),
          ],
        ),
      ),)
     );
      
  }
}
  