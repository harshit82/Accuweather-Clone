// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class ThreeDayForecast extends StatelessWidget {
  final String name;
  final String min;
  final String max;

  const ThreeDayForecast({
    Key? key,
    required this.name,
    required this.min,
    required this.max,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Column(
          children: [
            ListTile(
              leading: const Icon(
                Icons.sunny,
                color: Colors.white,
              ),
              title: Text(
                "Today; $name",
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(color: Colors.white),
              ),
              trailing: Text(
                "$max\u2103 / $min\u2103",
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(color: Colors.white),
              ),
            ),
            const ListTile(
              leading: Icon(
                Icons.cloud,
                color: Colors.white,
              ),
              title: Text(
                "Tomorrow; Haze",
                style: TextStyle(color: Colors.white),
                overflow: TextOverflow.ellipsis,
              ),
              trailing: Text(
                "24\u2103 / 10\u2103",
                style: TextStyle(color: Colors.white),
                overflow: TextOverflow.ellipsis,
              ),
            ),
            const ListTile(
              leading: Icon(
                Icons.sunny_snowing,
                color: Colors.white,
              ),
              title: Text(
                "Tue; Haze",
                overflow: TextOverflow.ellipsis,
                style: TextStyle(color: Colors.white),
              ),
              trailing: Text(
                "23\u2103 / 8\u2103",
                overflow: TextOverflow.ellipsis,
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
        const SizedBox(height: 10),
        ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
              elevation: 0,
              shape: const StadiumBorder(),
              backgroundColor: Colors.white70),
          child: const Text("5-day forecast"),
        ),
      ],
    );
  }
}
