import 'package:flutter/material.dart';
import 'package:flutter_application_1/page1.dart';

class Home0 extends StatefulWidget {
  const Home0({super.key});

  @override
  State<Home0> createState() => _Home0State();
}

class _Home0State extends State<Home0> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
            child: Padding(
          padding: const EdgeInsets.only(right: 300),
          child: Text(
            'Works',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
        )),
        Padding(
          padding: const EdgeInsets.only(top: 10),
          child: Row(children: [
            Container(
              child: SizedBox(
                height: 180,
                width: 180,
                child: Padding(
                  padding: const EdgeInsets.only(top: 30, left: 10),
                  child: InkWell(onTap:() {
                    Navigator.push(context, MaterialPageRoute(builder: (context){
return Page1();
                    }));
                  },child: Image.asset('picture/drawing.jpg')),
                ),
              ),
            ),
            Container(
              child: SizedBox(
                height: 180,
                width: 180,
                child: Padding(
                  padding: const EdgeInsets.only(top: 30, left: 5),
                   child: InkWell(onTap:() {
                    Navigator.push(context, MaterialPageRoute(builder: (context){
return Page1();
                    }));
                  },
                  child: Image.asset('picture/craft.jpg'),
                ),
              ),
            ),
        )]),
        ),
        Row(children: [
          Container(
            child: SizedBox(
              height: 180,
              width: 180,
              child: Padding(
                padding: const EdgeInsets.only(top: 60, left: 10),
                child: Image.asset('picture/stitching.jpg'),
              ),
            ),
          ),
          Container(
            child: SizedBox(
              height: 180,
              width: 180,
              child: Padding(
                padding: const EdgeInsets.only(top: 60, left: 5),
                child: Image.asset('picture/mehandhi.jpg'),
              ),
            ),
          ),
        ]),
      ],
    ));
  }
}
