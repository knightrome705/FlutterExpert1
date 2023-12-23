import 'package:flutter/material.dart';
class Tb extends StatefulWidget {
  const Tb({super.key});

  @override
  State<Tb> createState() => _TbState();
}

class _TbState extends State<Tb> {
  List<bool> isSelected=[false,false,false];
  List<bool> isSelected1=[false,false,false];
  bool switched=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
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
            SizedBox(
              height: 100,
            ),
            ToggleButtons(children: [
              Icon(Icons.add,color: Colors.black,),
              Icon(Icons.ac_unit,color: Colors.black,),
              Icon(Icons.abc_outlined,color: Colors.black,)
            ], isSelected: isSelected1,
              onPressed: (value){
              setState(() {
                isSelected1[value]=!isSelected1[value];
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
