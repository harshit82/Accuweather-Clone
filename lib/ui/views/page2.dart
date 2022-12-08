import 'package:accuweather/ui/views/enter_location.dart';
import 'package:accuweather/ui/widgets/aqi.dart';
import 'package:accuweather/ui/widgets/details.dart';
import 'package:accuweather/ui/widgets/temp._widget.dart';
import 'package:accuweather/ui/widgets/three_day_forecast.dart';
import 'package:accuweather/ui/widgets/wind.dart';
import 'package:flutter/material.dart';

class Page2 extends StatefulWidget {
  const Page2({super.key});

  @override
  State<Page2> createState() => _Page2State();
}

class _Page2State extends State<Page2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: GestureDetector(
            onTap: (() {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const EnterLocation()));
            }),
            child: const Icon(Icons.add),
          ),
          centerTitle: true,
          title: const Text(
            "City Name",
            style: TextStyle(fontSize: 22),
          ),
          actions: const [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Icon(Icons.settings),
            ),
          ]),
      body: Container(
        height: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/haze.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          physics: const ClampingScrollPhysics(),
          child: Column(children: [
            SizedBox(height: 200),
            Temperature(
              aqi: '',
              temp: '',
            ),
            SizedBox(height: 100),
            ThreeDayForecast(),
            SizedBox(height: 50),
            WindDetailsWidget(
              temp: '',
              time: '',
              windSpeed: '',
            ),
            SizedBox(height: 30),
            Details(),
            SizedBox(height: 30),
            Aqi(),
          ]),
        ),
      ),
    );
  }
}
