import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_1/paymentdone.dart';

void main() {
  runApp(Cart());
}

class Cart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Cart Page with Payment Symbols',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: CartPage(),
    );
  }
}

class CartPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Padding(
            padding: const EdgeInsets.only(top: 23),
            child: Text(
              'Cart',
              style: TextStyle(
                  fontStyle: FontStyle.italic,
                  fontSize: 40,
                  color: const Color.fromARGB(255, 242, 101, 148),
                  fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 50),
              child: Text(
                'Your Cart is Empty',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(height: 20.0),
            Padding(
              padding: const EdgeInsets.only(bottom: 30),
              child: Text(
                'Add items to your cart to proceed',
                style: TextStyle(fontSize: 20),
              ),
            ),
            SizedBox(height: 20.0),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 130),
                        child: Container(
                            height: 80,
                            width: 80,
                            child: Image.asset('picture/gpay.jpg')),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Column(children: [
              Center(
                child: Padding(
                  padding: const EdgeInsets.only(top: 80),
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(
                        builder: (context) {
                          return Payment();
                        },
                      ));
                    },
                    child: Text('OK'),
                  ),
                ),
              )
            ]),
          ],
        ),
      ),
    );
  }
}

class PaymentSymbol extends StatelessWidget {
  final String imagePath;

  PaymentSymbol({required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: Colors.grey[200],
      ),
      child: Image.asset(
        imagePath,
        width: 50.0,
        height: 50.0,
      ), 
    );
  }
}
