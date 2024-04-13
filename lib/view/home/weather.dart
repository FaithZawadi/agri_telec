
import 'package:agri_ai/view/home/constants.dart';
import 'package:agri_ai/view/home/location.dart';
import 'package:dio/dio.dart';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class WeatherDisplayData {
  Icon weatherIcon;
  AssetImage weatherImage;

  WeatherDisplayData({required this.weatherIcon, required this.weatherImage});
}

class WeatherData {
  LocationHelper locationData;
  late double currentTemperature;
  late int currentCondition;

  WeatherData({required this.locationData});

  Future<void> getCurrentTemperature() async {
   try {
     var dio = Dio();

     var response = await dio.get(
      'http://api.openweathermap.org/data/2.5/weather',
      queryParameters: {
        'lat': locationData.latitude,
        'lon': locationData.longitude,
        'appid': '090ef7d8b042235d1002dd01e9c423cc',
        'units': 'metric',
      }
     );
     if (response.statusCode == 200) {
       var currentWeather = response.data;
       currentTemperature = currentWeather['main']['temp'];
       currentCondition = currentWeather['weather'][0]['id'];

     } else{
      Get.snackbar('Error', 'Could not fetch temperature');
     }
   } catch (e) {
     Get.snackbar('Error', e.toString());
   }
  }

  WeatherDisplayData getWeatherDisplayData() {
    if (currentCondition < 600) {
      return WeatherDisplayData(
          weatherIcon: kCloudIcon,
          weatherImage: const AssetImage('assets/images/cloud.png'));
    } else {
      var now = new DateTime.now();

      if (now.hour >= 15) {
        return WeatherDisplayData(
            weatherIcon: kMoonIcon,
            weatherImage: const AssetImage('assets/images/night.png'));
      } else {
        return WeatherDisplayData(
            weatherIcon: kSunIcon,
            weatherImage: const AssetImage('assets/images/sunny.png'));
      }
    }
  }
}
