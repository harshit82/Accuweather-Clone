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
              Wrap(children: [
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
                          await Parser().getCityWeather(cityName: searchText);
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
            ],
          ),
        ),
      ),
    );
  }
}
