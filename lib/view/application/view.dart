import 'package:agri_ai/view/application/controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';

class ApplicationPage extends GetView<ApplicationController> {
  const ApplicationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CupertinoTabBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: controller.page == 0
                  ? Colors.blue // Change to blue when selected
                  : Colors.grey, // Change to grey when unselected
            ),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.search,
              color: controller.page == 1
                  ? Colors.blue // Change to blue when selected
                  : Colors.grey, // Change to grey when unselected
            ),
            label: "Browse",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.store,
              color: controller.page == 2
                  ? Colors.blue // Change to blue when selected
                  : Colors.grey, // Change to grey when unselected
            ),
            label: "Store",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.work,
              color: controller.page == 3
                  ? Colors.blue // Change to blue when selected
                  : Colors.grey, // Change to grey when unselected
            ),
            label: "Order History",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person,
              color: controller.page == 4
                  ? Colors.blue // Change to blue when selected
                  : Colors.grey, // Change to grey when unselected
            ),
            label: "Profile",
          ),
        ],
        onTap: controller.navigationTapped,
      ),
      body: PageView(
        controller: controller.pageController,
        onPageChanged: controller.onPageChanged,
        physics: const NeverScrollableScrollPhysics(),
        children: controller.state.homeScreens,
      ),
    );
  }
}
