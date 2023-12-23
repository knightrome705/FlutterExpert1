import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
class ThePageView extends StatefulWidget {
  const ThePageView({super.key});

  @override
  State<ThePageView> createState() => _ThePageViewState();
}

class _ThePageViewState extends State<ThePageView> {
 final PageController _pageController=PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("MyApp"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          SizedBox(
            height: 500,
            width: 400,
            child: PageView(
              controller: _pageController,
              scrollDirection: Axis.horizontal,
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
          ),
          SmoothPageIndicator(
            controller:_pageController,
            count: 3 ,
            // effect: JumpingDotEffect(),
           // effect: ColorTransitionEffect(),
           // effect: ScrollingDotsEffect(),
            effect: const ExpandingDotsEffect(),
          )
        ],
      ),
    );
  }
}
