import 'package:flutter/material.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: Text("Flutter Color Changer"),
      ),

      body: Column(
        children: <Widget>[
          Expanded(
            child: FlutterLogo(
              colors: Colors.deepPurple,
              size: double.infinity,
            ),
          ),
          RaisedButton(
            onPressed: (){},
            child: Text("Change" , style: TextStyle(color: Colors.white),),
            color: Colors.deepPurple,
          )
        ],
      ),
    );
  }
}


