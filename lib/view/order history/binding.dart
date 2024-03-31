import 'package:agri_ai/view/order%20history/controller.dart';
import 'package:get/get.dart';

class OrderBindings extends Bindings{
  @override
  void dependencies(){
    Get.lazyPut<OrderHistoryController>(() => OrderHistoryController());
  }
}