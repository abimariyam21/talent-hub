import 'package:flutter/material.dart';

class registration2 extends StatefulWidget {
  const registration2 ({super.key});

  @override
  State<registration2 > createState() => _registration2State();
}

class _registration2State extends State<registration2 > {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: 
          Container(     
           child: Column(
              children: [
                Center(
                  child: Padding(
                    padding: const EdgeInsets.only(top:10,bottom:10),
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
                    padding: const EdgeInsets.only(left:300,right:300),
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
                     padding: const EdgeInsets.only(left:300,right:300),
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
                     padding: const EdgeInsets.only(left:300,right:300),
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
  child: ElevatedButton(onPressed:(){},child: Text('Signup'),),
),
              ],
            ),
          ),
        
      
 );
      
  }
}
    
  
