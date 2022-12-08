import 'package:accuweather/ui/views/enter_location.dart';
import 'package:accuweather/ui/widgets/aqi.dart';
import 'package:accuweather/ui/widgets/details.dart';
import 'package:accuweather/ui/widgets/temp._widget.dart';
import 'package:accuweather/ui/widgets/three_day_forecast.dart';
import 'package:accuweather/ui/widgets/wind.dart';
import 'package:flutter/material.dart';

class Page1 extends StatefulWidget {
  const Page1({super.key});

  @override
  State<Page1> createState() => _Page1State();
}

class _Page1State extends State<Page1> with SingleTickerProviderStateMixin {
  // late Animation animation;
  // late AnimationController animationController;

  @override
  void initState() {
    // animationController =
    //     AnimationController(vsync: this, duration: const Duration(seconds: 2));

    // animation.addStatusListener((status) {
    //   print(status);
    // });
    super.initState();
    // Presenter().getWeatherData(cityName: "RAnchi");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
            child: const Icon(
              Icons.add,
              color: Colors.white,
            ),
          ),
          centerTitle: true,
          title: const Text(
            "City Name",
            style: TextStyle(
              fontSize: 22,
              color: Colors.white,
            ),
          ),
          actions: const [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Icon(Icons.settings, color: Colors.white),
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
          child: Column(
            children: [
              const SizedBox(height: 200),
              const Temperature(
                aqi: '',
                temp: '',
              ),
              const SizedBox(height: 100),
              const ThreeDayForecast(),
              const SizedBox(height: 50),
              const WindDetailsWidget(
                temp: '',
                time: '',
                windSpeed: '',
              ),
              const SizedBox(height: 30),
              const Details(),
              const SizedBox(height: 30),
              const Aqi(),
            ],
          ),
        ),
      ),
    );
  }

  // @override
  // void dispose() {
  //   animationController.dispose();
  //   super.dispose();
  // }
}
