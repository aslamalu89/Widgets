import 'package:flutter/material.dart';

import '../main.dart';

void main (){
runApp(const MyApp());
}

class HeroDemo extends StatefulWidget {
  const HeroDemo({super.key});

  @override
  State<HeroDemo> createState() => _HeroDemoState();
}

class _HeroDemoState extends State<HeroDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Row(
          children: [
            ListTile(
              trailing: const Hero(
                tag: "tag-1",
                  child: Icon(Icons.person),
              ),
              onTap: ()=> Navigator.of(context).push(MaterialPageRoute(builder: (context)=> SecondPage(),)),
              title: Text("Click on me"),
            ),
          ],
        ),
      ),
    );
  }
}




class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("SeconPage"),
      ),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Hero(tag: "tag-1", child: Image.asset("assets/img_1.png"))
          ],
        ),
      ),
    );
  }
}

