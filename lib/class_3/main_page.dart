// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:widget_class/class_3/page/card_page.dart';
import 'package:widget_class/class_3/page/home_page.dart';
import 'package:widget_class/class_3/page/profile_page.dart';
class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  List appPage = [
    HomePage(),
    CardPage(),
    ProfilePage(),
  ];
  var currentPage = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.yellow,
        elevation: 4,
        currentIndex: currentPage,
        onTap: (value){
          setState(() {
            currentPage = value;
          });
        },
        // ignore: prefer_const_literals_to_create_immutables
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: ""
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.card_giftcard),
            label: ""
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: ""
          ),
        ]
      ),
      body: appPage[currentPage],
    );
  }
}