import 'package:bazaar/controller/user_controller.dart';
import 'package:get/get.dart';

class BazaarBindings extends Bindings {
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.put(UserController());
  }
}
