import 'package:flutter/material.dart';

class ThreeDayForecast extends StatelessWidget {
  const ThreeDayForecast({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Column(
          children: const [
            ListTile(
              leading: Icon(
                Icons.sunny,
                color: Colors.white,
              ),
              title: Text(
                "Today; Clear",
                overflow: TextOverflow.ellipsis,
                style: TextStyle(color: Colors.white),
              ),
              trailing: Text(
                "20\u2103 / 10\u2103",
                overflow: TextOverflow.ellipsis,
                style: TextStyle(color: Colors.white),
              ),
            ),
            ListTile(
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
            ListTile(
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
