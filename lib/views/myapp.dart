import 'package:everydone/views/bottom_nav.dart';
import 'package:everydone/views/first_pressure.dart';
import 'package:everydone/views/register_page.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

final kanit = 'Kanit';

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool visible = false;
  TextEditingController _usernameCtrl = new TextEditingController();

  TextEditingController _passwordCtrl = new TextEditingController();

  final _formKey = GlobalKey<FormState>();

  Future _userSignin() async {
    print('login');
    String _username = _usernameCtrl.text.trim();
    String _password = _passwordCtrl.text;

    Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => BottomNav(),
          ));

    // if (_formKey.currentState.validate()) {
    //   print('username: ' + _username + ' ' + 'password: ' + _password);

    //   Navigator.push(
    //       context,
    //       MaterialPageRoute(
    //         builder: (context) => FirstPressure(),
    //       ));
    // }
  }

  Future _facebookSignin() async {
    print('facebook signin');
  }

  Future _googleSignin() async {
    print('google signin');
  }

  Future _register() async {
    print('register');
    Navigator.push(context, MaterialPageRoute(builder: (context) => RegisterPage(),));
  }

  Future _forgotPassword() async {
    print('forgotpassword');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Stack(
          alignment: Alignment.center,
          children: <Widget>[
            bg(
              h: MediaQuery.of(context).size.height,
              half: MediaQuery.of(context).size.height / 1.8,
            ),
            SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Card(
                      elevation: 5,
                      child: Form(
                        key: _formKey,
                        child: Column(
                          children: <Widget>[
                            SizedBox(
                              height: 20,
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 20),
                              child: TextFormField(
                                validator: (value) {
                                  if (value.isEmpty) {
                                    return 'ชื่อผู้ใช้ห้ามว่าง';
                                  } else if (value.length < 6) {
                                    return 'ชื่อผู้ใช้ห้ามน้อยกว่า 6 ตัวอักษร';
                                  } else {
                                    return null;
                                  }
                                },
                                style: TextStyle(
                                  fontFamily: kanit,
                                ),
                                controller: _usernameCtrl,
                                decoration: InputDecoration(
                                  prefixIcon: Icon(Icons.person),
                                  labelText: 'ชื่อผู้ใช้',
                                  labelStyle: TextStyle(
                                    fontFamily: kanit,
                                  ),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 20),
                              child: TextFormField(
                                validator: (value) {
                                  if (value.isEmpty) {
                                    return 'รหัสผ่านห้ามว่าง';
                                  } else if (value.length < 8) {
                                    return 'รหัสผ่านห้ามน้อยกว่า 8 ตัวอักษร';
                                  } else {
                                    return null;
                                  }
                                },
                                obscureText: true,
                                style: TextStyle(
                                  fontFamily: kanit,
                                ),
                                controller: _passwordCtrl,
                                decoration: InputDecoration(
                                  prefixIcon: Icon(Icons.lock),
                                  labelText: 'รหัสผ่าน',
                                  labelStyle: TextStyle(
                                    fontFamily: kanit,
                                  ),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 20),
                              child: Container(
                                
                                width: double.infinity,
                                child: MaterialButton(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(30),
                                  ),
                                  child: Text(
                                    'login',
                                    style: TextStyle(
                                      color: Colors.white,
                                    ),
                                  ),
                                  onPressed: () {
                                    print('login');
                                    // if (_formKey.currentState.validate()) {}
                                    _userSignin();
                                  },
                                ),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(30),
                                    gradient: LinearGradient(colors: [
                                      Color.fromRGBO(0, 255, 0, 20),
                                      Color.fromRGBO(220, 200, 0, 10)
                                    ])),
                              ),
                            ),
                            SizedBox(height: 8),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 25),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  GestureDetector(
                                    onTap: () {
                                      _register();
                                    },
                                    child: Text(
                                      'สมัครสมาชิก',
                                      style: TextStyle(fontFamily: kanit),
                                    ),
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      _forgotPassword();
                                    },
                                    child: Text(
                                      'ลืมรหัสผ่าน?',
                                      style: TextStyle(fontFamily: kanit),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Row(
                              children: <Widget>[
                                SizedBox(width: 20),
                                Expanded(
                                  child: Divider(
                                    color: Colors.black54,
                                    thickness: 1,
                                  ),
                                ),
                                SizedBox(width: 20),
                                Text(
                                  'หรือเข้าสู่ระบบด้วย',
                                  style: TextStyle(
                                    fontFamily: kanit,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(width: 20),
                                Expanded(
                                  child: Divider(
                                    color: Colors.black54,
                                    thickness: 1,
                                  ),
                                ),
                                SizedBox(width: 20),
                              ],
                            ),
                            SizedBox(height: 20),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 20),
                              child: RaisedButton(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                onPressed: () {
                                  _facebookSignin();
                                },
                                color: Color(0xff3b5998),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Icon(
                                      FontAwesomeIcons.facebook,
                                      color: Colors.white,
                                    ),
                                    SizedBox(width: 20),
                                    Text(
                                      'เข้าสู่ระบบด้วย Facebook',
                                      style: TextStyle(
                                          fontFamily: kanit,
                                          color: Colors.white),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(height: 5),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 20),
                              child: RaisedButton(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                onPressed: () {
                                  _googleSignin();
                                },
                                color: Color(0xffDB4437),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Icon(
                                      FontAwesomeIcons.google,
                                      color: Colors.white,
                                    ),
                                    SizedBox(width: 20),
                                    Text(
                                      'เข้าสู่ระบบด้วย Google',
                                      style: TextStyle(
                                          fontFamily: kanit,
                                          color: Colors.white),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(height: 20),
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Center(
            child: Visibility(
                visible: visible,
                child: Container(
                    margin: EdgeInsets.only(bottom: 30),
                    child: CircularProgressIndicator())),
          ),
          ],
        ),
      ),
    );
  }
}

Widget bg({h, half}) {
  return Stack(
    children: <Widget>[
      Container(
        height: h,
        color: Color(0xff82E0AA),
      ),
    ],
  );
}
