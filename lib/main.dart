import './transaction.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter App',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final List<Transaction> transactions = [
    Transaction(
      id: 't1',
      amount: 69.00,
      title: "takkies",
      date: DateTime.now(),
    ),
    Transaction(
      id: 't2',
      amount: 21.00,
      title: "fanta",
      date: DateTime.now(),
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter App'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            width: double.infinity,
            child: (Card(
              color: Colors.amber[400],
              child: Text('chart'),
              elevation: 5,
            )),
          ),
          Card(
            color: Colors.red[200],
            child: Text('transactions'),
          )
        ],
      ),
    );
  }
}
