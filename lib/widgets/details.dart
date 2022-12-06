import 'package:accuweather/constants.dart';
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
                        Text("Real Feel"),
                        SizedBox(height: 4),
                        Text("20$celsius"),
                        SizedBox(height: 10),
                        Text("Chance of Rain"),
                        SizedBox(height: 4),
                        Text("20%"),
                        SizedBox(height: 10),
                        Text("Wind speed"),
                        SizedBox(height: 4),
                        Text("20 $windSpeedUnit"),
                      ]),
                  const SizedBox(width: 120),
                  DetailSubwidget(),
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
        Text("Humidity"),
        SizedBox(height: 4),
        Text("46%"),
        SizedBox(height: 10),
        Text("Pressure"),
        SizedBox(height: 4),
        Text("1017mbar"),
        SizedBox(height: 10),
        Text("UV Index"),
        SizedBox(height: 4),
        Text("4"),
      ],
    );
  }
}
