import 'package:flutter/material.dart';
import 'package:flutter_application_1/USER/cart.dart';


void main() {
  runApp(OrderItemPage());
}

class OrderItemPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Review Your Order',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ReviewOrderPage(),
    );
  }
}

class ReviewOrderPage extends StatefulWidget {
  @override
  _ReviewOrderPageState createState() => _ReviewOrderPageState();
}

class _ReviewOrderPageState extends State<ReviewOrderPage> {
  int _item1Quantity = 2;
  int _item2Quantity = 1;

  void _incrementQuantity(int index) {
    setState(() {
      if (index == 1) {
        _item1Quantity++;
      } else {
        _item2Quantity++;
      }
    });
  }

  void _decrementQuantity(int index) {
    setState(() {
      if (index == 1 && _item1Quantity > 1) {
        _item1Quantity--;
      } else if (index == 2 && _item2Quantity > 1) {
        _item2Quantity--;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Review Your Order'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'Delivery Address:',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text('123 Main St, City, Country'),
            SizedBox(height: 20),
            Text(
              'Your Order Details:',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            OrderDetailCard(
              itemName: 'Item 1',
              quantity: _item1Quantity,
              price: 10.99,
              onIncrement: () => _incrementQuantity(1),
              onDecrement: () => _decrementQuantity(1),
            ),
            OrderDetailCard(
              itemName: 'Item 2',
              quantity: _item2Quantity,
              price: 5.99,
              onIncrement: () => _incrementQuantity(2),
              onDecrement: () => _decrementQuantity(2),
            ),
            SizedBox(height: 20),
            Text(
              'Product Total Price: \$${(_item1Quantity * 10.99 + _item2Quantity * 5.99).toStringAsFixed(2)}',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) {
                    return Cart();
                  }),
                );
              },
              child: Text('Place Order'),
            ),
          ],
        ),
      ),
    );
  }
}

class OrderDetailCard extends StatelessWidget {
  final String itemName;
  final int quantity;
  final double price;
  final VoidCallback? onIncrement;
  final VoidCallback? onDecrement;

  const OrderDetailCard({
    required this.itemName,
    required this.quantity,
    required this.price,
    this.onIncrement,
    this.onDecrement,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 5),
      child: ListTile(
        title: Text(itemName),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Quantity: $quantity'),
            Text('Price: \$${price.toStringAsFixed(2)}'),
          ],
        ),
        trailing: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            IconButton(
              icon: Icon(Icons.remove),
              onPressed: onDecrement,
            ),
            IconButton(
              icon: Icon(Icons.add),
              onPressed: onIncrement,
            ),
          ],
        ),
      ),
    );
  }
}