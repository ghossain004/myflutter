import 'package:flutter/material.dart';

class Page1 extends StatelessWidget {
  const Page1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.amberAccent,
      child: const Center(
        child: Text(
          '1st Page',
          style: TextStyle(
              color: Colors.blueAccent,
              fontSize: 40.0,
              fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
