import 'package:flutter/material.dart';
class Page2 extends StatefulWidget {
  const Page2({super.key});

  @override
  State<Page2> createState() => _Page2State();
}

class _Page2State extends State<Page2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: const Text('page2'),
        backgroundColor: Colors.blue,
      ),
      body: const Column(
        children: [
          Hero(
            tag:'tag1' ,
              child: Image(image: AssetImage('assests/iphone.jpg'))),
        ],
      ),
    );
  }
}
