import 'package:collegepedia/widgets/college_container.dart';
import 'package:flutter/material.dart';

class TestScreen13 extends StatelessWidget {
  const TestScreen13({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<String> entries = <String>[
      'University of Malaya',
      'Universiti Teknologi Malaysia',
      'Universiti Kebangsaan Malaysia (UKM)',
      'Universiti Sains Malaysia',
      'University of Tenaga Nasional',
      'Universiti Putra Malaysia',
      'Universiti Teknologi Petronas',
      'Universiti Malaysia Pahang',
      'Universiti Teknologi MARA',
      'University of Tun Hussein Onn Malaysia',
    ];
    final List<String> colorCodes = <String>[
      'https://www.um.edu.my/',
      'https://www.utm.my/',
      'https://www.ukm.my/portalukm/',
      'http://www.usm.my/',
      'https://www.uniten.edu.my/',
      'https://upm.edu.my/',
      'https://www.utp.edu.my/Pages/Home.aspx',
      'https://www.ump.edu.my/en',
      'https://www.uitm.edu.my/index.php/en/',
      'https://www.uthm.edu.my/en/',
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
