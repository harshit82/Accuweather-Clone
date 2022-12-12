import 'package:accuweather/constants/units/wind_units.dart';
import 'package:flutter/material.dart';
import 'package:accuweather/constants/units/pressure_units.dart';

class Details extends StatelessWidget {
  final String visibility;
  final String windSpeed;
  final String humidity;
  final String pressure;
  final String clouds;
  final String windDegree;

  const Details({
    Key? key,
    required this.visibility,
    required this.windSpeed,
    required this.humidity,
    required this.pressure,
    required this.clouds,
    required this.windDegree,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Colors.white70,
      ),
      height: MediaQuery.of(context).size.height / 2.4,
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 6,
              color: Colors.transparent,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 28.0),
              child: Row(
                children: [
                  Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Visibility",
                          style: TextStyle(color: Colors.white70),
                        ),
                        const SizedBox(height: 4),
                        Text(
                          overflow: TextOverflow.ellipsis,
                          visibility,
                          style: const TextStyle(color: Colors.white),
                        ),
                        const SizedBox(height: 10),
                        const Text(
                          "Clouds",
                          style: TextStyle(color: Colors.white70),
                        ),
                        const SizedBox(height: 4),
                        Text(
                          overflow: TextOverflow.ellipsis,
                          "$clouds%",
                          style: const TextStyle(color: Colors.white),
                        ),
                        const SizedBox(height: 10),
                        const Text(
                          overflow: TextOverflow.ellipsis,
                          "Wind speed",
                          style: TextStyle(color: Colors.white70),
                        ),
                        const SizedBox(height: 4),
                        Text(
                          overflow: TextOverflow.ellipsis,
                          "$windSpeed $kPerH",
                          style: const TextStyle(color: Colors.white),
                        ),
                      ]),
                  const SizedBox(width: 120),
                  DetailSubwidget(
                    humidity: humidity,
                    pressure: pressure,
                    windDegree: windDegree,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class DetailSubwidget extends StatelessWidget {
  final String humidity;
  final String pressure;
  final String windDegree;
  const DetailSubwidget({
    Key? key,
    required this.humidity,
    required this.pressure,
    required this.windDegree,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "Humidity",
          style: TextStyle(color: Colors.white70),
        ),
        const SizedBox(height: 4),
        Text(
          overflow: TextOverflow.ellipsis,
          "$humidity%",
          style: const TextStyle(color: Colors.white),
        ),
        const SizedBox(height: 10),
        const Text(
          "Pressure",
          style: TextStyle(color: Colors.white70),
        ),
        const SizedBox(height: 4),
        Text(
          overflow: TextOverflow.ellipsis,
          "$pressure$mBar",
          style: const TextStyle(color: Colors.white),
        ),
        const SizedBox(height: 10),
        const Text(
          "Wind degree",
          style: TextStyle(color: Colors.white70),
        ),
        const SizedBox(height: 4),
        Text(
          overflow: TextOverflow.ellipsis,
          windDegree,
          style: const TextStyle(color: Colors.white),
        ),
      ],
    );
  }
}
