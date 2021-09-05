import 'package:flutter/material.dart';

import 'components/body.dart';

class TranferInScreen extends StatefulWidget {
  const TranferInScreen({Key? key}) : super(key: key);

  @override
  _TranferInScreenState createState() => _TranferInScreenState();
}

class _TranferInScreenState extends State<TranferInScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Chuyển tiền trong ngân hàng"),
      ),
      body: Body(),
    );
  }
}
