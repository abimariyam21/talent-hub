import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});
 
  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
      Container(
        child: Column(
          children: [
            Center(
              child: Padding(
                padding: const EdgeInsets.only(top: 15,bottom: 10),
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
         padding: const EdgeInsets.only(left: 300,right: 300),
         child: TextFormField(
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
         padding: const EdgeInsets.only(left: 300,right: 300),
         child: TextFormField(
          decoration: InputDecoration(border: OutlineInputBorder(),labelText: ('6 digits')),
         ),
       ),
     ),
     SizedBox(height: 05),
      Padding(
  padding: const EdgeInsets.only(top:60),
  child: ElevatedButton(onPressed:(){},
  child:Text('Login'),),
),
          ],
        ),
      ),
     
     );
  } 
} 