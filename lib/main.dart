import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:untitled4/provider/Demo.dart';
import 'package:untitled4/view/Anime.dart';
import 'package:untitled4/view/Crossfade.dart';
import 'package:untitled4/view/Sum2.dart';
import 'package:untitled4/view/ThePageView.dart';
import 'package:untitled4/view/TheToggleButton.dart';
import 'package:untitled4/view/page1.dart';
import 'package:untitled4/view/slidebarFlutter.dart';

void main() {
  runApp(MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => DemoProvider(),)
      ],
      child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData.dark(),
      home:  Cf(),
    );
  }
}
