import 'package:flutter/material.dart';
import 'login.dart';

void main() {
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'KopiKu',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: Login(),
    );
  }
}
