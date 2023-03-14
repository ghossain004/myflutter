import 'package:flutter/material.dart';

class Page1 extends StatelessWidget {
  const Page1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          body: Padding(
            padding: const EdgeInsets.all(20.0),
            child: GridView.count(
              crossAxisCount: 2,
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
