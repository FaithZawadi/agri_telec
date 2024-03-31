import 'package:agri_ai/view/signup/controller.dart';
import 'package:get/get.dart';

class SignupBinding extends Bindings{
  @override

  void dependencies(){
    Get.lazyPut<SignupController>(() => SignupController());
  }
}