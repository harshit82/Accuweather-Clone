import 'package:accuweather/constants/climate_images.dart';
import 'package:accuweather/model/climate_model.dart';
import 'package:accuweather/services/location.dart';
import 'package:accuweather/services/parser.dart';
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
  String min = "";

  Future<void> _loadData() async {
    var decodedJson;
    try {
      decodedJson = await Parser().getCityWeather(cityName: "Kolkata");
    } catch (e) {
      print(e);
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
              realFeel: '40',
              temp: '10',
              name: '',
            ),
            const SizedBox(height: 100),
            ThreeDayForecast(
              name: '',
              max: '',
              min: '',
            ),
            const SizedBox(height: 50),
            const WindDetailsWidget(
              temp: '10',
              time: '2',
              windSpeed: '4',
            ),
            const SizedBox(height: 30),
            Details(
              humidity: '3',
              pressure: '23',
              visibility: '12',
              windSpeed: '4',
              clouds: '',
            ),
            const SizedBox(height: 30),
            const Aqi(),
          ]),
        ),
      ),
    );
  }
}
