import 'package:get/get_connect.dart';

class UserProvider extends GetConnect {

  Future<dynamic> get getUserData => get('https://reqres.in/api/users?page=2');
}
