import 'package:flutter/material.dart';

import 'components/body.dart';

class TranferScreen extends StatefulWidget {
  const TranferScreen({Key? key}) : super(key: key);

  @override
  _TranferScreenState createState() => _TranferScreenState();
}

class _TranferScreenState extends State<TranferScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Chuyển tiền"),
      ),
      body: Body(),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Trang chủ',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.transform_outlined),
            label: 'Chuyển tiền',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Cài đặt',
          ),
        ],
        currentIndex: 1,
        selectedItemColor: Color(0xFF1141A7),
        onTap: (index) {
          print('index${index}');
        },
      ),
    );
  }
}
