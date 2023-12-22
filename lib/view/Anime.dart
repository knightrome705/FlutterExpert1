import 'package:flutter/material.dart';
class Anime1 extends StatefulWidget {
  const Anime1({super.key});

  @override
  State<Anime1> createState() => _AnimeState();
}

class _AnimeState extends State<Anime1> with SingleTickerProviderStateMixin {
  late Animation animation;
  late Animation covariantanimation;
   late AnimationController animationController;
   @override
  void initState() {
    // TODO: implement initState
    super.initState();
    animationController=AnimationController(vsync: this,duration: const Duration(seconds: 4));
    animation=Tween(begin:0.0,end: 100.0).animate(animationController);
    covariantanimation=ColorTween(begin:Colors.red,end: Colors.blue).animate(animationController);
    animationController.addListener(() {
      print(animation.value);
      setState(() {

      });
    });
    animationController.forward();

  }
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    animationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: animation.value,
              width: animation.value,
              color: covariantanimation.value,
            )
          ],
        ),
      ),

    );
  }
}
