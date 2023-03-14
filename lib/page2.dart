import 'package:flutter/material.dart';

class Page2 extends StatelessWidget {
  const Page2({Key? key}) : super(key: key);

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
