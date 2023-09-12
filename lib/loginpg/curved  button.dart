import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

class Curved extends StatefulWidget {
  const Curved({Key? key}) : super(key: key);

  @override
  State<Curved> createState() => _CurvedState();
}

class _CurvedState extends State<Curved> {
  int index = 2;

  @override
  Widget build(BuildContext context) {
    final items = <Widget>[
      Icon(Icons.home, size: 30),
      Icon(Icons.search, size: 30),
      Icon(Icons.favorite, size: 30),
      Icon(Icons.settings, size: 30),
      Icon(Icons.person, size: 30)
    ];
    return Scaffold(
      backgroundColor: Colors.red,
      body: Center(
        child: Text(
          "$index",
          style: TextStyle(fontSize: 120, fontWeight: FontWeight.bold),
        ),
      ),
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.transparent,
        height: 60,
        index: index,
        items: items,
        onTap: (index) => setState(() => this.index = index),
      ),
    );
  }
}
