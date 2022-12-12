import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

final Uri _url = Uri.parse("https://www.accuweather.com/");

class Aqi extends StatelessWidget {
  const Aqi({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Colors.white70,
      ),
      height: MediaQuery.of(context).size.height / 10,
      child: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Air Quality Index",
              style: TextStyle(color: Colors.white70),
            ),
            const SizedBox(height: 10),
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
              Wrap(
                children: const [
                  Icon(
                    Icons.masks,
                    color: Colors.white,
                    size: 20,
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Text(
                    overflow: TextOverflow.ellipsis,
                    "115",
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  GestureDetector(
                    onTap: (() {
                      _launchInBrowser(_url);
                    }),
                    child: const Text(
                      "Full air quality forecast ",
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  const Icon(
                    Icons.arrow_forward_ios,
                    size: 12,
                    color: Colors.white,
                  ),
                ],
              ),
            ]),
          ],
        ),
      ),
    );
  }

  Future<void> _launchInBrowser(Uri url) async {
    if (!await launchUrl(
      url,
      mode: LaunchMode.externalApplication,
    )) {
      throw 'Could not launch $url';
    }
  }
}
