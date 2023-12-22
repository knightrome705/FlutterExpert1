import 'package:flutter/material.dart';
class ThePageView extends StatefulWidget {
  const ThePageView({super.key});

  @override
  State<ThePageView> createState() => _ThePageViewState();
}

class _ThePageViewState extends State<ThePageView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("MyApp"),
        centerTitle: true,
      ),
      body: PageView(
        scrollDirection: Axis.vertical,
        children: [
          Container(
            color: Colors.red,
            child: const Center(
              child: Text("Page1",style: TextStyle(fontSize: 40),),
            ),
          ),
          Container(
            color: Colors.green,
            child: const Center(
              child: Text("Page2",style: TextStyle(fontSize: 40),),
            ),
          ),
          Container(
            color: Colors.blue,
            child: const Center(
              child: Text("Page3",style: TextStyle(fontSize: 40),),
            ),
          )
        ],

      ),
    );
  }
}
