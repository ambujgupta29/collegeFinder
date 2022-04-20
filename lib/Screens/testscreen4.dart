import 'package:collegepedia/widgets/college_container.dart';
import 'package:flutter/material.dart';

class TestScreen4 extends StatelessWidget {
  const TestScreen4({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<String> entries = <String>[
      'Hong Kong Polytechnic University',
      'City University Hong Kong',
      'Hong Kong University of Science and Technology',
      'University of Hong Kong',
      'Chinese University Hong Kong',
      'Hong Kong Baptist University',
      'Hong Kong Institute of Education',
      'The Open University of Hong Kong',
    ];
    final List<String> colorCodes = <String>[
      'https://www.polyu.edu.hk/en/',
      'https://www.cityu.edu.hk/',
      'https://hkust.edu.hk/home',
      'https://www.hku.hk/',
      'https://www.cuhk.edu.hk/english/index.html',
      'https://www.hkbu.edu.hk/eng/main/index.jsp',
      'https://www.eduhk.hk/en/',
      'https://www.hkmu.edu.hk/',
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
