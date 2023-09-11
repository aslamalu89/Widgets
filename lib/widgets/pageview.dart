import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final PageController _pageController = PageController();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('PageView Example'),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.arrow_back),
              onPressed: () {
                _pageController.previousPage(
                  duration: Duration(milliseconds: 300),
                  curve: Curves.ease,
                );
              },
            ),
            IconButton(
              icon: Icon(Icons.arrow_forward),
              onPressed: () {
                _pageController.nextPage(
                  duration: Duration(milliseconds: 300),
                  curve: Curves.ease,
                );
              },
            ),
          ],
        ),
        body: MyPageView(),
      ),
    );
  }
}

class MyPageView extends StatelessWidget {
  final PageController _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: _pageController,
      children: <Widget>[
        Container(
          color: Colors.blue,
          child: Center(
            child: Text(
              'Page 1',
              style: TextStyle(fontSize: 24, color: Colors.white),
            ),
          ),
        ),
        Container(
          color: Colors.green,
          child: Center(
            child: Text(
              'Page 2',
              style: TextStyle(fontSize: 24, color: Colors.white),
            ),
          ),
        ),
        Container(
          color: Colors.orange,
          child: Center(
            child: Text(
              'Page 3',
              style: TextStyle(fontSize: 24, color: Colors.white),
            ),
          ),
        ),
      ],
    );
  }
}
