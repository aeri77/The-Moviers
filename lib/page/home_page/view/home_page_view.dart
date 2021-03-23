import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

/// @author Aeri created on 3/23/2021

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: FloatingActionButton(
          onPressed: (){
            Modular.to.pushNamed('/detail');
          },
          child: Text("Detail Page"),
        ),
      ),
    );
  }
}
