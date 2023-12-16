import 'package:get/get.dart';
import 'package:my_app/environment/environment.dart';
import 'package:my_app/models/user.dart';

class UsersPorvider extends GetConnect {
  String url = Environment.API_URL + 'api/users/';

  Future<Response> create(User user) async {
    Response response = await post('$url./create', user.toJson(),
        headers: {'Content-Type': 'applicaction/json'});
    return response;
  }
}
