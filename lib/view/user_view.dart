import 'package:flutter/material.dart';
import 'package:flutter_getx_architecture/controller/user_controller.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class UserView extends GetView<UserController> {
  const UserView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('Flutter Getx Example'),
      ),
      body: controller.obx(
          (state) => Text(
                state.body.toString(),
              ),
          onLoading: Center(
            child: CircularProgressIndicator(),
          ),
          onError: (error) => Center(
                child: Text(error.toString()),
              )),
    );
  }
}
