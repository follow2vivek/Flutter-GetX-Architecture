import 'package:flutter/material.dart';
import 'package:flutter_getx_architecture/provider/user_provider.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class UserController extends GetxController with StateMixin<dynamic> {
  UserProvider? userProvider;
  UserController({@required this.userProvider});

  @override
  void onInit() {
    _getListDataApi();
    super.onInit();
  }

  void _getListDataApi() {
    RxStatus.loading();
    userProvider?.getUserData.then((value) {
      change(value, status: RxStatus.success());
    }).catchError((onError) {
      change(onError, status: RxStatus.error());
    });
  }
}
