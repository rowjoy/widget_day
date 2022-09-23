// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors

import 'package:flutter/material.dart';
class ShopScreen extends StatefulWidget {
  const ShopScreen({super.key});

  @override
  State<ShopScreen> createState() => _ShopScreenState();
}

class _ShopScreenState extends State<ShopScreen> {
   late TabController _tabController;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("TapBar"),
      ),
      body:  DefaultTabController(
        initialIndex: 0,
        length: 3,
        child: SafeArea(
          child: Column(
            children: [
              Container(
                  child: TabBar(
                    unselectedLabelColor: Colors.grey,
                    labelStyle: TextStyle(color: Colors.yellow) ,
                    unselectedLabelStyle: TextStyle(color: Colors.black),
                    // ignore: prefer_const_literals_to_create_immutables
                    tabs: [
                        Tab(
                          icon: Icon(Icons.cloud_outlined,color: Colors.red,),
                          text: "Hello",
                        ),
                        Tab(
                          icon: Icon(Icons.beach_access_sharp,color: Colors.red),
                        ),
                        Tab(
                          icon: Icon(Icons.brightness_5_sharp,color: Colors.red),
                        ),
                    ],
                  ),
                
              ),
              Expanded(
                child: Container(
                  child: TabBarView(
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      InkWell(
                        onTap: (){
                        },
                        child: Center(
                          child: Text("It's cloudy here"),
                        ),
                      ),
                      Center(
                        child: Text("It's rainy here"),
                      ),
                      Center(
                        child: Text("It's sunny here"),
                      ),
                    ]
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}