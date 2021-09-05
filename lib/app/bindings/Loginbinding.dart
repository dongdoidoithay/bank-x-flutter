import 'package:application/app/controllers/login/login_controller.dart';
import 'package:application/share/data/provider/apiClient.dart';
import 'package:application/share/data/repository/index.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class LoginBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => LoginController(
        repository:
            Repository(apiClient: ApiClient(httpClient: http.Client()))));
  }
}
