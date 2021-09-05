import 'package:application/app/controllers/login/login_controller.dart';
import 'package:application/share/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'background.dart';

class Body extends GetView<LoginController> {
  @override
  Widget build(BuildContext context) {
    return Background(
      child: Form(
        key: controller.loginFormKey,
        autovalidateMode: AutovalidateMode.onUserInteraction,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              //height: 45,
              margin: EdgeInsets.only(left: 20, right: 20),
              child: TextFormField(
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                  fontSize: 18,
                  fontFamily: "Roboto",
                ),
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  floatingLabelBehavior: FloatingLabelBehavior.never,
                  labelText: 'input_lab_user'.tr,
                  labelStyle: TextStyle(color: Colors.white),
                  //icon
                  prefixIcon: Icon(
                    Icons.account_circle_outlined,
                    color: Colors.white,
                    size: 30,
                  ),
                  filled: true,
                  fillColor: Colors.white24,
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(6.0)),
                    borderSide: BorderSide(color: Colors.white24, width: 1),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(6.0)),
                    borderSide: BorderSide(color: Colors.white, width: 1),
                  ),
                  contentPadding: const EdgeInsets.only(
                    top: 1.0,
                    bottom: 1.0,
                  ),
                ),
                controller: controller.usernameController,
                onSaved: (value) {
                  print("user" + value!);
                  controller.username = value;
                },
                validator: (value) {
                  return controller.validateUsername(value!);
                },
              ),
            ),
            Stack(
              alignment: AlignmentDirectional.topStart,
              children: [
                Positioned(
                  right: 35,
                  bottom: 15,
                  child: InkWell(
                    onTap: () {
                      print("Ẩn /Hiển");
                    },
                    child: Text(
                      'input_lab_show'.tr,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ),
                ),
                Container(
                  //height: 45,
                  margin: EdgeInsets.only(left: 20, right: 20, top: 20),
                  child: TextFormField(
                    autocorrect: true,
                    obscureText: true,
                    obscuringCharacter: "*",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                      fontSize: 18,
                      fontFamily: "Roboto",
                    ),
                    keyboardType: TextInputType.visiblePassword,
                    decoration: InputDecoration(
                      floatingLabelBehavior: FloatingLabelBehavior.never,
                      labelText: 'input_lab_pass'.tr,
                      labelStyle: TextStyle(color: Colors.white),
                      //icon
                      prefixIcon: Icon(
                        Icons.lock_outline,
                        color: Colors.white,
                        size: 30,
                      ),
                      filled: true,
                      fillColor: Colors.white24,
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(6.0)),
                        borderSide: BorderSide(color: Colors.white24, width: 1),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(6.0)),
                        borderSide: BorderSide(color: Colors.white, width: 1),
                      ),
                      contentPadding: const EdgeInsets.only(
                        top: 1.0,
                        bottom: 1.0,
                      ),
                    ),
                    controller: controller.passwordController,
                    onSaved: (value) {
                      controller.password = value!;
                    },
                    validator: (value) {
                      return controller.validatePassword(value!);
                    },
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  margin: EdgeInsets.symmetric(vertical: 20, horizontal: 12),
                  width: Constants.getSize(context).width * 0.65,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(5),
                    child: RaisedButton(
                      padding:
                          EdgeInsets.symmetric(vertical: 15, horizontal: 40),
                      color: Color(0xFFEF6C00),
                      onPressed: () {
                        controller.callLogin();
                      },
                      child: Text(
                        'input_lab_bt_login'.tr,
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                            fontSize: 18),
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 12),
                  width: Constants.getSize(context).width * 0.18,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(5),
                    child: RaisedButton(
                      color: Color(0xFFEF6C00),
                      onPressed: () {
                        //print("click");
                        //controller.checkLogin();
                      },
                      child: Image(
                        height: Constants.getSize(context).height * 0.07,
                        image:
                            new AssetImage('assets/images/login/face_id.png'),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Container(
              padding: EdgeInsets.only(top: 12),
              child: Text(
                'input_lab_bt_fw'.tr,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 12),
              child: Text(
                'input_lab_bt_ekyc'.tr,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
