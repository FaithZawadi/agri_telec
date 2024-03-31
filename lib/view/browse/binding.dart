import 'package:agri_ai/view/browse/controller.dart';
import 'package:get/get.dart';

class BrowseBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<BrowseController>(() => BrowseController());
  }
}
