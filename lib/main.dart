import 'package:flutter/material.dart';
import 'package:flutter_getx_architecture/binding/user_binding.dart';
import 'package:flutter_getx_architecture/view/user_view.dart';
import 'package:get/get.dart';

void main() => runApp(
      GetMaterialApp(
        home: UserView(),
        initialBinding: UserBinding(),
        debugShowCheckedModeBanner: false,
        title: 'Flutter Getx',
      ),
    );
