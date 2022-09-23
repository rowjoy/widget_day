// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  List<Item> generateItems(int numberOfItems) {
  return List<Item>.generate(numberOfItems, (int index) {
    return Item(
      id: index,
      headerValue: 'Panel $index',
      expandedValue: 'This is item number $index',
    );
  });
}

 late List<Item> _data = generateItems(8);
 double valueColor = 0;
 double progressvalue (int countlanth){
   double _value = valueColor.toDouble() / countlanth.toDouble();
   return _value;
 }

 var valueSwtach = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView (
        child: SafeArea(
          child: Column(
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                child: _buildPanel()
                ),
              LinearProgressIndicator(
                value: progressvalue(20),
                backgroundColor: Colors.black,
                valueColor: AlwaysStoppedAnimation<Color>(Colors.yellow)  ,
                color: Colors.red,
                minHeight: 10,
              ),

              ElevatedButton(
                onPressed: (){
                  setState(() {
                   if(valueColor < 20){
                      valueColor += 1;
                      print(1);
                   }else{
                     valueColor -= 5;
                     print(3);
                   }

                  });
                }, 
                child: Text("Tap me")
              ),

              SizedBox(
                height: 100,
                width: 100,
                child: CircularProgressIndicator(
                  value: progressvalue(20),
                  backgroundColor: Colors.black,
                  valueColor: AlwaysStoppedAnimation<Color>(Colors.yellow)  ,
                  color: Colors.red,
                  strokeWidth: 15,
                ),
              ),

              SizedBox(height: 100,),
              Transform.scale(
                scale: 2.0,
                child: Switch(
                  value: valueSwtach , 
                  onChanged: (vale){
                    setState(() {
                      valueSwtach = vale;
                    });
                  }
                ),
              ),

              Checkbox(
                value: valueSwtach,
                onChanged: (value){
                  setState(() {
                    valueSwtach = value!;
                  });
                }
              )
            ],
          ),
        ),
      )  ,
    );
  }

  Widget _buildPanel() {
    return ExpansionPanelList.radio(
      initialOpenPanelValue: 2,
      children: _data.map<ExpansionPanelRadio>((Item item) {
        return ExpansionPanelRadio(
            value: item.id,
            headerBuilder: (BuildContext context, bool isExpanded) {
              return ListTile(
                title: Text(item.headerValue),
              );
            },
            body: ListTile(
                title: Text(item.expandedValue),
                subtitle:
                    const Text('To delete this panel, tap the trash can icon'),
                trailing: const Icon(Icons.delete),
                onTap: () {
                  setState(() {
                    _data.removeWhere(
                      (Item currentItem) => item == currentItem);
                    _data.removeWhere(( Item currentItem ) => item == currentItem);
                  });
                }));
      }).toList(),
    );
  }


}

class Item {
  Item({
    required this.id,
    required this.expandedValue,
    required this.headerValue,
  });

  int id;
  String expandedValue;
  String headerValue;
}

