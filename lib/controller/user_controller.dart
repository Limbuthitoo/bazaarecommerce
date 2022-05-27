import 'package:bazaar/model/user_model.dart';
import 'package:bazaar/service/remote_service.dart';
import 'package:get/get.dart';

class UserController extends GetxController {
  var userData = <BazaarUserModel>[].obs;
  var isLoading = true.obs;
  Future getUser() async {
    try {
      isLoading(true);
      var data = await BazarService.fetchUser();
      if (data != null) {
        userData.value = data;
      }
    } catch (error) {
      Get.snackbar("Error", error.toString());
    } finally {
      isLoading(false);
    }
  }
}
