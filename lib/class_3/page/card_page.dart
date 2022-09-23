import 'package:flutter/material.dart';
class CardPage extends StatefulWidget {
  const CardPage({super.key});

  @override
  State<CardPage> createState() => _CardPageState();
}

class _CardPageState extends State<CardPage> {

  List image = [

  ];
  @override
  Widget build(BuildContext context) {
     return Scaffold(
       floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
       floatingActionButton: FloatingActionButton.extended(
         onPressed:(){} ,
        label: const Text("Hello"),
        ),
      body: SafeArea (
        child: Column(
          children: [
            Container(
              child: Image.network("https://www.w3schools.com/w3css/img_lights.jpg"),
            ),
            const SizedBox(height: 100,),
            
            Container(
              padding: const EdgeInsets.all(15),
              height: 100,
              width: MediaQuery.of(context).size.width,
              // ignore: prefer_const_constructors
              decoration: BoxDecoration(
                color: Colors.red,
                image: const DecorationImage(
                  image: AssetImage("assets/image_one.jpg"),
                  fit: BoxFit.fill,
                ),
                
              ),
            ),
            const SizedBox(height: 20,),
            Container(
              child: Image.asset("assets/image_two.jpg"),
            ),
          ],
        ),
      )
    );
  }
}