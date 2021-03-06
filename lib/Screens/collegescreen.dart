import 'dart:convert';

import 'package:collegepedia/Screens/testscreen.dart';
import 'package:collegepedia/Screens/testscreen1.dart';
import 'package:collegepedia/Screens/testscreen10.dart';
import 'package:collegepedia/Screens/testscreen11.dart';
import 'package:collegepedia/Screens/testscreen12.dart';
import 'package:collegepedia/Screens/testscreen13.dart';
import 'package:collegepedia/Screens/testscreen14.dart';
import 'package:collegepedia/Screens/testscreen2.dart';
import 'package:collegepedia/Screens/testscreen3.dart';
import 'package:collegepedia/Screens/testscreen4.dart';
import 'package:collegepedia/Screens/testscreen5.dart';
import 'package:collegepedia/Screens/testscreen6.dart';
import 'package:collegepedia/Screens/testscreen7.dart';
import 'package:collegepedia/Screens/testscreen8.dart';
import 'package:collegepedia/Screens/testscreen9.dart';
import 'package:collegepedia/model/college_model.dart';
import 'package:collegepedia/widgets/college_container.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class CollegeScreen extends StatefulWidget {
  String apipath;
  CollegeScreen({this.apipath});

  @override
  _CollegeScreenState createState() => _CollegeScreenState(apipath);
}

class _CollegeScreenState extends State<CollegeScreen> {
  String apipath;
  _CollegeScreenState(this.apipath);

  String newurl() {
    print(apipath);
    return 'http://universities.hipolabs.com/search?country=$apipath';
  }

  List<CollegeModel> newsm = List<CollegeModel>();

  Future<List<CollegeModel>> getdata() async {
    final response = await http.get(newurl());
    var newsl = List<CollegeModel>();
    if (response.statusCode == 200) {
      var news = json.decode(response.body);
      for (var newone in news) {
        newsl.add(CollegeModel.fromJson(newone));
      }
    }
    return newsl;
  }

  @override
  void initState() {
    getdata().then((value) {
      setState(() {
        newsm.addAll(value);
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFE52165),
        title: Text(
          "College",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 2.0),
            child: IconButton(
              icon: Icon(Icons.search),
              onPressed: () {
                showSearch(context: context, delegate: DataSearch(abc: newsm));
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: IconButton(
              iconSize: 28,
              icon: Icon(Icons.military_tech),
              onPressed: () {
                if (apipath == 'India') {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => TestScreen()),
                  );
                }
                if (apipath == 'Australia') {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => TestScreen1()),
                  );
                }
                if (apipath == 'Norway') {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => TestScreen14()),
                  );
                }
                if (apipath == 'Malaysia') {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => TestScreen13()),
                  );
                }
                if (apipath == 'New+Zealand') {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => TestScreen10()),
                  );
                }
                if (apipath == 'Japan') {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => TestScreen5()),
                  );
                }
                if (apipath == 'France') {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => TestScreen3()),
                  );
                }
                if (apipath == 'Hong+Kong') {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => TestScreen4()),
                  );
                }
                if (apipath == 'Indonesia') {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => TestScreen7()),
                  );
                }
                if (apipath == 'China') {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => TestScreen6()),
                  );
                }
                if (apipath == 'United+States') {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => TestScreen8()),
                  );
                }
                if (apipath == 'United+Kingdom') {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => TestScreen9()),
                  );
                }
                if (apipath == 'Singapore') {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => TestScreen11()),
                  );
                }
                if (apipath == 'Germany') {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => TestScreen2()),
                  );
                }
                if (apipath == 'Canada') {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => TestScreen12()),
                  );
                }
              },
            ),
          ),
        ],
      ),
      backgroundColor: Color(0xFF0D1137),
      body: ListView.builder(
          itemCount: newsm.length,
          itemBuilder: (BuildContext context, int index) {
            return CollegeContainer(
              name: newsm[index].collegename,
              url: newsm[index].url,
            );
          }),
    );
  }
}

class DataSearch extends SearchDelegate<CollegeModel> {
  @override
  ThemeData appBarTheme(BuildContext context) {
    return Theme.of(context).copyWith(
      primaryColor: Color(0xFFE52165),
      textTheme: TextTheme(
        title: TextStyle(
          color: Colors.white,
          fontSize: 18,
        ),
      ),
      inputDecorationTheme: InputDecorationTheme(
        hintStyle:
            Theme.of(context).textTheme.title.copyWith(color: Colors.white),
      ),
    );
  }

  List ab;
  DataSearch({List abc}) {
    ab = abc;
  }
  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
        icon: Icon(Icons.clear),
        onPressed: () {
          query = '';
        },
      ),
    ];
    throw UnimplementedError();
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
      icon: AnimatedIcon(
        icon: AnimatedIcons.menu_arrow,
        progress: transitionAnimation,
      ),
      onPressed: () {
        close(context, null);
      },
    );
    throw UnimplementedError();
  }

  @override
  Widget buildResults(BuildContext context) {
    // TODO: implement buildResults
    throw UnimplementedError();
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    final suggestionlist = query.isEmpty
        ? ab
        : ab
            .where((p) =>
                p.collegename.toUpperCase().startsWith(query.toUpperCase()))
            .toList();

    return Scaffold(
      backgroundColor: Color(0xFF0D1137),
      body: ListView.builder(
        itemBuilder: (context, index) => CollegeContainer(
          name: suggestionlist[index].collegename,
          url: suggestionlist[index].url,
        ),
        itemCount: suggestionlist.length,
      ),
    );
    throw UnimplementedError();
  }
}
