import 'package:flutter/material.dart';
// import 'package:flutter/cupertino.dart';
import 'package:call_me_maybe/export.dart';
// import 'package:flutter/';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Call Me Maybe',
      theme: ThemeData(primarySwatch: Colors.blueGrey),
      home: MyHomePage(title: 'Call Me Maybe'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var tabs = [Icon(Icons.face), Icon(Icons.article_outlined), Icon(Icons.help_center_outlined)];

  final screens = [
    BusinessCard(),
    Resume(),
    Predictor()
  ]; 

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        initialIndex: 0,
        length: screens.length,
        child: Scaffold(
            backgroundColor: Colors.yellow,
            appBar: AppBar(
              title:
                  Align(alignment: Alignment.center, child: Text(widget.title)),
              bottom: TabBar(tabs: tabs),
            ),
            body: TabBarView(children: screens)));
  }
}
