import 'package:accuweather/constants.dart';
import 'package:flutter/material.dart';

class Temperature extends StatelessWidget {
  const Temperature({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Wrap(
            children: const [
              SizedBox(width: 35),
              Text(
                "20", // \u2103 for centigrade
                style: TextStyle(fontSize: 120, color: Colors.white70),
              ),
              Text(
                celsius, // \u2103 for centigrade
                style: TextStyle(fontSize: 35, color: Colors.white70),
              ),
            ],
          ),
          const Text(
            "Haze",
            style: TextStyle(fontSize: 25, color: Colors.white70),
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
                  children: const [
                    Icon(
                      Icons.masks,
                      color: Colors.grey,
                      size: 15,
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Text(
                      "AQI 115",
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.grey,
                      ),
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
