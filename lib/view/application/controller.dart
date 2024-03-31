import 'package:agri_ai/view/application/state.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ApplicationController extends GetxController {
  final state = ApplicationState();

  int page = 0;
  late PageController pageController;
  @override
  void onInit() {
    super.onInit();
    pageController = PageController();
  }

  @override
  void dispose() {
    super.dispose();
    pageController.dispose();
  }

  void navigationTapped(int page) {
    pageController.jumpToPage(page);
    update();
  }

  void onPageChanged(int page) {
    page = page;
    update();
  }
}
