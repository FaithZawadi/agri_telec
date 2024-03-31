import 'dart:ui';

import 'package:agri_ai/utils/widgets/banner/banner.dart';
import 'package:agri_ai/utils/widgets/textfield_widget.dart';
import 'package:agri_ai/values/colors.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryElement,
      body: SafeArea(
          child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 24, bottom: 15),
          child: Column(
            children: [
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 15),
                    child: Text(
                      "teleagri",
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 30),
                    child: Icon(
                      Icons.favorite,
                      color: Colors.white,
                      size: 32,
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              searchTextField(
                  prefixIcon: const Icon(Icons.search),
                  hintText: "Search Product"),
              const SizedBox(
                height: 30,
              ),
             BannerPage()
            ],
          ),
        ),
      )),
    );
  }
}
