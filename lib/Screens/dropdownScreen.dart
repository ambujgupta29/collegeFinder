import 'package:collegepedia/Screens/collegescreen.dart';
import 'package:collegepedia/Screens/testscreen.dart';
import 'package:collegepedia/widgets/college_container.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class DropdownScreen extends StatefulWidget {
  const DropdownScreen({Key key}) : super(key: key);

  @override
  _DropdownScreenState createState() => _DropdownScreenState();
}

class _DropdownScreenState extends State<DropdownScreen> {
  String valueChoose;
  List listitems = [
    "India",
    "United States",
    "United Kingdom",
    "Norway",
    "Germany",
    "France",
    "Australia",
    "Singapore",
    "Malaysia",
    "Canada",
    "Japan",
    "China",
    "New Zealand",
    "HongKong",
    "Indonesia",
  ];
  void Switchfunction() {
    switch (valueChoose) {
      case 'India':
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => CollegeScreen(
              apipath: 'India',
            ),
          ),
        );
        break;
      case 'Norway':
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => CollegeScreen(
              apipath: 'Norway',
            ),
          ),
        );
        break;
      case 'Malaysia':
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => CollegeScreen(
              apipath: 'Malaysia',
            ),
          ),
        );
        break;
      case 'New Zealand':
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => CollegeScreen(
              apipath: 'New+Zealand',
            ),
          ),
        );
        break;
      case 'Australia':
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => CollegeScreen(
              apipath: 'Australia',
            ),
          ),
        );
        break;
      case 'Japan':
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => CollegeScreen(
              apipath: 'Japan',
            ),
          ),
        );
        break;
      case 'France':
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => CollegeScreen(
              apipath: 'France',
            ),
          ),
        );
        break;
      case 'HongKong':
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => CollegeScreen(
              apipath: 'Hong+Kong',
            ),
          ),
        );
        break;
      case 'Indonesia':
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => CollegeScreen(
              apipath: 'Indonesia',
            ),
          ),
        );
        break;
      case 'China':
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => CollegeScreen(
              apipath: 'China',
            ),
          ),
        );
        break;
      case 'United States':
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => CollegeScreen(
              apipath: 'United+States',
            ),
          ),
        );
        break;
      case 'United Kingdom':
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => CollegeScreen(
              apipath: 'United+Kingdom',
            ),
          ),
        );
        break;
      case 'Singapore':
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => CollegeScreen(
              apipath: 'Singapore',
            ),
          ),
        );
        break;
      case 'Germany':
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => CollegeScreen(
              apipath: 'Germany',
            ),
          ),
        );
        break;
      case 'Canada':
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => CollegeScreen(
              apipath: 'Canada',
            ),
          ),
        );
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF0D1137),
      appBar: AppBar(
        backgroundColor: Color(0xFFE52165),
        title: Text(
          'COLLEGEPEDIA',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                padding: const EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 70.0),
                child: Text(
                  '"Find The College Of Your Dreams"',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w900,
                      fontSize: 53),
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 15.0),
                decoration: BoxDecoration(
                    border: Border.all(
                      color: Color(0xFFE52165),
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(15.0))),
                child: DropdownButton(
                  hint: Text('Select Country'),
                  isExpanded: true,
                  underline: SizedBox(),
                  dropdownColor: Color(0xFFE52165),
                  icon: Icon(
                    Icons.arrow_drop_down_outlined,
                    size: 36.0,
                    color: Color(0xFFE52165),
                  ),
                  value: valueChoose,
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.w600),
                  elevation: 3,
                  onChanged: (newvalue) {
                    setState(() {
                      valueChoose = newvalue;
                    });
                  },
                  items: listitems.map((valueitem) {
                    return DropdownMenuItem(
                      child: Text(valueitem),
                      value: valueitem,
                      // onTap: () {
                      //   //print(paths[valueitem]);
                      //   // Navigator.push(
                      //   //   context,
                      //   //   MaterialPageRoute(
                      //   //     builder: (context) => CollegeScreen(
                      //   //       apipath: paths[valueitem],
                      //   //     ),
                      //   //   ),
                      //   // );
                      //   Navigator.push(
                      //     context,
                      //     MaterialPageRoute(
                      //       builder: (context) => TestScreen(),
                      //     ),
                      //   );
                      // },
                    );
                  }).toList(),
                ),
              ),
              SizedBox(
                height: 60.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: GestureDetector(
                      onTap: Switchfunction,
                      child: Container(
                        width: 100.0,
                        height: 40.0,
                        decoration: BoxDecoration(
                            color: Color(0xFFE52165),
                            borderRadius:
                                BorderRadius.all(Radius.circular(15.0))),
                        child: Center(
                            child: Text(
                          "NEXT",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        )),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: GestureDetector(
                      onTap: () {
                        launch("tel://+918431885991");
                      },
                      child: Container(
                        width: 190.0,
                        height: 40.0,
                        decoration: BoxDecoration(
                            color: Color(0xFFE52165),
                            borderRadius:
                                BorderRadius.all(Radius.circular(15.0))),
                        child: Center(
                            child: Text(
                          "Speak to our Counsellor ☏",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        )),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
