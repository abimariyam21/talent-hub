import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(Payment());
}

class Payment extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Payment Done Animation',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: PaymentScreen(),
    );
  }
}

class PaymentScreen extends StatefulWidget {
  @override
  _PaymentScreenState createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 500),
    );
    _animation = Tween<double>(begin: 0, end: 1).animate(_controller);
    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.only(top:30,right: 40),
          child: Center(child: Text('Payment Done')),
        ),
        leading: Padding(
          padding: const EdgeInsets.only(top: 20),
          child: Icon(Icons.close),
        ),
      ),
      body: Center(
        child: AnimatedBuilder(
          animation: _animation,
          builder: (context, child) {
            return Transform.scale(
              scale: _animation.value,
              child: Padding(
                padding: const EdgeInsets.only(bottom: 30),
                child: Icon(
                  Icons.check_circle,
                  color: Color.fromARGB(255, 4, 56, 212),
                  size: 150.0,
                  
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
