import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_appp/login.dart';

void main() {
  runApp( register());
}


class register extends StatelessWidget {
  bool  _isObscure = true;

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(statusBarColor: Colors.transparent));
    return MaterialApp(
        title: 'Welcome to Flutter',
        home: reg(
       ),);}}


class reg extends StatefulWidget{
  @override
  State<reg> createState() => _reg();

}

class _reg extends State<reg>{
   late bool  _isObscure ;

  @override
  void initState() {
      _isObscure = true;
      super.initState();

  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(statusBarColor: Colors.transparent));
    return MaterialApp(
      title: 'Welcome to Flutter',
      home: Scaffold(
        extendBodyBehindAppBar: true,
        body:
        SingleChildScrollView(child:
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              child:Image.asset('assets/images/pasta.png',fit: BoxFit.cover,),),

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
                  Text('Register',
                    style:  TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 35,),
                    //  textAlign: TextAlign.left,
                  ),
                  Container(
                    child:Row(
                      children: <Widget>[
                        Text('Help',
                          style:  TextStyle(color: Colors.blue,fontSize: 15,),
                          //   textAlign: TextAlign.right,
                        ),
                        IconButton(onPressed: (){}
                            , icon:   Icon(Icons.help),iconSize : 25,color: Colors.blue,),
                      ],),), ],),),

            Container(
              margin: EdgeInsets.only(left:20,right: 20,top: 10),
              alignment: Alignment.topLeft,
              child : Text('Email',
                style:  TextStyle(color: Colors.black,fontSize: 17,),
              ),),
            Container(
                height: 50,
                width: double.infinity,
                margin: EdgeInsets.only(left:20,right: 20,top: 10),
                child : TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: "Eg. example@email.com",
                  ),
                )
            ),
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
              margin: EdgeInsets.only(left:20,right: 20,top: 10),
              alignment: Alignment.topLeft,
              child : Text('Password',
                style:  TextStyle(color: Colors.black,fontSize: 17,),
              ),),
            Container(
              height: 50,
              width: double.infinity,
              margin: EdgeInsets.only(left:20,right: 20,top: 10),
              child : TextField(
                obscureText: _isObscure,
                decoration: InputDecoration(suffixIcon: IconButton(
                  icon: Icon(
                    _isObscure?
                    Icons.visibility : Icons.visibility_off , ) ,
                  onPressed :(){
                     setState((){
                    _isObscure = !_isObscure;
                  });}
                ),),
              ),),
            Container(
              height: 50,
              width: double.infinity,
              margin: EdgeInsets.only(right: 20,left: 20,top: 10),
              child:ElevatedButton(
                onPressed: () {},
                child: Text('Register',style: TextStyle(fontSize: 18)),
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
                    'Has any  account?',style: TextStyle(),
                  ),
                  TextButton(
                    child:  Text('Sign in here ',style: TextStyle(color: Colors.blue),),

                    onPressed: () {
                      Navigator.push(context,
                        MaterialPageRoute(builder: (context) => login()),);
                    }, )
                  ,
                ], ),
            ),
            Container(
              margin: EdgeInsets.only(right: 20,left: 20,top: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'By regestering your account , you are agree to our',style: TextStyle(fontSize: 15),
                  ),
                  TextButton(
                    child:  Text('terms and conditions ',style: TextStyle(color: Colors.blue,fontSize: 15),),
                    onPressed: () {
                    }, )
                  ,
                ], ),
            ),
          ],),),),);}

}
