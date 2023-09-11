import 'package:flutter/material.dart';
import 'package:untitled1/widgets/animated%20container.dart';
import 'package:untitled1/widgets/animated%20crossfade.dart';
import 'package:untitled1/widgets/hero.dart';
import 'package:untitled1/widgets/intrinsic.dart';
import 'package:untitled1/widgets/sliver.dart';

import 'loginpg/lgpg.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Signuppg(),
    );
  }
}


