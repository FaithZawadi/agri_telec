import 'package:agri_ai/utils/navbar/bottom_nav_bar.dart';
import 'package:agri_ai/utils/routes/names.dart';
import 'package:agri_ai/utils/routes/pages.dart';
import 'package:agri_ai/view/application/view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  
  @override
  Widget build(BuildContext context) {
    
    return GetMaterialApp(
     
      debugShowCheckedModeBanner: false,
       initialRoute: AppRoutes.login,
       getPages: AppPages.routes,
       builder: EasyLoading.init(),
     
      // home: ApplicationPage()
    );
  }
}
