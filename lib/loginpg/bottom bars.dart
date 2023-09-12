import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:untitled1/loginpg/dio.dart';
void main(){
  runApp(MyApp());
}

class Bottom extends StatelessWidget {
  const Bottom({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        color: Colors.black,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0,vertical: 20.0),
          child: GNav(
            backgroundColor: Colors.black,
            color: Colors.red,
            activeColor: Colors.red,
            tabBackgroundColor: Colors.white,
            gap: 8,
            padding: EdgeInsets.all(16),
            tabs: [
            GButton(icon: Icons.home,
            text: "Home",),
            GButton(icon: Icons.favorite_border,
            text: "Likes",),
            GButton(icon: Icons.search,
            text: "search",),
            GButton(icon: Icons.settings,
            text: "settings",)
          ],),
        ),
      )
    );
  }
}
