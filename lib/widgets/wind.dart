import 'package:accuweather/constants.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Wind extends StatelessWidget {
  const Wind({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height / 8,
      color: Colors.transparent,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: const [
          WindDetails(
            temp: '12.5',
            time: 'Now',
            windSpeed: '10.2',
          ),
          WindDetails(
            temp: '13',
            time: '11:07',
            windSpeed: '15.3',
          ),
          WindDetails(
            temp: '17.8',
            time: '22:00',
            windSpeed: '13.7',
          ),
          WindDetails(
            temp: '24',
            time: '01:08',
            windSpeed: '45.8',
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
  const WindDetails(
      {Key? key,
      required this.temp,
      required this.time,
      required this.windSpeed})
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
          "$temp $celsius",
          style: const TextStyle(color: Colors.white),
        ),
        const SizedBox(height: 4),
        const Icon(
          Icons.sunny_snowing,
          color: Colors.white,
        ),
        const SizedBox(height: 4),
        Wrap(
          children: [
            const FaIcon(
              FontAwesomeIcons.locationArrow,
              color: Colors.white,
              size: 12,
            ),
            Text(
              "$windSpeed $windSpeedUnit",
              style: const TextStyle(color: Colors.white),
            ),
          ],
        ),
      ],
    );
  }
}
