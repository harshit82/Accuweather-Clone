import 'package:accuweather/constants/constants.dart';
import 'package:flutter/material.dart';

class Details extends StatelessWidget {
  const Details({
    Key? key,
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
                      children: const [
                        Text(
                          "Real Feel",
                          style: TextStyle(color: Colors.white70),
                        ),
                        SizedBox(height: 4),
                        Text(
                          overflow: TextOverflow.ellipsis,
                          "20$celsius",
                          style: TextStyle(color: Colors.white),
                        ),
                        SizedBox(height: 10),
                        Text(
                          "Chance of Rain",
                          style: TextStyle(color: Colors.white70),
                        ),
                        SizedBox(height: 4),
                        Text(
                          overflow: TextOverflow.ellipsis,
                          "20%",
                          style: TextStyle(color: Colors.white),
                        ),
                        SizedBox(height: 10),
                        Text(
                          overflow: TextOverflow.ellipsis,
                          "Wind speed",
                          style: TextStyle(color: Colors.white70),
                        ),
                        SizedBox(height: 4),
                        Text(
                          overflow: TextOverflow.ellipsis,
                          "20 $windSpeedUnit",
                          style: TextStyle(color: Colors.white),
                        ),
                      ]),
                  const SizedBox(width: 120),
                  const DetailSubwidget(),
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
  const DetailSubwidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        Text(
          "Humidity",
          style: TextStyle(color: Colors.white70),
        ),
        SizedBox(height: 4),
        Text(
          overflow: TextOverflow.ellipsis,
          "46%",
          style: TextStyle(color: Colors.white),
        ),
        SizedBox(height: 10),
        Text(
          "Pressure",
          style: TextStyle(color: Colors.white70),
        ),
        SizedBox(height: 4),
        Text(
          overflow: TextOverflow.ellipsis,
          "1017mbar",
          style: TextStyle(color: Colors.white),
        ),
        SizedBox(height: 10),
        Text(
          "UV Index",
          style: TextStyle(color: Colors.white70),
        ),
        SizedBox(height: 4),
        Text(
          overflow: TextOverflow.ellipsis,
          "4",
          style: TextStyle(color: Colors.white),
        ),
      ],
    );
  }
}
