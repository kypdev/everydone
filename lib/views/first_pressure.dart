import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

final _kanit = 'Kanit';

class FirstPressure extends StatefulWidget {
  @override
  _FirstPressureState createState() => _FirstPressureState();
}

class _FirstPressureState extends State<FirstPressure> {
  String _deviceName = 'yuwell YE670A';

  Future _selectPressureDevice() {
    print('selectDevice');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text('บันทึกความดันโลหิตของตนเอง'),
      //   centerTitle: true,
      //   backgroundColor: Colors.greenAccent,
      //   leading: Container(),
      // ),
      body: SingleChildScrollView(
        child: Container(
          color: Colors.black12,
          child: Padding(
            padding: const EdgeInsets.only(left: 15, right: 15, top: 40, bottom: 20),
            child: Card(
              elevation: 5,
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 50),
                      child: RaisedButton(
                          color: Colors.greenAccent,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Icon(
                                Icons.show_chart,
                                color: Colors.white,
                              ),
                              SizedBox(width: 8),
                              Text(
                                'เลือกเครื่องวัดความดัน',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontFamily: _kanit, color: Colors.white),
                              ),
                            ],
                          ),
                          onPressed: () {
                            _selectPressureDevice();
                          }),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20, right: 20, top: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          'ชื่อเครื่อง : ',
                          style: TextStyle(fontFamily: _kanit),
                        ),
                        Text(
                          _deviceName,
                          style: TextStyle(fontFamily: _kanit),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Image.asset(
                    'assets/images/pressure.png',
                    height: 200,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 50),
                    child: RaisedButton(
                        color: Colors.greenAccent,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              'บันทึก',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontFamily: _kanit, color: Colors.white),
                            ),
                          ],
                        ),
                        onPressed: () {
                          _selectPressureDevice();
                        }),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Divider(
                      color: Colors.black54,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: <Widget>[
                      SizedBox(
                        width: 100,
                      ),
                      Text(
                        'ความเสี่ยง',
                        style:
                            TextStyle(color: Colors.black54, fontFamily: _kanit),
                      ),
                      SizedBox(
                        width: 50,
                      ),
                      Text(
                        'ค่าสูง',
                        style:
                            TextStyle(color: Colors.black54, fontFamily: _kanit),
                      ),
                      SizedBox(
                        width: 50,
                      ),
                      Text(
                        'ค่าต่ำ',
                        style:
                            TextStyle(color: Colors.black54, fontFamily: _kanit),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Divider(
                      color: Colors.black54,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 10, right: 10),
                    child: Row(
                      children: <Widget>[
                        SizedBox(width: 10,),
                        Container(
                          height: 20,
                          width: 40,
                          decoration: BoxDecoration(
                            color: Colors.redAccent,
                            borderRadius: new BorderRadius.only(
                              topLeft: const Radius.circular(5),
                              topRight: const Radius.circular(5),
                              bottomLeft: const Radius.circular(5),
                              bottomRight: const Radius.circular(5),
                            ),
                          ),
                        ),
                        SizedBox(width: 40,),

                        Text('สูงระดับ 2', style: TextStyle(fontFamily: _kanit, color: Colors.black54,),),
                        SizedBox(width: 50,),
                        Text('> 160', style: TextStyle(fontFamily: _kanit, color: Colors.black54,),),
                        SizedBox(width: 40,),
                        Text('100 - 109', style: TextStyle(fontFamily: _kanit, color: Colors.black54,),)
                      ],
                    ),
                  ),

                  SizedBox(height: 10,),

                  Padding(
                    padding: EdgeInsets.only(left: 10, right: 10),
                    child: Row(
                      children: <Widget>[
                        SizedBox(width: 10,),
                        Container(
                          height: 20,
                          width: 40,
                          decoration: BoxDecoration(
                            color: Colors.orangeAccent,
                            borderRadius: new BorderRadius.only(
                              topLeft: const Radius.circular(5),
                              topRight: const Radius.circular(5),
                              bottomLeft: const Radius.circular(5),
                              bottomRight: const Radius.circular(5),
                            ),
                          ),
                        ),
                        SizedBox(width: 40,),

                        Text('สูงระดับ 1', style: TextStyle(fontFamily: _kanit, color: Colors.black54,),),
                        SizedBox(width: 43,),
                        Text('140 - 159', style: TextStyle(fontFamily: _kanit, color: Colors.black54,),),
                        SizedBox(width: 30,),
                        Text('90 - 99', style: TextStyle(fontFamily: _kanit, color: Colors.black54,),)
                      ],
                    ),
                  ),

                  SizedBox(height: 10,),

                  Padding(
                    padding: EdgeInsets.only(left: 10, right: 10),
                    child: Row(
                      children: <Widget>[
                        SizedBox(width: 10,),
                        Container(
                          height: 20,
                          width: 40,
                          decoration: BoxDecoration(
                            color: Colors.yellow,
                            borderRadius: new BorderRadius.only(
                              topLeft: const Radius.circular(5),
                              topRight: const Radius.circular(5),
                              bottomLeft: const Radius.circular(5),
                              bottomRight: const Radius.circular(5),
                            ),
                          ),
                        ),
                        SizedBox(width: 40,),

                        Text('สูงกว่าปกติ', style: TextStyle(fontFamily: _kanit, color: Colors.black54,),),
                        SizedBox(width: 40,),
                        Text('121 - 140', style: TextStyle(fontFamily: _kanit, color: Colors.black54,),),
                        SizedBox(width: 30,),
                        Text('81 - 90', style: TextStyle(fontFamily: _kanit, color: Colors.black54,),)
                      ],
                    ),
                  ),

                  SizedBox(height: 10,),

                  Padding(
                    padding: EdgeInsets.only(left: 10, right: 10),
                    child: Row(
                      children: <Widget>[
                        SizedBox(width: 10,),
                        Container(
                          height: 20,
                          width: 40,
                          decoration: BoxDecoration(
                            color: Colors.greenAccent,
                            borderRadius: new BorderRadius.only(
                              topLeft: const Radius.circular(5),
                              topRight: const Radius.circular(5),
                              bottomLeft: const Radius.circular(5),
                              bottomRight: const Radius.circular(5),
                            ),
                          ),
                        ),
                        SizedBox(width: 55,),

                        Text('ปกติ', style: TextStyle(fontFamily: _kanit, color: Colors.black54,),),
                        SizedBox(width: 65,),
                        Text('91 - 120', style: TextStyle(fontFamily: _kanit, color: Colors.black54,),),
                        SizedBox(width: 35,),
                        Text('61 - 80', style: TextStyle(fontFamily: _kanit, color: Colors.black54,),)
                      ],
                    ),
                  ),

                  SizedBox(height: 10,),

                  Padding(
                    padding: EdgeInsets.only(left: 10, right: 10),
                    child: Row(
                      children: <Widget>[
                        SizedBox(width: 10,),
                        Container(
                          height: 20,
                          width: 40,
                          decoration: BoxDecoration(
                            color: Colors.purple,
                            borderRadius: new BorderRadius.only(
                              topLeft: const Radius.circular(5),
                              topRight: const Radius.circular(5),
                              bottomLeft: const Radius.circular(5),
                              bottomRight: const Radius.circular(5),
                            ),
                          ),
                        ),
                        SizedBox(width: 60,),

                        Text('ต่ำ', style: TextStyle(fontFamily: _kanit, color: Colors.black54,),),
                        SizedBox(width: 80,),
                        Text('< 90', style: TextStyle(fontFamily: _kanit, color: Colors.black54,),),
                        SizedBox(width: 50,),
                        Text('< 60', style: TextStyle(fontFamily: _kanit, color: Colors.black54,),)
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
