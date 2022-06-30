import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_appp/register.dart';
import 'package:country_code_picker/country_code_picker.dart';



void main() {
  runApp( login());
}


class login extends StatelessWidget {
// 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
// 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

// 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
  @override
Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(statusBarColor: Colors.transparent));
    return MaterialApp(
    title: 'Welcome to Flutter',
    home: Scaffold(
      extendBodyBehindAppBar: true,

      body: SingleChildScrollView(
        child:        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
             child:Image.asset('assets/images/pasta.png',fit: BoxFit.cover,),height: 270,),
     // child:Image.network('https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885_960_720.jpg',fit: BoxFit.cover,),height:200,),
            Container(
              alignment: Alignment.topLeft,
              margin: EdgeInsets.only(left:20,right: 20,top: 10),
           child :  Text('Welcome to Fashion Daily',style: TextStyle(color: Colors.grey,),
             // textAlign: TextAlign.right,
              ),),
            Container(
              margin: EdgeInsets.only(left:20,right: 20,top: 10),
              child: Row(
                mainAxisAlignment:  MainAxisAlignment.spaceBetween,
                children: <Widget>[
                Text('Sign in',
                style:  TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 35,),
            ),
            Container(
              child:Row(
              children: <Widget>[
              Text('Help',
                  style:  TextStyle(color: Colors.blue,fontSize: 15,),

              ),
              IconButton(onPressed: (){}
              , icon:   Icon(Icons.help),iconSize : 25,color: Colors.blue,),
            ],),), ],),),

            Container(
              margin: EdgeInsets.only(left:20,right: 20,top: 10),

              alignment: Alignment.topLeft,
              child : Text('Phone Number',
              style:  TextStyle(color: Colors.black,fontSize: 17,),
            ),),

             Container(
               height: 50,
             margin: EdgeInsets.only(left:20,right: 20,top: 10),
                 decoration: BoxDecoration(
                     border: Border.all(),
                   borderRadius: BorderRadius.circular(7)
                 ),
            child:Row(
                mainAxisAlignment:  MainAxisAlignment.spaceBetween,
                children: <Widget>[Container(
             width: MediaQuery.of(context).size.width*0.42,
              child : CountryCodePicker(
                initialSelection: '+81',
                showFlagMain : false,
                alignLeft : true,
                showDropDownButton: true,
              ),
            ),
               Container (
                   width: MediaQuery.of(context).size.width*0.42,
                 child : TextFormField(
                   decoration: InputDecoration(
                    // border: UnderlineInputBorder(),
                     hintText: "Eg. 812345678",
                   ),
                 )
                   ),])),

            Container(
              height: 50,
              width: double.infinity,
              margin: EdgeInsets.only(right: 20,left: 20,top: 10),
              child:ElevatedButton(
                onPressed: () {},
                child: Text('Sign In',style: TextStyle(fontSize: 18)),
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(7),
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 20,right: 20,top : 10),
              child:Row(
                children: <Widget>[
                  Container(
                    width: 150,
                    height:1,
                    child: Text(''),
                    decoration: new BoxDecoration(color: Colors.grey),
                  ),
                  Spacer(flex:1,),
                  Text('Or',
                    style:  TextStyle(color: Colors.grey,fontSize: 20,),
                  ),Spacer(flex: 1,),
                  Container(
                    width: 150,
                    height: 1,
                    child: Text(''),
                    decoration: new BoxDecoration(color: Colors.grey),
                  ),
                ],),),


            Container(
              height: 50,
              width: double.infinity,
              margin: EdgeInsets.only(right: 20,left: 20,top: 10),
              child:ElevatedButton.icon(
                onPressed: () {},
                icon: Icon(Icons.email,size : 24 ,color: Colors.grey,),
                label: Text('Sign with by google',style: TextStyle(fontSize: 18,color: Colors.blue),),
                style: ElevatedButton.styleFrom(
                  primary: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(7),
                  ),
                ),
              ),
            ),

            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'Doesn`t has any  account?',style: TextStyle(),
                  ),
                  TextButton(
                    child:  Text('Register here ',style: TextStyle(color: Colors.blue),),

          onPressed: () {
            Navigator.push(context,
              MaterialPageRoute(builder: (context) => register()),);
          }, )
                  ,
                ], ),
            ),
            Container(
              width: double.infinity,
              alignment: Alignment.center,
              margin:EdgeInsets.only(left : 20, right: 20),
              child: Text(
                'Use the application according to policy rules , Any kinds of violations will be subject to sanctions',
                style:  TextStyle(color: Colors.grey,fontSize: 16,),
                textAlign: TextAlign.center,
              ),),

          ],
      ),
    ),
  ),);

}}

