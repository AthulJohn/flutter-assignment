import 'package:flutter/material.dart';
import 'splash.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
 
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter BootCamp',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
       
        primarySwatch: Colors.indigo,
      ),
      routes: {
        'splash':(context)=>Appp()
      },
      initialRoute: 'splash',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
 
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
 
  
  @override
  Widget build(BuildContext context) {
  
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.menu,color: Colors.black,),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 30,
        actions: <Widget>[
          Icon(Icons.search,color: Colors.black,)
        ],
        title: Text('Flutter BootCamp',style: TextStyle(color:Colors.black),),
      ),
      body:ListView(children:<Widget>[Stack(children: <Widget>[
        Container(child: Image.asset("assets/background.jpg",fit:BoxFit.fill),width:MediaQuery.of(context).size.width),
        Center(child:Text("<>\n",style: TextStyle(color:Colors.white,fontSize:150,fontWeight:FontWeight.bold,letterSpacing:15),))
      ],),
      Divider(),
      Container(color:Colors.indigo[50],padding:EdgeInsets.all(20),child: Column(
        children: <Widget>[
          Text('Flutter is an open-source UI software development kit created by Google. It is used to develop applications for Android, iOS, Windows, Mac, Linux, Google Fuchsia and the web.'
          ,style:TextStyle(fontSize:30) ,),
          Container(margin:EdgeInsets.all(15),color:Color.fromRGBO(32,91,183,0.8),child: FlatButton(splashColor: Color.fromRGBO(255,255,255,1)
          ,onPressed: null, child:Text('Learn About Flutter',style:TextStyle(color: Colors.black,fontSize:25)),)),
        Text('The Flutter BootCamp conducted by MBCET did their job very well. I made this App as a feedback app since I didn\'t know what to make. I had a Flutter basic knowledge and enrolled in this course for professional support for my queries. In my opinion, You guys did an excellent job and I hope more videos will get uploaded in the youtube channel. As a suggestion, when doing videos, It would be beter if you explain the use of widgets you are using in the videos...'
          ,style:TextStyle(fontSize:30) ,),
        ],
      )),
      ]),
    );
  }
}
