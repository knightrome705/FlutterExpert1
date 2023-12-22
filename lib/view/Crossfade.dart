

import 'package:flutter/material.dart';
class Cf extends StatefulWidget {
  const Cf({super.key});

  @override
  State<Cf> createState() => _CfState();
}

class _CfState extends State<Cf> {
@override
var value=CrossFadeState.showFirst;
int count =0;
void counter(){
  count++;
  print(count);
  if(count==3){
    setState(() {
      value=CrossFadeState.showSecond;
    });
  }

}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedCrossFade(firstChild:Container(
              height: 100,
              width: 100,
              color: Colors.green,
            ),
                secondChild:Container(
                  height: 200,
                  width: 200,
                  color: Colors.yellow,
                ),
                crossFadeState: value,
                duration: Duration(seconds: 1)),
            SizedBox(
              height: 100,
            ),
            ElevatedButton(onPressed: (){
              counter();
            }, child: Text("start"))
          ],
        ),
      ),
    );
  }
}
