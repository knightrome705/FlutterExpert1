import 'package:flutter/material.dart';
class Tb extends StatefulWidget {
  const Tb({super.key});

  @override
  State<Tb> createState() => _TbState();
}

class _TbState extends State<Tb> {
  List<bool> isSelected=[false,false,false];
  bool switched=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("Toggle"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ToggleButtons(children: [
              Icon(Icons.add),
              Icon(Icons.forward),
              Icon(Icons.arrow_back),
            ], isSelected:isSelected,
            onPressed: (index){
              setState(() {
                isSelected[index]=!isSelected[index];
                print(isSelected);
              });
            },
            ),
            ToggleButtons(children: [
              Icon(Icons.add),
              Icon(Icons.ac_unit),
              Icon(Icons.abc_outlined)
            ], isSelected: isSelected,
              onPressed: (value){
              setState(() {
                isSelected[value]=!isSelected[value];
              });
              },
              fillColor: Colors.blue,
            ),
            Switch(
                onChanged:(value){
                setState(() {
                  switched=value;
              });
                },value:switched ),


          ],


        ),
      ),
    );
  }
}
