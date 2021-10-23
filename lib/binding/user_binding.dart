import 'package:flutter_getx_architecture/controller/user_controller.dart';
import 'package:flutter_getx_architecture/provider/user_provider.dart';
import 'package:get/get.dart';

class UserBinding implements Bindings {
  @override
  void dependencies() {
    Get.put(UserController(userProvider: Get.put(UserProvider())));
  }
}
