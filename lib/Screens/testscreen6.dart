import 'package:collegepedia/widgets/college_container.dart';
import 'package:flutter/material.dart';

class TestScreen6 extends StatelessWidget {
  const TestScreen6({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<String> entries = <String>[
      'Tsinghua University',
      'Harbin Institute of Technology',
      'Huazhong University of Science and Technology',
      'Shanghai Jiao Tong University',
      'Zhejiang University',
      'Southeast University',
      'Tongji University',
      "Xi'an Jiaotong University",
      'Central South University',
      'Beihang University',
    ];
    final List<String> colorCodes = <String>[
      'https://www.tsinghua.edu.cn/en/',
      'http://en.hit.edu.cn/',
      'http://english.hust.edu.cn/',
      'https://en.sjtu.edu.cn/',
      'https://www.zju.edu.cn/english/',
      'https://seu.edu.bd/',
      'https://en.tongji.edu.cn/',
      'http://en.xjtu.edu.cn/',
      'https://en.csu.edu.cn/',
      'https://ev.buaa.edu.cn/',
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
