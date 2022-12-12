import 'package:flutter/material.dart';
import 'package:weather_icons/weather_icons.dart';

class ClimateIcons {
  final Map<String, IconData> icons = {
    "sunny": WeatherIcons.day_sunny,
    "haze": WeatherIcons.day_haze,
    "windy": WeatherIcons.wind,
    "overcast": WeatherIcons.day_sunny_overcast,
    "thunder": WeatherIcons.thunderstorm,
    "frost": WeatherIcons.snow,
    "rain": WeatherIcons.rain,
    "smoke": WeatherIcons.smoke,
    "smog": WeatherIcons.smog,
    "dew": WeatherIcons.humidity,
    "snow": WeatherIcons.snowflake_cold,
    "cloud": WeatherIcons.cloud,
    "clear": WeatherIcons.night_clear,
  };

  final defaultIcon = WeatherIcons.night_clear;

  IconData chooseIcon(String weather) {
    weather = weather.toLowerCase();
    if (icons.containsKey(weather)) {
      return icons[weather] ?? defaultIcon;
    } else {
      return defaultIcon;
    }
  }
}
