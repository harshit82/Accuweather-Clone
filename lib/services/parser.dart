import 'package:accuweather/constants/api_details.dart';
import 'package:accuweather/services/location.dart';
import 'package:accuweather/services/networking.dart';
import 'package:geolocator/geolocator.dart';

///Units:
///1. Standard
///2. Metric
///3. Imperial

class Parser {
  Future<dynamic> getCityWeather({required String cityName}) async {
    try {
      cityName = cityName.toLowerCase();
      var url = "$openWeatherMapUrl?q=$cityName&appid=$apiKey&units=metric";
      NetworkHelper networkHelper = NetworkHelper(url: url);
      Map<String, dynamic> weatherData = await networkHelper.getData();
      print(weatherData);
      return weatherData;
    } catch (e) {
      print(e);
    }
  }

  Future<dynamic> getLocationWeather() async {
    try {
      Position position = await Location().getCurrentLocation();
      var url =
          "$openWeatherMapUrl?lat=${position.latitude}&lon=${position.longitude}&appid=$apiKey&units=metric";
      NetworkHelper networkHelper = NetworkHelper(url: url);
      var weatherData = await networkHelper.getData();
      print(weatherData);
      return weatherData;
    } catch (e) {
      print(e);
    }
  }
}
