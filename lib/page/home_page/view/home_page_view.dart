import 'package:flutter/material.dart';
import 'package:the_moviers/page/home_page/view/widgets/sliver_appbar.dart';

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
      body: SliverAppbarHome()
    );
  }
}
