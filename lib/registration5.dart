import 'package:flutter/material.dart';
import 'package:flutter_application_1/COLLEGE/approvestd.dart';
import 'package:flutter_application_1/COLLEGE/clghome.dart';
import 'package:flutter_application_1/admin/approvedis-co.dart';

class registration5 extends StatefulWidget {
  const registration5({super.key});

  @override
  State<registration5> createState() => _registration5State();
}

class _registration5State extends State<registration5> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body: 
          Container(     
           child: Column(
              children: [
                Center(
                  child: Padding(
                    padding: const EdgeInsets.only(top:100,bottom:10),
                    child: Text('Registration',
                    style: TextStyle(color: Color.fromARGB(255, 142, 85, 241),
                    fontSize: 30,
                    fontWeight:FontWeight.bold
                    )),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top:10,bottom:10),
                  child: Text(' Name'),
                ),Container(
                  child: Padding(
                    padding: const EdgeInsets.only(left:80,right:80),
                    child: TextFormField(
                      decoration: InputDecoration(border:OutlineInputBorder() ,labelText: ('User_name')),
                    ),
                  ),
                ),
                SizedBox(height:05),
                 Padding(
                   padding: const EdgeInsets.only(top:10,bottom:10),
                   child: Text('Code'),
                 ),Container(
                   child: Padding(
                     padding: const EdgeInsets.only(left:80,right:80),
                     child: TextFormField(
                      decoration: InputDecoration(border:OutlineInputBorder() ,labelText: ('Password')),
                               ),
                   ),
                 ),
                 SizedBox(height:05),
                 Padding(
                   padding: const EdgeInsets.only(top:10,bottom:10),
                   child: Text('Number'),
                 ),Container(
                   child: Padding(
                     padding: const EdgeInsets.only(left:80,right:80),
                     child: TextFormField(
                      decoration: InputDecoration(border:OutlineInputBorder() ,labelText: ('phone_no')),
                               ),
                   ),
                 ),
                 SizedBox(height:10),
                  Text('Have account?Login'),
                 Padding(
                   padding: const EdgeInsets.only(left: 450,right:450,top:20,bottom:10),
                   child: Image.asset('picture/logo.JPG'),
                 ),
                Padding(
  padding: const EdgeInsets.only(top:25),
  child: ElevatedButton(onPressed:(){
     Navigator.push(context, MaterialPageRoute(builder: ((context) {
      return College();
    })));
  },child: Text('Signup'),),
),
              ],
            ),
          ),
        
      
 );
      
  }
}
