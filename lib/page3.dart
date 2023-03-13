import 'package:flutter/material.dart';

class Page3 extends StatelessWidget {
  const Page3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.deepOrangeAccent,
      child: Center(
        child: Text(
          '3rd Page',
          style: TextStyle(
              color: Colors.deepPurple,
              fontSize: 40.0,
              fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
