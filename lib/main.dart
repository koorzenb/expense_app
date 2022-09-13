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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter App'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.end,
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
