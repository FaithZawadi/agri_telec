import 'package:agri_ai/utils/routes/names.dart';
import 'package:agri_ai/utils/routes/observers.dart';
import 'package:agri_ai/view/application/binding.dart';
import 'package:agri_ai/view/application/view.dart';
import 'package:agri_ai/view/home/binding.dart';
import 'package:agri_ai/view/home/home_screen.dart';
import 'package:agri_ai/view/login/binding.dart';
import 'package:agri_ai/view/login/login_screen.dart';

import 'package:agri_ai/view/signup/binding.dart';
import 'package:agri_ai/view/signup/signup_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';

class AppPages {
  static const intial = AppRoutes.initial;
  static final RouteObserver<Route> observer = RouteObservers();
  static List<String> history = [];

  static final List<GetPage> routes = [
    GetPage(
        name: AppRoutes.login,
        page: () => LoginScreen(),
        binding: LoginBinding()),
    GetPage(
        name: AppRoutes.signIn,
        page: () => SignUpScreen(),
        binding: SignupBinding()),
    GetPage(
      name: AppRoutes.home,
      page: () => HomeScreen(),
      binding: HomeScreenBinding(),
    ),
    GetPage(
        name: AppRoutes.application,
        page: () => ApplicationPage(),
        binding: ApplicationBinding())
  ];
}
