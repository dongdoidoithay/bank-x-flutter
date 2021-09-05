import 'dart:async';

import 'package:application/share/routers/app_routers.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FlashScreen extends StatefulWidget {
  const FlashScreen({Key? key}) : super(key: key);

  @override
  _FlashSceenState createState() => _FlashSceenState();
}

class _FlashSceenState extends State<FlashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    startTime();
  }

  startTime() async {
    var duration = new Duration(seconds: 6);
    return new Timer(duration, route);
  }

  route() {
    print("call rounter LOGIN");
    Get.toNamed(Routes.LOGIN);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: Text('H_p_Flash'.tr),
        ),
      ),
    );
  }
}
