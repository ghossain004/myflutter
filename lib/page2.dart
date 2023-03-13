import 'package:flutter/material.dart';

class Page2 extends StatelessWidget {
  const Page2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blueAccent,
      child: const Center(
        child: Text(
          '2nd Page',
          style: TextStyle(
              color: Colors.blueGrey,
              fontSize: 40.0,
              fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
