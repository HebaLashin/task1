import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


void main() {
  runApp( login());
}


class login extends StatelessWidget {

  @override
Widget build(BuildContext context) {
  return MaterialApp(
    title: 'Welcome to Flutter',
    home: Scaffold(
      body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Image.asset("assets/images/blueberry.png",height: 100,width: 100),
            Text('Welcome to Fashion Daily',style: TextStyle(color: Colors.grey),
              textAlign: TextAlign.right,
              ),
            Container(
             // margin : EdgeInsets.all(10),
              child: Row(
                children: <Widget>[
                Text('Sign In',
                style:  TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 40,),
              textAlign: TextAlign.left,
            ),

                Text('Help',
                  style:  TextStyle(color: Colors.blue,fontWeight: FontWeight.bold,fontSize: 10,),
                  textAlign: TextAlign.right,
                ),

            ],),),
           Container(
            child : TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
              ),
            )
           ),

          ],
      ),
    ),
  );

}}
