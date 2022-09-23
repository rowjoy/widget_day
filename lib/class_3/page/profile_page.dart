// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, prefer_final_fields


import 'package:flutter/material.dart';
class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  List _iteam = [
    "Jamirul islam",
    "Kamal maia",
    "Kamrul islam",
  ];

   late var selected = _iteam.first;
  @override
  Widget build(BuildContext context) {
     return Scaffold(
      body:  DefaultTabController(
        initialIndex: 0,
        length: 3,
        child: SafeArea(
          child: Column(
            children: [
               Container(
                 height: 100,
                 color: Colors.green,
                 child: TabBar(
                   // ignore: prefer_const_literals_to_create_immutables
                   tabs: [
                     Tab(
                       icon: Icon(Icons.home),
                     ),
                     Tab(
                       icon: Icon(Icons.settings),
                     ),
                     Tab(
                       icon: Icon(Icons.person),
                     ),
                   ],
                 ),
               ),
               Expanded(
                 flex: 5,
                 child: Container(
                   color: Colors.red,
                   child: TabBarView(
                     children: [
                       Container(
                         child: Center(
                           child: Column(
                             // ignore: prefer_const_literals_to_create_immutables
                             children: [
                               RotatedBox(
                                 quarterTurns: 4,
                                 child: Text("Hello", style:   TextStyle(color: Colors.white,fontSize: 27,fontWeight: FontWeight.bold),),
                                ),
                               SizedBox(
                                 height: 100,
                               ),
                               DropdownButton(
                                 value: selected,
                                 elevation: 8,
                                 hint: Text("Select"),
                                 items: _iteam.map((e){
                                   return DropdownMenuItem(
                                     value: e,
                                     child: Text("$e"),
                                    );
                                 }).toList(),
                                 onChanged: (value){
                                    setState(() {
                                      selected = value;
                                      print(selected);
                                    });
                                 }
                              ),
                             ],
                           ) ,
                          ),
                        ),
                       Container(child: Center(child: Text("Tap two"),),),
                       Container(child: Center(child: Text("Tap Three"),),),
                     ],
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