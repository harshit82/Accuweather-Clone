import 'package:accuweather/constants/units/temperature_units.dart';
import 'package:accuweather/constants/units/wind_units.dart';
import 'package:flutter/material.dart';
import 'package:weather_icons/weather_icons.dart';
import 'package:accuweather/constants/units/pressure_units.dart';

class WindDetailsWidget extends StatelessWidget {
  final String temp;
  final String time;
  final String windSpeed;
  final IconData icon;

  const WindDetailsWidget({
    Key? key,
    required this.temp,
    required this.time,
    required this.windSpeed,
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height / 8,
      color: Colors.transparent,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          WindDetails(
            temp: temp,
            time: 'Now',
            windSpeed: windSpeed,
            icon: icon,
          ),
          WindDetails(
            temp: '13',
            time: '11:07',
            windSpeed: '15.3',
            icon: icon,
          ),
          WindDetails(
            temp: '17.8',
            time: '22:00',
            windSpeed: '13.7',
            icon: icon,
          ),
          WindDetails(
            temp: '24',
            time: '01:08',
            windSpeed: '45.8',
            icon: icon,
          ),
        ],
      ),
    );
  }
}

class WindDetails extends StatelessWidget {
  final String temp;
  final String time;
  final String windSpeed;
  final IconData icon;
  const WindDetails(
      {Key? key,
      required this.temp,
      required this.time,
      required this.windSpeed,
      required this.icon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          time,
          style: const TextStyle(color: Colors.white70),
        ),
        const SizedBox(height: 4),
        Text(
          overflow: TextOverflow.ellipsis,
          "$temp $celsius",
          style: const TextStyle(color: Colors.white),
        ),
        const SizedBox(height: 4),
        Icon(
          icon,
          color: Colors.white,
        ),
        const SizedBox(height: 4),
        Wrap(
          children: [
            const Icon(
              WeatherIcons.wind_direction,
              color: Colors.white,
              size: 12,
            ),
            Text(
              overflow: TextOverflow.ellipsis,
              "$windSpeed $kPerH",
              style: const TextStyle(color: Colors.white),
            ),
          ],
        ),
      ],
    );
  }
}
