import 'package:flutter/material.dart';

class FirstPressure extends StatefulWidget {
  @override
  _FirstPressureState createState() => _FirstPressureState();
}

class _FirstPressureState extends State<FirstPressure> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('บันทึกความดันโลหิตของตนเอง'),
        centerTitle: true,
      ),
    );
  }
}