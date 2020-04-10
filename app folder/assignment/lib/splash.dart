import 'package:flutter/material.dart';
import 'main.dart';

class Appp extends StatefulWidget {
  @override
  _ApppState createState() => _ApppState();
}

class _ApppState extends State<Appp> {
  @override
  void initState(){
    super.initState();
    Future.delayed(Duration(seconds: 3),(){
      Navigator.pushReplacement(context,MaterialPageRoute(builder: (context)=>MyHomePage(),));
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.white,
      body:Center(child: Image.asset('assets/loading-gif-2.gif',fit: BoxFit.fitHeight,),)
    );
  }
}