import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool _showFirst = true;

  void _toggleCrossFade() {
    setState(() {
      _showFirst = !_showFirst;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Animated Cross-Fade Example'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              AnimatedCrossFade(
                duration: Duration(seconds: 1),
                firstChild: Container(
                  width: 200,
                  height: 200,
                  color: Colors.blue,
                  child: Center(
                    child: Text(
                      'First Widget',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
                secondChild: Container(
                  width: 200,
                  height: 200,
                  color: Colors.red,
                  child: Center(
                    child: Text(
                      'Second Widget',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
                crossFadeState: _showFirst
                    ? CrossFadeState.showFirst
                    : CrossFadeState.showSecond,
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: _toggleCrossFade,
                child: Text('Toggle Cross-Fade'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
