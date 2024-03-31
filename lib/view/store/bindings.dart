import 'package:agri_ai/view/store/controller.dart';
import 'package:get/get.dart';

class StoreBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<StoreController>(() => StoreController());
  }
}
