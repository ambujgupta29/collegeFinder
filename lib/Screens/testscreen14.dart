import 'package:collegepedia/widgets/college_container.dart';
import 'package:flutter/material.dart';

class TestScreen14 extends StatelessWidget {
  const TestScreen14({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<String> entries = <String>[
      'Norwegian University of Science and Technology',
      'The Arctic University of Norway',
      'University of Stavanger',
      'The Western Norway University of Applied Sciences',
      'Oslo Metropolitan University',
      'University of South-Eastern Norway',
      'University of Adger',
      'University of Oslo',
    ];
    final List<String> colorCodes = <String>[
      'https://www.ntnu.edu/',
      'https://en.uit.no/startsida',
      'https://www.noroff.no/om/studiesteder/stavanger?gclid=EAIaIQobChMIqN3Gxtui9wIVpJhmAh3wbwJSEAAYASAAEgLUifD_BwE',
      'https://www.hvl.no/en/',
      'https://www.oslomet.no/en',
      'https://www.usn.no/english/',
      'https://www.uia.no/en',
      'https://www.uio.no/english/',
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
      ),
      body: ListView.builder(
          itemCount: 8,
          itemBuilder: (BuildContext context, int index) {
            return CollegeContainer(
              name: entries[index],
              url: colorCodes[index],
            );
          }),
    );
  }
}
