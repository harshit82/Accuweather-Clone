import 'package:accuweather/constants/api_details.dart';
import 'package:accuweather/services/location.dart';
import 'package:accuweather/services/networking.dart';

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
      Location location = Location();
      await location.getCurrentLocation();

      var url =
          "$openWeatherMapUrl?lat=${location.latitude}&lon=${location.longitude}&appid=$apiKey&units=metric";
      NetworkHelper networkHelper = NetworkHelper(url: url);
      var weatherData = await networkHelper.getData();
      print(weatherData);
      return weatherData;
    } catch (e) {
      print(e);
    }
  }
}
