import 'package:accuweather/ui/views/page1.dart';
import 'package:accuweather/ui/views/page2.dart';
import 'package:accuweather/ui/views/page3.dart';
import 'package:accuweather/ui/views/page4.dart';
import 'package:accuweather/ui/views/page5.dart';
import 'package:flutter/material.dart';
import 'package:page_view_indicators/page_view_indicators.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final pageController = PageController();
  final _currentPageNotifier = ValueNotifier<int>(0);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        _buildPageView(),
        _buildCircleIndicator(),
      ],
    );
  }

  PageView _buildPageView() {
    return PageView(
      physics: const BouncingScrollPhysics(),
      controller: pageController,
      onPageChanged: ((value) {
        _currentPageNotifier.value = value;
      }),
      children: const [
        Page1(),
        Page2(),
        Page3(),
        Page4(),
        Page5(),
      ],
    );
  }

  _buildCircleIndicator() {
    return Positioned(
      top: MediaQuery.of(context).size.height / 9,
      left: 10.0,
      right: 10.0,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: CirclePageIndicator(
          itemCount: 5,
          currentPageNotifier: _currentPageNotifier,
          selectedDotColor: Colors.white,
          size: 6,
        ),
      ),
    );
  }
}
