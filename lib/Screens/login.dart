import 'package:collegepedia/Screens/dropdownScreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool obscureText = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0XFFF9F9FA),
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
            color: Color(0xFFE52165),
          ),
          child: Column(
            children: [
              SizedBox(
                height: 90.0,
              ),
              Container(
                padding: EdgeInsets.all(45.0),
                child: Column(
                  children: [
                    Text(
                      "Collegepedia",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w900,
                          fontSize: 47),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      '" Where The World Is At Your Feet "',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w900,
                          fontSize: 12),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 70.0,
              ),
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    color: Color(0xFF0D1137),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(45.0),
                      topRight: Radius.circular(45.0),
                    ),
                    // borderRadius: BorderRadius.only(topLeft: ),
                  ),
                  child: Container(
                    margin: EdgeInsets.only(top: 100.0),
                    child: Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 15.0),
                          child: Material(
                            elevation: 4,
                            shadowColor: Color(0xB9000000),
                            borderRadius:
                                BorderRadius.all(Radius.circular(100.0)),
                            child: TextField(
                              decoration: InputDecoration(
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(color: Colors.grey),
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(100.0),
                                    ),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Theme.of(context).primaryColor),
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(100.0),
                                    ),
                                  ),
                                  contentPadding: EdgeInsets.symmetric(
                                    vertical: 15.0,
                                  ),
                                  fillColor: Colors.white,
                                  filled: true,
                                  hintText: 'Email',
                                  hintStyle: TextStyle(
                                    fontFamily: 'Montserrat',
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.w400,
                                    color: Color(0xFF8A8A8A),
                                  ),
                                  prefixIcon: Padding(
                                    padding: const EdgeInsets.all(11.0),
                                    child: Icon(
                                      Icons.email,
                                      color: Color(0xFFE52165),
                                      size: 25.0,
                                    ),
                                  )),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 40.0,
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 15.0),
                          child: Material(
                            elevation: 4,
                            shadowColor: Color(0xB9000000),
                            borderRadius:
                                BorderRadius.all(Radius.circular(100.0)),
                            child: TextField(
                              obscureText: obscureText,
                              decoration: InputDecoration(
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.grey),
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(100.0),
                                  ),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Theme.of(context).primaryColor),
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(100.0),
                                  ),
                                ),
                                contentPadding: EdgeInsets.symmetric(
                                  vertical: 15.0,
                                ),
                                fillColor: Colors.white,
                                filled: true,
                                hintText: 'Password',
                                hintStyle: TextStyle(
                                  fontFamily: 'Montserrat',
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xFF8A8A8A),
                                ),
                                prefixIcon: Padding(
                                  padding: const EdgeInsets.all(11.0),
                                  child: Icon(
                                    FontAwesomeIcons.lock,
                                    color: Color(0xFFE52165),
                                    size: 25.0,
                                  ),
                                ),
                                suffixIcon: GestureDetector(
                                  onTap: () {
                                    setState(() => obscureText = !obscureText);
                                  },
                                  child: Padding(
                                    padding: const EdgeInsets.all(11.0),
                                    child: Icon(
                                      obscureText
                                          ? FontAwesomeIcons.eyeSlash
                                          : FontAwesomeIcons.eye,
                                      size: 20.0,
                                      color: Color(0xFF6B6A6A),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: 25.0, vertical: 10.0),
                          width: double.infinity,
                          child: Text(
                            'Forgot password?',
                            textAlign: TextAlign.right,
                            style: TextStyle(
                              color: Color(0xFF6B6A6A),
                              fontFamily: 'Montserrat',
                              fontSize: 15.0,
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 75.0,
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => DropdownScreen()),
                            );
                          },
                          child: Container(
                            width: 160.0,
                            height: 48.0,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                                color: Color(0xFFE52165),
                                borderRadius: BorderRadius.circular(100.0),
                                boxShadow: [
                                  BoxShadow(
                                    offset: Offset(0, 2),
                                    color: Color(0xB9000000),
                                    blurRadius: 4,
                                  )
                                ]),
                            child: Text(
                              'Register',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Ubuntu',
                                fontSize: 24.0,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
