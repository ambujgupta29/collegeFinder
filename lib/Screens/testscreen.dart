import 'package:collegepedia/Screens/jeescreen.dart';
import 'package:collegepedia/widgets/college_container.dart';
import 'package:flutter/material.dart';

class TestScreen extends StatelessWidget {
  const TestScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<String> entries = <String>[
      'Indian Institute of Technology Delhi',
      'Indian Institute of Technology Bombay',
      'Indian Institute of Technology Kanpur',
      'Indian Institute of Technology Kharagpur',
      'Indian Institute of Technology Roorkee',
      'Indian Institute of Technology Guwahati',
      'Indian Institute of Technology Hyderabad',
      'National Institute of Technology Tiruchirappalli',
      'Indian Institute of Technology Indore',
      'Indian Institute of Technology (BHU) Varanasi',
    ];
    final List<String> colorCodes = <String>[
      'https://home.iitd.ac.in/',
      'https://www.iitb.ac.in/',
      'https://www.iitk.ac.in/',
      'http://www.iitkgp.ac.in/',
      'https://iitr.ac.in/',
      'https://www.iitg.ac.in/',
      'https://iith.ac.in/',
      'https://www.nitt.edu/',
      'https://www.iiti.ac.in/',
      'https://iitbhu.ac.in/',
    ];
    return Scaffold(
      backgroundColor: Color(0xFF0D1137),
      appBar: AppBar(
        backgroundColor: Color(0xFFE52165),
        title: Text(
          "Top 10 Colleges",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18.0),
            child: IconButton(
              iconSize: 35,
              icon: Icon(Icons.online_prediction),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Jeescreen()),
                );
              },
            ),
          ),
        ],
      ),
      body: ListView.builder(
          itemCount: 10,
          itemBuilder: (BuildContext context, int index) {
            return CollegeContainer(
              name: entries[index],
              url: colorCodes[index],
            );
          }),
    );
  }
}
