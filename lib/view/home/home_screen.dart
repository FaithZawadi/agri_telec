import 'dart:ui';

import 'package:agri_ai/utils/widgets/banner/banner.dart';
import 'package:agri_ai/utils/widgets/textfield_widget.dart';
import 'package:agri_ai/values/colors.dart';
import 'package:agri_ai/view/home/weather.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  final WeatherData? weatherData;
  HomeScreen({super.key, required this.weatherData});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late int temperature;
  late Icon weatherDisplayIcon;
  late AssetImage backgroundImage;

  void updateDisplayInfo(WeatherData weatherData) {
    setState(() {
      temperature = weatherData.currentTemperature.round();
      WeatherDisplayData weatherDisplayData =
          weatherData.getWeatherDisplayData();
      backgroundImage = weatherDisplayData.weatherImage;
      weatherDisplayIcon = weatherDisplayData.weatherIcon;
    });
  }

  @override
  void initState() {
    super.initState();
    updateDisplayInfo(widget.weatherData!);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.primaryElement,
        body: Container(
          constraints: const BoxConstraints.expand(),
          decoration: BoxDecoration(
            image: DecorationImage(image: backgroundImage, fit: BoxFit.cover),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const SizedBox(
                height: 85,
              ),
              Container(
                child: weatherDisplayIcon,
              ),
              const SizedBox(
                height: 15,
              ),
              Center(
                child: Text(
                  '$temperature',
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 80.0,
                    letterSpacing: -5,
                  ),
                ),
              )
            ],
          ),
        )

        // SafeArea(
        //     child: SingleChildScrollView(
        //   child: Padding(
        //     padding: const EdgeInsets.only(top: 24, bottom: 15),
        //     child: Column(
        //       children: [
        //         const Row(
        //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //           children: [
        //             Padding(
        //               padding: EdgeInsets.only(left: 15),
        //               child: Text(
        //                 "teleagri",
        //                 style:
        //                     TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
        //               ),
        //             ),
        //             Padding(
        //               padding: EdgeInsets.only(right: 30),
        //               child: Icon(
        //                 Icons.favorite,
        //                 color: Colors.white,
        //                 size: 32,
        //               ),
        //             )
        //           ],
        //         ),
        //         const SizedBox(
        //           height: 30,
        //         ),
        //         searchTextField(
        //             prefixIcon: const Icon(Icons.search),
        //             hintText: "Search Product"),
        //         const SizedBox(
        //           height: 30,
        //         ),
        //         //  BannerPage()
        //         Container(
        //           constraints: const BoxConstraints.expand(),
        //           decoration: BoxDecoration(
        //               image: DecorationImage(
        //             image: backgroundImage,
        //             fit: BoxFit.cover,
        //           )),
        //           child: Column(
        //             crossAxisAlignment: CrossAxisAlignment.stretch,
        //             children: [
        //               const SizedBox(
        //                 height: 85,
        //               ),
        //               Container(
        //                 child: weatherDisplayIcon,
        //               ),
        //               const SizedBox(
        //                 height: 15,
        //               ),
        //               Center(
        //                 child: Text(
        //                   '$temperature',
        //                   style: const TextStyle(
        //                     color: Colors.white,
        //                     fontSize: 80,
        //                     letterSpacing: -5,
        //                   ),
        //                 ),
        //               )
        //             ],
        //           ),
        //         )
        //       ],
        //     ),
        //   ),
        // )),
        );
  }
}
