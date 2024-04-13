import 'package:agri_ai/view/browse/view.dart';
import 'package:agri_ai/view/home/home_screen.dart';
import 'package:agri_ai/view/home/location.dart';
import 'package:agri_ai/view/home/weather.dart';
import 'package:agri_ai/view/order%20history/view.dart';
import 'package:agri_ai/view/profile%20screen/view.dart';
import 'package:agri_ai/view/store/view.dart';
import 'package:flutter/material.dart';

class ApplicationState {
  Future<WeatherData>? _weatherDataFuture;

  ApplicationState() {
    _weatherDataFuture = _fetchWeatherData();
  }

  Future<WeatherData> _fetchWeatherData() async {
    LocationHelper locationData = LocationHelper();
    await locationData.getCurrentLocation();
    WeatherData weatherData = WeatherData(locationData: locationData);
    await weatherData.getCurrentTemperature();
    return weatherData;
  }

  List<Widget> get homeScreens => [
        FutureBuilder(
            future: _weatherDataFuture,
            builder: (context, snapshot) {
              return HomeScreen(weatherData: snapshot.data!);
            }),
        const BrowseScreen(),
        const StoreScreen(),
        const OrderHistory(),
        const ProfileScreen()
      ];
}
