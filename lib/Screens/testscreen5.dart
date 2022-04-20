import 'package:collegepedia/widgets/college_container.dart';
import 'package:flutter/material.dart';

class TestScreen5 extends StatelessWidget {
  const TestScreen5({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<String> entries = <String>[
      'University of Tokyo',
      'Tokyo Institute of Technology',
      'Kyoto University',
      'Tohoku University',
      'Kyushu University',
      'Osaka University',
      'Waseda University',
      'Nagoya University',
      'Hokkaido University',
      'Hiroshima University',
    ];
    final List<String> colorCodes = <String>[
      'https://www.u-tokyo.ac.jp/en/index.html',
      'https://www.titech.ac.jp/english',
      'https://www.kyoto-u.ac.jp/en',
      'http://www.tohoku.ac.jp/en/',
      'https://www.kyushu-u.ac.jp/en/',
      'https://www.osaka-u.ac.jp/en',
      'https://www.waseda.jp/top/en/',
      'https://en.nagoya-u.ac.jp/',
      'https://www.global.hokudai.ac.jp/',
      'https://www.hiroshima-u.ac.jp/en',
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
