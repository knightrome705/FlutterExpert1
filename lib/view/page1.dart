import 'package:flutter/material.dart';
import 'package:untitled4/view/page2.dart';
class Page1 extends StatefulWidget {
  const Page1({super.key});

  @override
  State<Page1> createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text("The Hero Widget"),
      ),
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            InkWell(
             onTap: (){
               Navigator.of(context).pushNamed('/page2');
             },
              child: const Hero(
                  tag: 'tag1',
                  child: Image(image:AssetImage("assests/iphone.jpg"),height: 150,)),
            )
          ],
        ),
      ),
    );
  }
}
