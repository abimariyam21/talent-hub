import 'package:flutter/material.dart';
import 'package:flutter_application_1/ADMIN/viewall.dart';
import 'package:flutter_application_1/COLLEGE/approvestd.dart';
//import 'package:flutter_application_1/feedbacks.dart';
import 'package:flutter_application_1/COLLEGE/home2.dart';
import 'package:flutter_application_1/COLLEGE/statusclg.dart';
import 'package:flutter_application_1/COLLEGE/STOREKEEPERS/rejectwork.dart';
import 'package:flutter_application_1/COLLEGE/viework.dart';
import 'package:flutter_application_1/COLLEGE/viewsk.dart';
import 'package:flutter_application_1/COLLEGE/viewsk2.dart';
import 'package:flutter_application_1/COLLEGE/viewstd.dart';
import 'package:flutter_application_1/add.dart';
import 'package:flutter_application_1/addhome.dart';
import 'package:flutter_application_1/ADMIN/approvedis-co.dart';
import 'package:flutter_application_1/admin/approvedisco.dart';
import 'package:flutter_application_1/cart.dart';
import 'package:flutter_application_1/DIS-CO/approveclg.dart';
import 'package:flutter_application_1/DIS-CO/coviewstd.dart';
import 'package:flutter_application_1/home.dart';
import 'package:flutter_application_1/home0.dart';
import 'package:flutter_application_1/udtdlt.dart';
import 'package:flutter_application_1/viewfbks.dart';
//import 'package:flutter_application_1/imagepicker.dart';
import 'package:image_picker/image_picker.dart';
import 'package:flutter_application_1/list.dart';
import 'package:flutter_application_1/login.dart';
import 'package:flutter_application_1/logo.dart';
import 'package:flutter_application_1/note.dart';
import 'package:flutter_application_1/order.dart';
import 'package:flutter_application_1/page1.dart';
import 'package:flutter_application_1/page2.dart';
import 'package:flutter_application_1/profile.dart';
import 'package:flutter_application_1/rating.dart';
import 'package:flutter_application_1/registration.dart';
import 'package:flutter_application_1/registration2.dart';
import 'package:flutter_application_1/registration3.dart';
import 'package:flutter_application_1/registration4.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
       
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home:Viewall(),
    );
  }
}

