import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:untitled4/provider/Demo.dart';
import 'package:untitled4/view/CmpltShimmer.dart';
import 'package:untitled4/view/SplashScreen.dart';
import 'package:untitled4/view/TheShimmer.dart';
import 'package:untitled4/view/page1.dart';
import 'package:untitled4/view/page2.dart';


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
      home:  SplashScreen(),
      routes: {
        '/page2':(context)=>Page2(),
        '/page1':(context)=>Page1()
      },
    );
  }
}
