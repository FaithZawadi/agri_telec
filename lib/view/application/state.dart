import 'package:agri_ai/view/browse/view.dart';
import 'package:agri_ai/view/home/home_screen.dart';
import 'package:agri_ai/view/order%20history/view.dart';
import 'package:agri_ai/view/profile%20screen/view.dart';
import 'package:agri_ai/view/store/view.dart';
import 'package:flutter/material.dart';

class ApplicationState {
  List<Widget> homeScreens = [
    HomeScreen(),
    const BrowseScreen(),
    const StoreScreen(),
    const OrderHistory(),
    const ProfileScreen()
  ];
}
