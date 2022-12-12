import 'package:accuweather/constants/units/temperature_units.dart';
import 'package:accuweather/constants/units/pressure_units.dart';
import 'package:accuweather/constants/units/measurement_units.dart';
import 'package:accuweather/constants/units/wind_units.dart';
import 'package:flutter/material.dart';

class Settings extends StatefulWidget {
  const Settings({super.key});

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  // TODO: Make the selectedValues to display when selected in the view and create a function for unit conversion

  String selectedValueUnit = metric;
  String selectedValueTemperature = celsius;
  String selectedValueWind = kPerH;
  String selectedValuePressure = mBar;

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
                padding: EdgeInsets.only(left: 15.0, bottom: 8),
                child: Text(
                  "Settings",
                  style: TextStyle(color: Colors.black, fontSize: 30),
                ),
              ),
              const SizedBox(height: 20),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(left: 18.0),
                    child: Text(
                      "UNITS",
                      style: TextStyle(color: Colors.grey),
                    ),
                  ),
                  const SizedBox(height: 5),
                  ListTile(
                    title: const Text("Units"),
                    trailing: DropdownButton(
                      value: selectedValueUnit,
                      items: units,
                      onChanged: (String? value) {
                        setState(() {
                          selectedValueUnit = value!;
                        });
                      },
                    ),
                  ),
                  ListTile(
                    title: const Text("Temperature units"),
                    trailing: DropdownButton(
                      value: selectedValueTemperature,
                      items: temperatureUnits,
                      onChanged: (String? value) {
                        setState(() {
                          selectedValueTemperature = value!;
                        });
                      },
                    ),
                  ),
                  ListTile(
                    title: const Text("Wind speed units"),
                    trailing: DropdownButton(
                      value: selectedValueWind,
                      items: atmosphericPressureUnits,
                      onChanged: (String? value) {
                        setState(() {
                          selectedValueWind = value!;
                        });
                      },
                    ),
                  ),
                  ListTile(
                    title: const Text("Atmospheric pressure units"),
                    trailing: DropdownButton(
                      value: selectedValuePressure,
                      items: windSpeedUnits,
                      onChanged: (String? value) {
                        setState(() {
                          selectedValuePressure = value!;
                        });
                      },
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  List<DropdownMenuItem<String>> get units {
    List<DropdownMenuItem<String>> menuItems = [
      const DropdownMenuItem(value: standard, child: Text(standard)),
      const DropdownMenuItem(value: metric, child: Text(metric)),
      const DropdownMenuItem(value: imperial, child: Text(imperial)),
    ];
    return menuItems;
  }

  List<DropdownMenuItem<String>> get temperatureUnits {
    List<DropdownMenuItem<String>> menuItems = [
      const DropdownMenuItem(value: celsius, child: Text(celsius)),
      const DropdownMenuItem(value: fahrenheit, child: Text(fahrenheit))
    ];
    return menuItems;
  }

  List<DropdownMenuItem<String>> get windSpeedUnits {
    List<DropdownMenuItem<String>> menuItems = [
      const DropdownMenuItem(value: kPerH, child: Text(kPerH)),
      const DropdownMenuItem(value: mPerH, child: Text(mPerH)),
      const DropdownMenuItem(value: mPerS, child: Text(mPerS)),
      const DropdownMenuItem(value: knot, child: Text(knot)),
    ];
    return menuItems;
  }

  List<DropdownMenuItem<String>> get atmosphericPressureUnits {
    List<DropdownMenuItem<String>> menuItems = [
      const DropdownMenuItem(value: mBar, child: Text(mBar)),
      const DropdownMenuItem(value: hPa, child: Text(hPa)),
      const DropdownMenuItem(value: mmHg, child: Text(mmHg)),
      const DropdownMenuItem(value: inHg, child: Text(inHg)),
      const DropdownMenuItem(value: atm, child: Text(atm)),
    ];
    return menuItems;
  }
}
