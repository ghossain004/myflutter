// import 'dart:js';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyHome());
}

class MyHome extends StatelessWidget {
  const MyHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.blue),
      darkTheme: ThemeData(primarySwatch: Colors.cyan),
      debugShowCheckedModeBanner: false,
      home: MyApp(),
    );
  }
}

class MyApp2 extends StatelessWidget {
  const MyApp2({Key? key}) : super(key: key);

  // MySnackBar(message, contex) {
  //   return ScaffoldMessenger.of(contex)
  //       .showSnackBar(SnackBar(content: Text(message)));
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Flutter App'),
        titleSpacing: 0, //default spacing 0
        centerTitle: true,
        toolbarHeight: 60, //default height 60
        toolbarOpacity: 1, //default opacity 1
        backgroundColor: Colors.deepPurple,
        actions: [
          IconButton(
              onPressed: () {
                print("menu clicked");
                DropdownMenuItem;
              },
              icon: Icon(Icons.menu))
        ],
      ),
      body: Container(
        child: Text('Hello World'),
      ),
      drawer: Container(
        child: Container(
          child: Text('child drawer activated'),
        ),
      ),
      endDrawer: Container(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // print('button print');
          MySnackBar('hi!', context);
        },
        child: Icon(Icons.arrow_upward),
        backgroundColor: Colors.deepPurple,
      ),
    );
  }
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.blue),
      darkTheme: ThemeData(primarySwatch: Colors.cyan),
      home: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 200.0,
                width: double.infinity,
                color: Colors.greenAccent,
              ),
              Container(
                height: 200.0,
                width: double.infinity,
                color: Colors.blueAccent,
              ),
              Container(
                height: 200.0,
                width: double.infinity,
                color: Colors.redAccent,
              ),
              Container(
                height: 200.0,
                width: double.infinity,
                color: Colors.purpleAccent,
              ),
              Container(
                height: 200.0,
                width: double.infinity,
                color: Colors.orangeAccent,
              )
            ],
          ),
        ),
      ),
    );
  }
}

MySnackBar(String message, BuildContext context) {
  return ScaffoldMessenger.of(context)
      .showSnackBar(SnackBar(content: Text(message)));
}
