import 'package:flutter/material.dart';

class Inter extends StatefulWidget {
  const Inter({super.key});

  @override
  State<Inter> createState() => _InterState();
}

class _InterState extends State<Inter> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child:IntrinsicWidth(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children:[
              Container(
                height: 100,
                width: 150,
                color: Colors.blue,
              ),
              Container(
                height: 100,
                width: 70,
                color: Colors.green,
              ),
              Container(
                height: 100,
                width: 110,
                color: Colors.black,
              ),
            ]

          ),
        )
      ),
    );
  }
}
