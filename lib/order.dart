import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_application_1/cart.dart';

void main() {
  runApp(Order());
}

class OrderedItem {
  final String name;
  final double price;
  final int quantity;

  OrderedItem({required this.name, required this.price, required this.quantity});
}

class Order extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ordered Item Page',
      
      home: OrderedItemPage(),
    );
  }
}

class OrderedItemPage extends StatelessWidget {
  final List<OrderedItem> orderedItems = [
    OrderedItem(name: 'Item 1', price: 10.0, quantity: 2),
    OrderedItem(name: 'Item 2', price: 15.0, quantity: 1),
    OrderedItem(name: 'Item 3', price: 20.0, quantity: 3),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ordered Items'),
        centerTitle: true,
        leading: Icon(Icons.close),
      ),
      body: 
     Center(
  child: Column(
    children: [
      Container(
        color: Color.fromARGB(255, 218, 190, 190),
        height: 300,
        width: 300,
        child: ListView.builder(
          itemCount: orderedItems.length,
          itemBuilder: (context, index) {
            final item = orderedItems[index];
            return ListTile(
              title: Text(item.name),
              subtitle: Text(
                'Price: \$${item.price.toStringAsFixed(2)} | Quantity: ${item.quantity}',
              ),
              // Placing the icon properly
            );
          },
        ),
           
         ),
    Padding(
      padding: const EdgeInsets.all(8.0),
      child: ElevatedButton(onPressed:(){
         Navigator.push(context, MaterialPageRoute(
                        builder: (context) {
                          return Cart();
                        },
                      ));
      },child: Text('Cart')),
    )
       
     ]),
  ),
);

 

  
  }
}