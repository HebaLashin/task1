import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_appp/login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
       primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:PageView(children: [
        Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    Container(
                      width: 70,
                      margin: EdgeInsets.only(top :30,right: 20),
                      child:ElevatedButton(

                        onPressed: () { Navigator.push(context,
                        MaterialPageRoute(builder: (context) =>  login()),);
                        },
                        child: Text('Skip'),
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(50)
                          ),
                        ),
                      ),
                    ),],),),

              Image.asset("assets/images/fantastic.png",height: 50,width: 100,),
              Image.asset("assets/images/blueberry.png",height: 200,width: 200),



              Container(
                width: double.infinity,
                // margin: EdgeInsets.only(top: 20, right: 20, left: 20),
                alignment: Alignment.center,
                margin:EdgeInsets.all(20),
                child: Text(
                  'Buy Any Food from your favorite restaurant',
                  style:  TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 30,),
                  textAlign: TextAlign.center,


                ),),
              Container(
                alignment: Alignment.center,
                margin:EdgeInsets.all(10),
                child : Text(
                  'We are constantly adding your favourite restaurant throughout the territory and around your area carefully selected',
                  style: TextStyle(color: Colors.grey,fontSize: 18),
                  textAlign: TextAlign.center,

                ),),
              Container(

                width: double.infinity,
                margin: EdgeInsets.all(20),
                child:ElevatedButton(
                  onPressed: () {  Navigator.push(context,
                    MaterialPageRoute(builder: (context) =>  login()),);
                  },
                  child: Text('Get Started'),
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),

                    ),

                  ),
                ),
              ),


              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'Dont have an account ?',style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    TextButton(
                      child:  Text('Sign Up',style: TextStyle(color: Colors.green),),
                      onPressed: (

                          ){},)
                    ,
                  ], ),
              ),



            ],

          ),
        ),
        Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    Container(
                      width: 70,
                      margin: EdgeInsets.only(top :30,right: 20),
                      child:ElevatedButton(

                        onPressed: () {  Navigator.push(context,
                          MaterialPageRoute(builder: (context) =>  login()),);
                        },
                        child: Text('Skip'),
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(50)
                          ),
                        ),
                      ),
                    ),],),),

              Image.asset("assets/images/fantastic.png",height: 50,width: 100,),
              Image.asset("assets/images/hamburger.png",height: 200,width: 200),



              Container(
                width: double.infinity,
                // margin: EdgeInsets.only(top: 20, right: 20, left: 20),
                alignment: Alignment.center,
                margin:EdgeInsets.all(20),
                child: Text(
                  'Buy Any Food from your favorite restaurant',
                  style:  TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 30,),
                  textAlign: TextAlign.center,


                ),),
              Container(
                alignment: Alignment.center,
                margin:EdgeInsets.all(10),
                child : Text(
                  'We are constantly adding your favourite restaurant throughout the territory and around your area carefully selected',
                  style: TextStyle(color: Colors.grey,fontSize: 18),
                  textAlign: TextAlign.center,

                ),),

              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      width: 5,
                      height: 5,
                      child: Text(''),
                    decoration: new BoxDecoration(color: Colors.yellow),
                    ), Container(
                      width: 5,
                      height: 5,
                      child: Text(''),
                      decoration: new BoxDecoration(color: Colors.yellow),

                    ), Container(
                      width: 5,
                      height: 5,
                      child: Text(''),
                      decoration: new BoxDecoration(color: Colors.yellow),
                    )
                    ,],),),

              Container(

                width: double.infinity,
                margin: EdgeInsets.all(20),
                child:ElevatedButton(
                  onPressed: () {  Navigator.push(context,
                    MaterialPageRoute(builder: (context) =>  login()),);
                  },
                  child: Text('Get Started'),
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),

                    ),

                  ),
                ),
              ),


              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'Dont have an account ?',style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    TextButton(
                      child:  Text('Sign Up',style: TextStyle(color: Colors.green),),
                      onPressed: (
                          ){},)
                    ,
                  ], ),
              ),



            ],

          ),
        ),
      ],)
    );
  }
}
