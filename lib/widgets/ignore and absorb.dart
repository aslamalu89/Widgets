import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Ignores(),
    );
  }
}

class Ignores extends StatefulWidget {
  @override
  _IgnoresState createState() => _IgnoresState();
}

class _IgnoresState extends State<Ignores> {
  bool ignore = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              onPressed: () {
                setState(() {
                  ignore = !ignore;
                });
              },
              child: Text(ignore ? "Blocked" : "All Good"),
              style: ElevatedButton.styleFrom(
                primary: ignore ? Colors.red : Colors.blue,
              ),
            ),
            IgnorePointer(
              ignoring: ignore,
              child: ElevatedButton(
                onPressed: () {},
                child: Text("Click Me"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
