import 'dart:async';

import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';
import 'package:untitled4/view/ListVarient.dart';
import 'package:untitled4/view/TheToggleButton.dart';
class CmpltShimmer extends StatefulWidget {
  const CmpltShimmer({super.key});

  @override
  State<CmpltShimmer> createState() => _CmpltShimmerState();
}

class _CmpltShimmerState extends State<CmpltShimmer> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 3),(){
      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => ALTile(),));
    });
  }
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Shimmer.fromColors(
            baseColor: Colors.grey,
            highlightColor: Colors.white,
            child: Text("Complt Shimmer")),
      ),
      body: Shimmer.fromColors(
        baseColor: Colors.grey,
        highlightColor: Colors.white,
        child: ListView.builder(
          itemBuilder: (context,index) {
            return ListTile(
                  leading: Container(
                    height: 50,
                    width: 50,
                    color: Colors.red,
                  ),
                  title: ShimmerText(value: 100),
                  subtitle: ShimmerText(value: 280,),
                );
          }
        )
      ),
    );
  }
}

class ShimmerText extends StatelessWidget {
  double value;
   ShimmerText({
    super.key,required this.value
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [Container(height: 10,width:value,color: Colors.yellow,)],
    );
  }
}
