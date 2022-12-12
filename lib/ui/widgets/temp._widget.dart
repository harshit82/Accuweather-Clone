import 'package:accuweather/constants/units/temperature_units.dart';
import 'package:flutter/material.dart';

import 'package:accuweather/constants/units/pressure_units.dart';

class Temperature extends StatelessWidget {
  final String temp;
  final String realFeel;
  final String name;

  const Temperature({
    Key? key,
    required this.temp,
    required this.realFeel,
    required this.name,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Wrap(
            children: [
              const SizedBox(width: 35),
              Text(
                temp, // \u2103 for centigrade
                style: const TextStyle(fontSize: 100, color: Colors.white70),
                overflow: TextOverflow.ellipsis,
              ),
              const Text(
                celsius, // \u2103 for centigrade
                style: TextStyle(fontSize: 35, color: Colors.white70),
                overflow: TextOverflow.ellipsis,
              ),
            ],
          ),
          Text(
            name,
            style: const TextStyle(fontSize: 25, color: Colors.white70),
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
                child: Column(
                  children: [
                    const Text(
                      "Real feel",
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 15,
                      ),
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    Text(
                      "$realFeel $celsius",
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
