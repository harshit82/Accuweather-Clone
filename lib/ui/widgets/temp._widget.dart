import 'package:flutter/material.dart';

import 'package:accuweather/constants/constants.dart';

class Temperature extends StatefulWidget {
  final String temp;
  final String aqi;

  const Temperature({
    Key? key,
    required this.temp,
    required this.aqi,
  }) : super(key: key);

  @override
  State<Temperature> createState() => _TemperatureState();
}

class _TemperatureState extends State<Temperature> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Wrap(
            children: [
              const SizedBox(width: 35),
              Text(
                widget.temp, // \u2103 for centigrade
                style: const TextStyle(fontSize: 120, color: Colors.white70),
                overflow: TextOverflow.ellipsis,
              ),
              const Text(
                celsius, // \u2103 for centigrade
                style: TextStyle(fontSize: 35, color: Colors.white70),
                overflow: TextOverflow.ellipsis,
              ),
            ],
          ),
          const Text(
            "Haze",
            style: TextStyle(fontSize: 25, color: Colors.white70),
            overflow: TextOverflow.ellipsis,
          ),
          const SizedBox(
            height: 15,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 130),
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.white70),
              child: Padding(
                padding: const EdgeInsets.all(6),
                child: Wrap(
                  children: [
                    const Icon(
                      Icons.masks,
                      color: Colors.grey,
                      size: 15,
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    Text(
                      "AQI ${widget.aqi}",
                      style: const TextStyle(
                        fontSize: 15,
                        color: Colors.grey,
                      ),
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
