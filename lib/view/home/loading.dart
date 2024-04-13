import 'package:agri_ai/view/home/constants.dart';
import 'package:agri_ai/view/home/home_screen.dart';
import 'package:agri_ai/view/home/location.dart';
import 'package:agri_ai/view/home/weather.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:get/get.dart';

class LoadingScreen extends StatefulWidget {
  const LoadingScreen({super.key});

  @override
  State<LoadingScreen> createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  late LocationHelper locationData;

  Future<void>getLocationData() async{
    locationData = LocationHelper();
    await locationData.getCurrentLocation();

    if (locationData.latitude == null || locationData.longitude == null) {
      Get.snackbar('Error', 'Could not get location');
    }
  }

  void getWeatherData() async {
    await getLocationData();

    // fetch the current weather
    WeatherData weatherData = WeatherData(locationData: locationData);
    await weatherData.getCurrentTemperature();

    if (weatherData.currentTemperature == null || weatherData.currentCondition == null) {
      Get.snackbar('Error', 'Could not get weather');
    }

    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context){
      return HomeScreen(weatherData: weatherData);
    }));
  }

  @override
  void initState(){
    super.initState();
    getWeatherData();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: kLinearGradient,
        ),
        child: Center(
          child: SpinKitRipple(
            color: Colors.white,
            size: 150,
            duration: Duration(milliseconds: 1200),
          )
        ),
      ),
    );
  }
}