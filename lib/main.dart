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
      home: MyApp3(),
    );
  }
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // MySnackBar(message, contex) {
  //   return ScaffoldMessenger.of(contex)
  //       .showSnackBar(SnackBar(content: Text(message)));
  // }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
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
      ),
    );
  }
}

class MyApp2 extends StatelessWidget {
  const MyApp2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.blue),
      darkTheme: ThemeData(primarySwatch: Colors.cyan),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: ListView(
          children: [
            Container(
              height: 200,
              width: double.infinity,
              color: Colors.greenAccent,
            ),
            Container(
              height: 200,
              width: double.infinity,
              color: Colors.blueAccent,
            ),
            Container(
              height: 200,
              width: double.infinity,
              color: Colors.redAccent,
            ),
            Container(
              height: 200,
              width: double.infinity,
              color: Colors.purpleAccent,
            ),
            Container(
              height: 200,
              width: double.infinity,
              color: Colors.orangeAccent,
            )
          ],
        ),
      ),
    );
  }
}

class MyApp3 extends StatelessWidget {
  const MyApp3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          body: Row(
            children: [
              // flex: 2,
              Expanded(
                child: Container(
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width / 6,
                  color: Colors.blueGrey,
                ),
              ),

              Expanded(
                child: Container(
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width / 6,
                  color: Colors.blue,
                ),
              ),
              Expanded(
                child: Container(
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width / 6,
                  color: Colors.white,
                ),
              ),
              Expanded(
                child: Container(
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width / 6,
                  color: Colors.deepOrange,
                ),
              ),
              Expanded(
                child: Container(
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width / 6,
                  color: Colors.green,
                ),
              ),
              Expanded(
                child: Container(
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width / 6,
                  color: Colors.indigo,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class MyApp4 extends StatelessWidget {
  const MyApp4({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          body: Center(
            child: Container(
              height: MediaQuery.of(context).size.height / 5,
              width: MediaQuery.of(context).size.width / 3,
              color: Colors.lightBlue,
              child: const Center(
                child: Text('Hello World'),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class MyApp5 extends StatelessWidget {
  const MyApp5({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          body: Center(
            child: Stack(
              alignment: Alignment.topLeft,
              children: [
                Container(
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width,
                  color: Colors.green,
                ),
                Positioned(
                  top: MediaQuery.of(context).size.height / 3,
                  left: MediaQuery.of(context).size.width / 4,
                  child: CircleAvatar(
                    radius: 100,
                    backgroundColor: Colors.red,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class MyApp6 extends StatelessWidget {
  const MyApp6({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          body: Center(
            // child: Image.asset('images/robot.jpg'),
            child: Image.network(
                'https://e1.pxfuel.com/desktop-wallpaper/272/895/desktop-wallpaper-3d-for-android-mobile-3d-mobile-thumbnail.jpg'),
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
