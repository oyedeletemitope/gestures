import 'package:flutter/material.dart';  
  
void main() => runApp(MyApp());  
  
class MyApp extends StatelessWidget {  
  // This widget is the root of your application.  
  @override  
  Widget build(BuildContext context) {  
    return MaterialApp(  
      title: 'Flutter Demo Application', theme: ThemeData(  
      primarySwatch: Colors.blue,),  
      home: MyHomePage(),  
    );  
  }  
}  
class MyHomePage extends StatefulWidget {  
  @override  
  MyHomePageState createState() => new MyHomePageState();  
}  
  
class MyHomePageState extends State<MyHomePage> {  
  @override  
  Widget build(BuildContext context) {  
    return new Scaffold(  
      appBar: new AppBar(  
        title: new Text('gesture'),  
        centerTitle: true,  
      ),  
      body: new Center(child: GestureDetector(  
          onTap: () {  
            print('Box Clicked');  
          },  
          child: Container(  
            height: 60.0,  
            width: 120.0,  
            padding: EdgeInsets.all(10.0),  
            decoration: BoxDecoration(  
              color: Colors.blueGrey,  
              borderRadius: BorderRadius.circular(15.0),  
            ),  
            child: Center(child: Text('Click Me')),  
          )  
      )),  
    );  
  }  
}  