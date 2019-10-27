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
  int index = 0;
  List<Color> myColors = [
    Colors.orange,
    Colors.cyan,
    Colors.deepPurple,
    Colors.deepOrange,
    Colors.red,
    Colors.green
  ];
  void indexIncrement(){
    if (index< myColors.length- 1){
      index++;
    }
    else{
      index = 0;
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: myColors[index],
        title: Text("Flutter Color Changer"),
      ),

      body: Column(
        children: <Widget>[
          Expanded(
            child: FlutterLogo(
              colors: myColors[index],
              size: double.infinity,
            ),
          ),
          RaisedButton(
            onPressed: (){
              setState(() {
                indexIncrement();
              });
            },
            child: Text("Change" , style: TextStyle(color: Colors.white),),
            color: myColors[index]
          )
        ],
      ),
    );
  }
}


