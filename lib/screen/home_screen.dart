// ignore_for_file: prefer_const_constructors


import 'package:flutter/material.dart';
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List number = [
    "A",
    "B",
    "C",
    "D"
  ];

 late  var selectedItem = number.first;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home "),
        centerTitle: true,
      ),
      drawer: Drawer(
        child: Column(
          children: [
            Container(
              height: 150,
              decoration: BoxDecoration(
                color: Colors.yellow
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    CircleAvatar(),
                    SizedBox(width: 15,),
                    Text("Jamirul islam", style: TextStyle(color: Colors.white,fontSize: 25),),
                  ],
                ),
              ),
            ),
            SizedBox(height: 15,),
            ListTile(
              leading: Icon(Icons.person),
              title: Text("Personal information"),
              trailing: Icon(Icons.arrow_circle_up),
              onTap: (){},
            ),
            MaterialButton(
              onPressed: (){
                
              },
              child: Text("Save"),
            ),
            Divider(
              color: Colors.yellow,
              height: 2,
              thickness: 1,
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text("Personal information"),
              trailing: Icon(Icons.arrow_circle_up),
              onTap: (){},
            ),
            Divider(
              color: Colors.yellow,
              height: 2,
              thickness: 1,
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text("Personal information"),
              trailing: Icon(Icons.arrow_circle_up),
              onTap: (){},
            ),
            Divider(
              color: Colors.yellow,
              height: 2,
              thickness: 1,
            ),

            ExpansionTile(
              title: Text("More"),
              leading: Icon(Icons.more),
              expandedAlignment: Alignment.center,
              expandedCrossAxisAlignment: CrossAxisAlignment.center,
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("Reloaded 1 of 599 libraries in 1,033ms (compile: 22 ms, reload: 514 ms, reassemble: 434 ms)."),
                ),
              ],
            ),  
          ],
        ),
      ),
      body: Container(
        child: Column(
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            RotatedBox(
              quarterTurns: 4,
              child: Text("Nice"),
            ),
            
            SizedBox(
              height: 50,
              width: 200,
              child: Center(
                child: DropdownButton(
                  hint: Text("Select Item"),
                  isExpanded: true,
                  isDense: true,
                  value: selectedItem,
                  items: number.map((e){
                    return DropdownMenuItem(
                      value: e,
                      child: Text("$e"),
                    );
                  }).toList(), 
                    onChanged:(value){
                      setState(() {
                        selectedItem = value;
                      });
                  }
                ),
              ),
            ),
            ClipOval(
              clipBehavior: Clip.antiAliasWithSaveLayer,
              child: Image.network("https://static.remove.bg/remove-bg-web/3ad3b721d276f1af1fb7121aff638a866139749a/assets/start-1abfb4fe2980eabfbbaaa4365a0692539f7cd2725f324f904565a9a744f8e214.jpg")
            ),
          
          ],
        )
      ),
    );
  }
}

class MyClip extends CustomClipper<Rect> {
  Rect getClip(Size size) {
    return Rect.fromLTWH(0, 0, 10000000, 100);
  }
 
  bool shouldReclip(oldClipper) {
    return false;
  }
}
