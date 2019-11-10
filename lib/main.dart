import 'dart:math';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    debugShowCheckedModeBanner: false,
      home: MyHome(),
    );
  }
}

class MyHome extends StatefulWidget {

  @override
  State createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {

  final Random _random = Random();
  Color _color = Colors.white;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: GestureDetector(
          onTap: () {
            setState(() {
              _color = Color.fromRGBO(
                  _random.nextInt(256),
                  _random.nextInt(256),
                  _random.nextInt(256),
                  1.0);
            });
          },
          child: Container(
            decoration: BoxDecoration(
              color: _color,
            ),
            child: Center(
              child: const Text('Hey there'),
            ),
          ),
        ),
      ),
    );
  }
}
