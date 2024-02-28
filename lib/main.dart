

import 'package:flutter/material.dart';
import 'package:flutter_application_1/add.dart';
import 'package:flutter_application_1/home.dart';
import 'package:flutter_application_1/home0.dart';
import 'package:flutter_application_1/imagepicker.dart';
import 'package:flutter_application_1/list.dart';
import 'package:flutter_application_1/login.dart';
import 'package:flutter_application_1/notification.dart';
import 'package:flutter_application_1/page1.dart';
import 'package:flutter_application_1/profile.dart';
import 'package:flutter_application_1/rating.dart';

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
      home: ImagePickerPage(),
    );
  }
}

