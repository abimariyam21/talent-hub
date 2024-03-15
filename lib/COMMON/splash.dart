import 'package:flutter/material.dart';
import 'package:flutter_application_1/COMMON/login.dart';

class Mypage extends StatefulWidget {
  const Mypage({super.key});

  @override
  State<Mypage> createState() => _MypageState();
}

class _MypageState extends State<Mypage> {

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text('Select User Type'),
        centerTitle: true,
      ),
      body: Stack(
        children: [
          Image.asset(
            'picture/background.png',
            fit: BoxFit.cover,
            width: double.infinity,
            height: double.infinity,
          ),
          SingleChildScrollView(
            child: Center(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(height: 40.0),  
                    Text(
                      'Choose your user type:',
                      style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold, color: Color.fromARGB(255, 48, 172, 254)),
                    ),
                    SizedBox(height: 20.0),
                    _buildButton(context, 'User', Icons.person, Login(type:'user')),
                    _buildButton(
                        context, 'Admin', Icons.admin_panel_settings,Login(type:'admin')),
                    _buildButton(
                        context, 'Storekeeper', Icons.shop_rounded, Login(type: 'storekeepers',)),
                    _buildButton(
                        context, 'College', Icons.people, Login(type: 'college',)),
                    _buildButton(context, 'Coordinators', Icons.connect_without_contact_rounded,Login(type: 'coordinators',)),
                  ]
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildButton(BuildContext context, String label, IconData icon, Widget page) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: ElevatedButton(
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return page;
          }));
        },
        style: ElevatedButton.styleFrom(
          padding: EdgeInsets.all(16.0), backgroundColor: Color.fromARGB(255, 234, 124, 253), // Change the button color as needed
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, size: 30.0, color: Colors.white),
            SizedBox(width: 10.0),
            Text(
              label,
              style: TextStyle(fontSize: 18.0, color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}
  