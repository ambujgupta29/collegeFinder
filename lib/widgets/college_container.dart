import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class CollegeContainer extends StatefulWidget {
  @override
  _CollegeContainerState createState() => _CollegeContainerState();
  String name;
  String url;
// String content;
  CollegeContainer({this.name, this.url});
}

class _CollegeContainerState extends State<CollegeContainer> {
  Future<void> openurl(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw "could not open";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: ClipRRect(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(32),
          bottomLeft: Radius.circular(32),
          topRight: Radius.circular(32),
          bottomRight: Radius.circular(32),
        ),
        child: Card(
          child: ListTile(
            tileColor: Colors.red,
            title: Text(widget.name),
            onTap: () {
              openurl(widget.url);
            },
          ),
        ),
      ),
    );
  }
}
