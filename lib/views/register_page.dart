import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

final kanit = 'Kanit';

class RegisterPage extends StatefulWidget {
  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final _formKey = GlobalKey<FormState>();

  int _gender_value;

  TextEditingController _firstnameCtrl = new TextEditingController();
  TextEditingController _lastnameCtrl = new TextEditingController();
  TextEditingController _usernameCtrl = new TextEditingController();
  TextEditingController _passwordCtrl = new TextEditingController();
  TextEditingController _conpasswordCtrl = new TextEditingController();
  TextEditingController _emailCtrl = new TextEditingController();
  TextEditingController _birthCtrl = new TextEditingController();

  Future _register() {
    print('register');
    if (_formKey.currentState.validate()) {}
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'สมัครสมาชิก',
          style: TextStyle(
            fontFamily: kanit,
          ),
        ),
        backgroundColor: Color(0xff82E0AA),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Column(
            children: <Widget>[
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Card(
                  elevation: 5,
                  child: Column(
                    children: <Widget>[
                      SizedBox(height: 20),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: TextFormField(
                          controller: _firstnameCtrl,
                          validator: (value) {
                            if (value.isEmpty) {
                              return 'ชื่อห้ามว่าง';
                            } else {
                              return null;
                            }
                          },
                          style: TextStyle(
                            fontFamily: kanit,
                          ),
                          decoration: InputDecoration(
                            prefixIcon: Icon(
                              FontAwesomeIcons.userCircle,
                            ),
                            labelText: 'ชื่อ',
                            labelStyle: TextStyle(fontFamily: kanit),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 20),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: TextFormField(
                          controller: _lastnameCtrl,
                          validator: (value) {
                            if (value.isEmpty) {
                              return 'นามสกุลห้ามว่าง';
                            } else {
                              return null;
                            }
                          },
                          style: TextStyle(
                            fontFamily: kanit,
                          ),
                          decoration: InputDecoration(
                            prefixIcon: Icon(
                              FontAwesomeIcons.userCircle,
                            ),
                            labelText: 'นามสกุล',
                            labelStyle: TextStyle(fontFamily: kanit),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 20),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: TextFormField(
                          controller: _usernameCtrl,
                          validator: (value) {
                            if (value.isEmpty) {
                              return 'ชื่อผู้ใช้ห้ามว่าง';
                            } else {
                              return null;
                            }
                          },
                          style: TextStyle(
                            fontFamily: kanit,
                          ),
                          decoration: InputDecoration(
                            prefixIcon: Icon(
                              FontAwesomeIcons.userCircle,
                            ),
                            labelText: 'ชื่อผู้ใช้',
                            labelStyle: TextStyle(fontFamily: kanit),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 20),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: TextFormField(
                          controller: _passwordCtrl,
                          validator: (value) {
                            if (value.isEmpty) {
                              return 'รหัสผ่านห้ามว่าง';
                            } else {
                              return null;
                            }
                          },
                          style: TextStyle(
                            fontFamily: kanit,
                          ),
                          decoration: InputDecoration(
                            prefixIcon: Icon(
                              FontAwesomeIcons.lock,
                            ),
                            labelText: 'รหัสผ่าน',
                            labelStyle: TextStyle(fontFamily: kanit),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 20),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: TextFormField(
                          controller: _conpasswordCtrl,
                          validator: (value) {
                            if (value.isEmpty) {
                              return 'ยืนยันรหัสผ่านห้ามว่าง';
                            } else {
                              return null;
                            }
                          },
                          style: TextStyle(
                            fontFamily: kanit,
                          ),
                          decoration: InputDecoration(
                            prefixIcon: Icon(
                              FontAwesomeIcons.userCircle,
                            ),
                            labelText: 'ยืนยันรหัสผ่าน',
                            labelStyle: TextStyle(fontFamily: kanit),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 20),
                      Column(
                        children: <Widget>[
                          Text('เพศ', style: TextStyle(fontFamily: kanit)),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Radio(
                                onChanged: (value) {
                                  setState(() {
                                    _gender_value = value;
                                  });
                                },
                                value: 1,
                                groupValue: _gender_value,
                              ),
                              Text(
                                'ชาย',
                                style: TextStyle(
                                  fontFamily: kanit,
                                ),
                              ),
                              Radio(
                                onChanged: (value) {
                                  setState(() {
                                    _gender_value = value;
                                  });
                                },
                                value: 2,
                                groupValue: _gender_value,
                              ),
                              Text(
                                'หญิง',
                                style: TextStyle(
                                  fontFamily: kanit,
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                      SizedBox(height: 20),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: TextFormField(
                          controller: _birthCtrl,
                          validator: (value) {
                            if (value.isEmpty) {
                              return 'วันเกิดห้ามว่าง';
                            } else {
                              return null;
                            }
                          },
                          style: TextStyle(
                            fontFamily: kanit,
                          ),
                          decoration: InputDecoration(
                            prefixIcon: Icon(
                              FontAwesomeIcons.userCircle,
                            ),
                            labelText: 'วันกิด',
                            labelStyle: TextStyle(fontFamily: kanit),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 20),
                      Padding(
                        padding: const EdgeInsets.only(left: 20, right: 20),
                        child: RaisedButton(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          color: Colors.greenAccent,
                          onPressed: () {
                            _register();
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Text(
                                'สมัครสมาชิก',
                                textAlign: TextAlign.center,
                                style: TextStyle(color: Colors.white),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
