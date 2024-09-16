import 'package:flutter/material.dart';
import 'package:grocery_store/screen/header_parts.dart';
import 'body_parts.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: const Color(0xFFFFFFFF),
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: false,
        selectedItemColor: const Color(0xff005200),
        unselectedItemColor: const Color(0xff56AB91),
        showUnselectedLabels: false,
        items: const [BottomNavigationBarItem(icon: Icon(Icons.home_filled), label: 'Home'),
        BottomNavigationBarItem(icon: Icon(Icons.chat_rounded), label: 'Chat'),
        BottomNavigationBarItem(icon: Icon(Icons.notifications_rounded), label: 'Notifications'),
        BottomNavigationBarItem(icon: Icon(Icons.favorite_rounded), label: 'Favorites'),

      ],
      ),
      body: ListView(
        children: const [
          HeaderParts(),
          foodTiles(),
          foodTiles()
        ],
      ),
    );
  }

}