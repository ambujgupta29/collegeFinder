import 'package:collegepedia/widgets/college_container.dart';
import 'package:flutter/material.dart';

class Pscreen4 extends StatelessWidget {
  const Pscreen4({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<String> entries = <String>[
      'Indian Institute of Technology Hyderabad',
      'Indian Institute of Technology Indore',
      'Indian Institute of Technology (BHU) Varanasi',
    ];
    final List<String> colorCodes = <String>[
      'https://iith.ac.in/',
      'https://www.iiti.ac.in/',
      'https://iitbhu.ac.in/',
    ];
    return Scaffold(
      backgroundColor: Color(0xFF0D1137),
      appBar: AppBar(
        backgroundColor: Color(0xFFE52165),
        title: Text(
          "Prediction",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: ListView.builder(
          itemCount: 3,
          itemBuilder: (BuildContext context, int index) {
            return CollegeContainer(
              name: entries[index],
              url: colorCodes[index],
            );
          }),
    );
  }
}
