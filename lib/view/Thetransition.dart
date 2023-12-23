import 'package:flutter/material.dart';

class TransitionWidget extends StatefulWidget {
  const TransitionWidget({Key? key}) : super(key: key);

  @override
  State<TransitionWidget> createState() => _TransitionWidgetState();
}

class _TransitionWidgetState extends State<TransitionWidget>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> fadeAnimation;
  late Animation<Offset> slideAnimation;

  @override
  void initState() {
    super.initState();
    // Create an AnimationController
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    );

    // Create a fade animation
    fadeAnimation = Tween<double>(begin: 1.0, end: 0.0).animate(_animationController);

    // Create a slide animation
    slideAnimation = Tween<Offset>(begin: Offset(0.0, 0.0), end: Offset(0.0, 1.0)).animate(_animationController);

    // Start the animation
    _animationController.forward();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("Transition"),
      ),
      body: Column(
        children: [
          FadeTransition(
            opacity: fadeAnimation,
            child: Container(
              height: 100,
              width: 100,
              color: Colors.green,
            ),
          ),
          SlideTransition(
            position: slideAnimation,
            child: Container(
              height: 100,
              width: 100,
              color: Colors.red,
            ),
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    // Dispose the animation controller when the widget is disposed
    _animationController.dispose();
    super.dispose();
  }
}
