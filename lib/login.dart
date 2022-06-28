import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp( login());
}
class login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
    );
  }
}

class log extends StatefulWidget {
  @override
  State<log> createState() => _MyHomePageState();
}
class _MyHomePageState extends State<log> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body:Text('hi')
    );}
}