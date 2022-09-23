// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool activeSaitch = false;
  bool checkMark = false;
  double currentValue = 1.0;
  double progressValue( double count){
    double updateValue = currentValue / count.toDouble();
    return updateValue;
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Screen"),
        centerTitle: true,
      ),
      drawer: Drawer(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(15),
              height: 150,
              color: Colors.yellow,
              child: Row(
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  CircleAvatar(),
                  SizedBox(width: 15,),
                  Text("Jamirul islam",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.red,
                    ),
                  ),
                ],
              ),
            ),
            ListTile(
              onTap: (){},
              leading: Icon(Icons.person),
              title: Text("Profile "),
            ),
            Divider(
              height: 3,
              thickness: 2,
              color: Colors.grey,
            ),
            SizedBox(
              height: 100,
              width: MediaQuery.of(context).size.width,
              child: Card(
                elevation: 5,
                color: Colors.yellow,
                child: Text("Setting"),
              ),
            ),
            ExpansionTile(
              initiallyExpanded: true,
              childrenPadding: EdgeInsets.all(15),
              title: Text("More"),
              subtitle: Text("Cleck now"),
              // leading: Icon(Icons.more),
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                Text("Reloaded 1 of 602 libraries in 1,165ms (compile: 42 ms, reload: 356 ms, reassemble: 678 ms).")
              ],
            ),
            Divider(
              height: 3,
              thickness: 2,
              color: Colors.grey,
            ),
          ],
        ) ,
      ),
      body: SafeArea(
        child: Column(
          children: [
             Switch(
               value: activeSaitch,
               onChanged: (value){
                setState(() {
                  activeSaitch = value;
                  print(activeSaitch);
                });
               }
            ),

            Checkbox(
              value: checkMark ,
              onChanged: (value){
                setState(() {
                  checkMark = value!;
                });
              }
            ),

            SizedBox(height: 100,),
            LinearProgressIndicator(
              value: progressValue(20.0),
              backgroundColor: Colors.red,
              minHeight: 10,
            ),

            ElevatedButton(
              onPressed: (){
                setState(() {
                    currentValue += 1.0;
                });
              },
              child: Text("Progress"),
            ),
            ElevatedButton(
              onPressed: (){
                setState(() {
                    currentValue -= 1.0;
                });
              },
              child: Text(" Down Progress"),
            ),

              SizedBox(
              width: 100,
              height: 100,
              child: CircularProgressIndicator(
                value: progressValue(20.0),
                backgroundColor: Colors.red,
                strokeWidth: 5,
              ),
            ),
            SizedBox(height: 100,),
            LinearProgressIndicator(),
          ],
        ),
      ),
    );
  }
}