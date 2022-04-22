import 'package:collegepedia/widgets/college_container.dart';
import 'package:flutter/material.dart';

class Pscreen5 extends StatelessWidget {
  const Pscreen5({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<String> entries = <String>[
      'Indian Institute of Technology (BHU) Varanasi',
    ];
    final List<String> colorCodes = <String>[
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
          itemCount: 1,
          itemBuilder: (BuildContext context, int index) {
            return CollegeContainer(
              name: entries[index],
              url: colorCodes[index],
            );
          }),
    );
  }
}
