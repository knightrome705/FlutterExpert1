import 'package:flutter/material.dart';
import 'package:introduction_slider/source/presentation/pages/introduction_slider.dart';
import 'package:introduction_slider/source/presentation/widgets/buttons.dart';
import 'package:introduction_slider/source/presentation/widgets/dot_indicator.dart';
import 'package:introduction_slider/source/presentation/widgets/introduction_slider_item.dart';
import 'package:untitled4/view/Sum2.dart';
class Slide extends StatefulWidget {
  const Slide({super.key});

  @override
  State<Slide> createState() => _SlideState();
}

class _SlideState extends State<Slide> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
   body:IntroductionSlider(
     items: const [
       IntroductionSliderItem(
         title: Text("jumber"),
         logo: FlutterLogo(),
           backgroundColor:Colors.white
       ),
       IntroductionSliderItem(
           title: Text("jumber"),
           logo: FlutterLogo(),
           backgroundColor:Colors.white

       ),
       IntroductionSliderItem(
           title: Text("jumber"),
           logo: FlutterLogo(),
           backgroundColor:Colors.white
       )
     ],
     done: const Done(
       child: Icon(Icons.done),
           home: Sum2()
     ),
     next: const Next(child: Icon(Icons.forward)),
     back:const Back(child: Icon(Icons.arrow_back)),
     dotIndicator: const DotIndicator(),
   )
    );
  }
}
