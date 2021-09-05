import 'package:application/app/screens/home/components/body.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    void _onItemTapped(int index) {
      setState(() {
        // _selectedIndex = index;
      });
    }

    return Scaffold(
      body: Container(
        decoration: BoxDecoration(color: Color(0xFFE9F0F6)),
        child: Body(),
      ),
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
        currentIndex: 0,
        selectedItemColor: Color(0xFF1141A7),
        onTap: (index) {
          print('index${index}');
        },
      ),
    );
  }
}
