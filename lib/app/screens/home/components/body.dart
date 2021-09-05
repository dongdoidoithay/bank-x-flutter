import 'package:application/app/controllers/home/home_controller.dart';
import 'package:application/app/screens/home/components/boadservice.dart';
import 'package:application/app/screens/home/components/header.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Body extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        HomeHeader(),
        BoadService(),
      ],
    );
  }
}
