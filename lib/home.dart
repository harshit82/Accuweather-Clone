import 'package:accuweather/ui/views/page1.dart';
import 'package:accuweather/ui/views/page2.dart';
import 'package:accuweather/ui/views/page3.dart';
import 'package:accuweather/ui/views/page4.dart';
import 'package:accuweather/ui/views/page5.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  PageController pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return PageView(
      physics: const BouncingScrollPhysics(),
      controller: pageController,
      children: const [
        Page1(),
        Page2(),
        Page3(),
        Page4(),
        Page5(),
      ],
    );
  }
}
