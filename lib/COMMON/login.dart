import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/ADMIN/homeadmin.dart';


class Login extends StatefulWidget {
  const Login({super.key, required String type});
 
  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
   var Mail_id=TextEditingController();
  var password=TextEditingController();
 
Future<void> checkdata() async {
  if(Mail_id.text=='admin@123' && password.text=='admin123')
  {
    Navigator.push(context, MaterialPageRoute(
                        builder: (context) {
                          return Adminhome();
                        },
                      ));
  }


}


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
      Container(
        child: Column(
          children: [
            Center(
              child: Padding(
                padding: const EdgeInsets.only(top: 100,bottom: 10),
                child: Text('Login',
                     style:TextStyle(color:Color.fromRGBO(45, 124, 222,27),
                     fontSize:40,
                     fontWeight:FontWeight.bold ),),
              ),
            ),
             Padding(
       padding: const EdgeInsets.only(top: 30,bottom: 10),
       child: Text('Email'),
     ),
     Container(
       child: Padding(
         padding: const EdgeInsets.only(left: 50,right: 50),
         child: TextFormField(
          controller: Mail_id,
          decoration: InputDecoration(border: OutlineInputBorder(),labelText: ('Mail_id')),
         ),
       ),
     ),
     SizedBox(height: 05),
      Padding(
       padding: const EdgeInsets.only(top: 30,bottom: 10),
       child: Text('Password'),
     ),
     Container(
       child: Padding(
         padding: const EdgeInsets.only(left: 50,right: 50),
         child: TextFormField(
          controller: password,
          decoration: InputDecoration(border: OutlineInputBorder(),labelText: ('6 digits')),
         ),
       ),
     ),
     SizedBox(height: 05),
      Padding(
  padding: const EdgeInsets.only(top:60),
  child: ElevatedButton(onPressed:(){
    checkdata();
//  Navigator.push(context, MaterialPageRoute(
//                         builder: (context) {
//                           return Adminhome();
//                         },
//                       ));

  },
  child:Text('Login'),),
),
          ],
        ),
      ),
     
     );
  } 
} 
