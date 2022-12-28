import 'package:accuweather/services/parser.dart';
import 'package:flutter/material.dart';

class SearchTextField extends StatelessWidget {
  const SearchTextField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String searchText;
    TextEditingController textEditingController = TextEditingController();

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(
            top: 15.0,
            left: 18.0,
            bottom: 15.0,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(children: [
                Container(
                  width: MediaQuery.of(context).size.width / 1.3,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(150),
                    color: Colors.grey[200],
                  ),
                  child: TextField(
                    controller: textEditingController,
                    decoration: InputDecoration(
                      contentPadding: const EdgeInsets.symmetric(vertical: 15),
                      prefixIcon: const Icon(
                        Icons.search,
                        color: Colors.grey,
                      ),
                      suffixIcon: GestureDetector(
                        onTap: (() async {
                          searchText = textEditingController.text;
                          await Parser()
                              .getCityWeather(cityName: searchText)
                              .then((value) {
                            if (value == null) {
                              ScaffoldMessenger.of(context).showSnackBar(
                                  const SnackBar(
                                      content: Text("Incorrect City Name")));
                            } else {
                              // TODO: pass and navigate this data to the weather screen pages
                            }
                          });
                        }),
                        child: const Icon(
                          Icons.arrow_forward,
                          color: Colors.grey,
                        ),
                      ),
                      border: InputBorder.none,
                      focusedBorder: InputBorder.none,
                      errorBorder: InputBorder.none,
                    ),
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.01,
                ),
                TextButton(
                    onPressed: () {
                      textEditingController.text = "";
                    },
                    child: const Text("Cancel")),
              ]),
              const SizedBox(height: 26),
              const Text(
                "Popular cities",
                style: TextStyle(color: Colors.grey),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              Wrap(
                children: const [
                  PopularCities(cityName: "Delhi"),
                  PopularCities(cityName: "Mumbai"),
                  PopularCities(cityName: "Chennai"),
                  PopularCities(cityName: "Kolkata"),
                  PopularCities(cityName: "Bangalore"),
                  PopularCities(cityName: "Visakhapatnam"),
                  PopularCities(cityName: "Indore"),
                  PopularCities(cityName: "Guwahati"),
                  PopularCities(cityName: "Lucknow"),
                  PopularCities(cityName: "Hyderabad"),
                  PopularCities(cityName: "Kanpur"),
                  PopularCities(cityName: "Patna"),
                  PopularCities(cityName: "Varanasi"),
                  PopularCities(cityName: "Srinagar"),
                  PopularCities(cityName: "Nellore"),
                  PopularCities(cityName: "Bhopal"),
                  PopularCities(cityName: "Thiruvananthapuram"),
                  PopularCities(cityName: "Goa"),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class PopularCities extends StatelessWidget {
  final String cityName;
  const PopularCities({super.key, required this.cityName});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () async {
        await Parser().getCityWeather(cityName: cityName);
      },
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10), color: Colors.grey[200]),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(cityName),
          ),
        ),
      ),
    );
  }
}
