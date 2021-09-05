import 'package:application/share/data/repository/index.dart';
import 'package:get/get.dart';

import '../base_Controller.dart';

class TranferInController extends GetxController with BaseController {
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}

  @override
  callSearch() {
    print("search home");
  }

  final Repository repository;
  TranferInController({required this.repository}) : assert(repository != null);
}
