// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:widget_class/screen/home_screen.dart';
import 'package:widget_class/screen/profile_screen.dart';
import 'package:widget_class/screen/shop_screen.dart';
class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {

  List<Widget> screen = [
    HomeScreen(),
    ShopScreen(),
    ProfileScreen(),
  ];

  int tabScreen = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.yellow ,
        elevation: 5,
        type: BottomNavigationBarType.fixed,
        iconSize: 25,
        selectedFontSize: 20,
        unselectedFontSize: 16,
        // ignore: prefer_const_literals_to_create_immutables
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home"
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.card_travel),
            label: "Shop"
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "Profile"
          ),
        ],
        currentIndex: tabScreen,
        onTap: (index){
          setState(() {
            tabScreen = index;
          });
        },
      ) ,
      body: screen[tabScreen],
    );
  }
}