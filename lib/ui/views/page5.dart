import 'package:accuweather/constants/climate_images.dart';
import 'package:accuweather/constants/climate_icons.dart';
import 'package:accuweather/model/climate_model.dart';
import 'package:accuweather/services/parser.dart';
import 'package:accuweather/ui/views/enter_location.dart';
import 'package:accuweather/ui/views/settings.dart';
import 'package:accuweather/ui/widgets/aqi.dart';
import 'package:accuweather/ui/widgets/details.dart';
import 'package:accuweather/ui/widgets/temp._widget.dart';
import 'package:accuweather/ui/widgets/three_day_forecast.dart';
import 'package:accuweather/ui/widgets/wind.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class Page5 extends StatefulWidget {
  const Page5({super.key});

  @override
  State<Page5> createState() => _Page5State();
}

class _Page5State extends State<Page5> {
  ClimateModel climateModel = ClimateModel();

  String cityName = "City Name";
  String temp = "";
  String visibility = "";
  String windSpeed = "";
  String realFeel = "";
  String pressure = "";
  String humidity = "";
  String name = "";
  String clouds = "";
  String max = "";
  String windDegree = "";
  String min = "";

  Future<void> _loadData() async {
    // ignore: prefer_typing_uninitialized_variables
    var decodedJson;
    try {
      decodedJson = await Parser().getCityWeather(cityName: "Goa");
    } catch (e) {
      if (kDebugMode) {
        print(e);
      }
    }
    climateModel = ClimateModel.fromJson(decodedJson as Map<String, dynamic>);

    setState(() {
      cityName = climateModel.name.toString();
      temp = climateModel.main!.temp.toString();
      visibility = climateModel.visibility.toString();
      pressure = climateModel.main!.pressure.toString();
      humidity = climateModel.main!.humidity.toString();
      realFeel = climateModel.main!.feelsLike.toString();
      name = climateModel.weather![0].main.toString();
      windSpeed = climateModel.wind!.speed.toString();
      clouds = climateModel.clouds!.all.toString();
      max = climateModel.main!.tempMax.toString();
      min = climateModel.main!.tempMin.toString();
      windDegree = climateModel.wind!.deg.toString();
    });
  }

  @override
  void initState() {
    _loadData();
    super.initState();
  }

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
          title: Text(
            cityName,
            style: const TextStyle(fontSize: 22),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: GestureDetector(
                onTap: (() {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const Settings()));
                }),
                child: const Icon(Icons.settings),
              ),
            ),
          ]),
      body: Container(
        height: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(ClimateImages().chooseImage(name)),
            fit: BoxFit.cover,
          ),
        ),
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          physics: const ClampingScrollPhysics(),
          child: Column(children: [
            const SizedBox(height: 200),
            Temperature(
              realFeel: realFeel,
              temp: temp,
              name: name,
            ),
            const SizedBox(height: 100),
            ThreeDayForecast(
              name: name,
              max: max,
              min: min,
            ),
            const SizedBox(height: 50),
            WindDetailsWidget(
              temp: temp,
              time: '',
              windSpeed: windSpeed,
              icon: ClimateIcons().chooseIcon(name),
            ),
            const SizedBox(height: 30),
            Details(
              humidity: humidity,
              pressure: pressure,
              visibility: visibility,
              windSpeed: windSpeed,
              clouds: clouds,
              windDegree: windDegree,
            ),
            const SizedBox(height: 30),
            const Aqi(),
          ]),
        ),
      ),
    );
  }
}
