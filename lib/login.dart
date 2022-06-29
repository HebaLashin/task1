import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


void main() {
  runApp( login());
}


class login extends StatelessWidget {
// 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
// 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
  @override
Widget build(BuildContext context) {
  return MaterialApp(
    title: 'Welcome to Flutter',
    home: Scaffold(
      body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset("assets/images/pasta.png",height: 200,width: 200),
            Container(
              alignment: Alignment.topLeft,
              margin: EdgeInsets.all(10),
           child :  Text('Welcome to Fashion Daily',style: TextStyle(color: Colors.grey),
              textAlign: TextAlign.right,
              ),),
            Container(
              margin : EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment:  MainAxisAlignment.spaceBetween,
                children: <Widget>[
                Text('Sign In',
                style:  TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 40,),
            //  textAlign: TextAlign.left,
            ),

                Text('Help',
                  style:  TextStyle(color: Colors.blue,fontWeight: FontWeight.bold,fontSize: 10,),
               //   textAlign: TextAlign.right,

                ),
                  IconButton(onPressed: (){}
                  , icon:   Icon(Icons.help),iconSize : 25),


            ],),),
           Container(
               margin : EdgeInsets.all(10),
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
