import 'package:flutter/material.dart';

class Logo extends StatelessWidget {
  const Logo({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        body: Center(child: Image.asset("picture/logo.png")),
      );
  }
}