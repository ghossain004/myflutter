// import 'dart:js';

import 'package:flutter/material.dart';
import 'package:liquid_swipe/liquid_swipe.dart';
import 'package:myflutter/page1.dart';
import 'package:myflutter/page2.dart';
import 'package:myflutter/page3.dart';

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
      home: MyApp12(),
    );
  }
}

class MyApp12 extends StatelessWidget {
  const MyApp12({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          bottom: TabBar(
            tabs: [
              Tab(
                icon: Icon(Icons.yard),
              ),
              Tab(
                icon: Icon(Icons.adb_rounded),
              ),
              Tab(
                icon: Icon(Icons.account_balance),
              ),
            ],
          ),
        ),
        body: TabBarView(children: [
          Page1(),
          Page2(),
          Page3(),
        ]),
      ),
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
                  height: MediaQuery.of(context).size.height * 2,
                  width: MediaQuery.of(context).size.width / 2,
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

class MyApp7 extends StatelessWidget {
  const MyApp7({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: Text('My Flutter App'),
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
          body: ListView(
            children: [
              ListTile(
                title: Text('Person 1'),
                subtitle: Text('List Tile 1 Subtitle'),
                leading: CircleAvatar(
                  child: Icon(Icons.account_circle),
                ),
                trailing: Icon(Icons.call),
              ),
              ListTile(
                title: Text('Person 2'),
                subtitle: Text('List Tile 2 Subtitle'),
                leading: CircleAvatar(
                  child: Icon(Icons.account_circle),
                ),
                trailing: Icon(Icons.call),
              ),
              ListTile(
                title: Text('Person 3'),
                subtitle: Text('List Tile 3 Subtitle'),
                leading: CircleAvatar(
                  child: Icon(Icons.account_circle),
                ),
                trailing: Icon(Icons.call),
              ),
              ListTile(
                title: Text('Person 4'),
                subtitle: Text('List Tile 4 Subtitle'),
                leading: CircleAvatar(
                  child: Icon(Icons.account_circle),
                ),
                trailing: Icon(Icons.call),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class MyApp8 extends StatelessWidget {
  const MyApp8({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final pages = [
      Container(
        color: Colors.amberAccent,
        child: Center(
          child: Text('1st Page'),
        ),
      ),
      Container(
        color: Colors.blueAccent,
        child: Center(
          child: Text('2nd Page'),
        ),
      ),
      Container(
        color: Colors.deepOrangeAccent,
        child: Center(
          child: Text('3rd Page'),
        ),
      ),
    ];
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          body: LiquidSwipe(pages: pages),
        ),
      ),
    );
  }
}

class MyApp9 extends StatelessWidget {
  const MyApp9({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final pages = [
      Page1(),
      Page2(),
      Page3(),
    ];

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          body: LiquidSwipe(pages: pages),
        ),
      ),
    );
  }
}

class MyApp10 extends StatelessWidget {
  const MyApp10({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          body: Padding(
            padding: const EdgeInsets.all(20.0),
            child: GridView.count(
              crossAxisCount: 4,
              mainAxisSpacing: 10,
              crossAxisSpacing: 10,
              children: [
                Container(
                  color: Colors.amber,
                  height: 250,
                  width: 250,
                ),
                Container(
                  color: Colors.black,
                  height: 250,
                  width: 250,
                ),
                Container(
                  color: Colors.blue,
                  height: 250,
                  width: 250,
                ),
                Container(
                  color: Colors.brown,
                  height: 250,
                  width: 250,
                ),
                Container(
                  color: Colors.cyan,
                  height: 250,
                  width: 250,
                ),
                Container(
                  color: Colors.deepOrange,
                  height: 250,
                  width: 250,
                ),
                Container(
                  color: Colors.deepPurple,
                  height: 250,
                  width: 250,
                ),
                Container(
                  color: Colors.green,
                  height: 250,
                  width: 250,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class MyApp11 extends StatefulWidget {
  const MyApp11({Key? key}) : super(key: key);

  @override
  State<MyApp11> createState() => _MyApp11State();
}

class _MyApp11State extends State<MyApp11> {
  var _currentState = 0;
  final pages = [
    Page1(),
    Page2(),
    Page3(),
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: _currentState,
            items: [
              BottomNavigationBarItem(
                label: 'Favorite',
                icon: Icon(Icons.star_border),
              ),
              BottomNavigationBarItem(
                label: 'Recent',
                icon: Icon(Icons.call),
              ),
              BottomNavigationBarItem(
                label: 'Contact',
                icon: Icon(Icons.contact_page),
              ),
            ],
            onTap: (index) {
              setState(() {
                _currentState = index;
              });
            },
          ),
          body: pages[_currentState],
        ),
      ),
    );
  }
}

MySnackBar(String message, BuildContext context) {
  return ScaffoldMessenger.of(context)
      .showSnackBar(SnackBar(content: Text(message)));
}
