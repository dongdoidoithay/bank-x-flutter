import 'package:application/share/data/models/customer.dart';
import 'package:application/share/data/repository/index.dart';
import 'package:application/share/routers/app_routers.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  final GlobalKey<FormState> loginFormKey = GlobalKey<FormState>();
  late TextEditingController usernameController, passwordController;
  String username = '';
  String password = '';
  @override
  void onInit() {
    super.onInit();
    usernameController = TextEditingController();
    passwordController = TextEditingController();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    usernameController.dispose();
    passwordController.dispose();
  }

  String? validateUsername(String value) {
    //call api neu can
    /*  if (!GetUtils.is(value)) {
      return "Provide valid Email";
    } */
    return null;
  }

  String? validatePassword(String value) {
    if (value.length < 3) {
      return "Password must be of 3 characters";
    }
    return null;
  }

  void checkLogin() {
    print("username:" + username + "|//|password:" + password);
    final isValid = loginFormKey.currentState!.validate();
    if (!isValid) {
      return;
    }
    loginFormKey.currentState!.save();
  }

  final Repository repository;
  LoginController({required this.repository}) : assert(repository != null);

  final _customer = CustomerModel().obs;
  get customer => this._customer.value;
  set customer(value) => this._customer.value = value;

  void callLogin() {
    Get.offAllNamed(Routes.HOME);
    /* repository
        .callLogin(usernameController.text, passwordController.text)
        .then((data) {
      print(data[0].id); 
      // this.customer = data;
    }
    ); */
  }
}
