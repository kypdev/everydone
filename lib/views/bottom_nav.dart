import 'package:everydone/views/first_pressure.dart';
import 'package:everydone/views/reccom_page.dart';
import 'package:everydone/views/setting_page.dart';
import 'package:flutter/material.dart';

import 'history_page.dart';

class BottomNav extends StatefulWidget {
  @override
  _BottomNavState createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int _selectedItem = 0;
  final _pageOption = [
    FirstPressure(),
    HistoryPage(),
    ReccomPage(),
    SettingPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: _pageOption[_selectedItem],
      bottomNavigationBar: BottomNavigationBar(
        elevation: 5.0,
        type: BottomNavigationBarType.fixed,
        currentIndex: _selectedItem,
        onTap: (int index) {
          setState(() {
            _selectedItem = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('หน้าหลัก'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.assessment),
            title: Text('ประวัติ'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.assignment),
            title: Text('แนะนำ'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            title: Text('ตั้งค่า'),
          ),
        ],
      ),);
  }
}
