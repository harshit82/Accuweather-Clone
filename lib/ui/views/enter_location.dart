import 'package:accuweather/constants/units.dart';
import 'package:accuweather/ui/views/search_screen.dart';
import 'package:flutter/material.dart';

class EnterLocation extends StatelessWidget {
  const EnterLocation({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: const Icon(
            Icons.arrow_back_sharp,
            color: Colors.black,
          ),
        ),
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.only(left: 15.0),
                child: Text(
                  "Manage cities",
                  style: TextStyle(color: Colors.black, fontSize: 30),
                ),
              ),
              const SizedBox(height: 10),
              const SearchBar(),
              const SizedBox(height: 10),
              const CityTile(),
              const SizedBox(height: 10),
              const CityTile(),
              const SizedBox(height: 10),
              const CityTile(),
              const SizedBox(height: 10),
              const CityTile(),
              const SizedBox(height: 10),
              const CityTile(),
            ],
          ),
        ),
      ),
    );
  }
}

class CityTile extends StatelessWidget {
  const CityTile({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height / 8,
      child: ListTile(
        contentPadding: const EdgeInsets.fromLTRB(16, 16, 16, 4),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        tileColor: Colors.blueGrey[800],
        isThreeLine: true,
        title: const Text(
          "City Name",
          style: TextStyle(
            color: Colors.white,
            fontSize: 18,
          ),
        ),
        subtitle: const Text(
          "AQI 187 26$celsius / 9$celsius",
          style: TextStyle(
            color: Colors.white70,
            fontSize: 15,
          ),
        ),
        trailing: const Text(
          "26$celsius",
          style: TextStyle(
            fontSize: 40,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}

class SearchBar extends StatefulWidget {
  const SearchBar({
    Key? key,
  }) : super(key: key);

  @override
  State<SearchBar> createState() => _SearchBarState();
}

class _SearchBarState extends State<SearchBar> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (() {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => const SearchTextField()));
      }),
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(120),
            color: Colors.grey[100],
          ),
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height / 16,
          child: Padding(
            padding: const EdgeInsets.only(left: 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: const [
                Icon(
                  Icons.search_sharp,
                  color: Colors.grey,
                ),
                SizedBox(width: 10),
                Text(
                  "Enter location",
                  style: TextStyle(color: Colors.grey),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
