import 'package:accuweather/model/climate_model.dart';
import 'package:accuweather/services/fetcher.dart';

class Presenter {
  Future getWeatherData({required String cityName}) async {
    Map<String, dynamic> weatherDataMap =
        await Fetcher().getCityWeather(cityName);
    var weather = ClimateModel.fromJson(weatherDataMap);
    return weather;
  }
}
