import 'package:collegepedia/Screens/collegescreen.dart';
import 'package:collegepedia/widgets/college_container.dart';
import 'package:flutter/material.dart';

class DataSearch extends SearchDelegate<String> {
  List abc = CollegeScreen().;
  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
        icon: Icon(Icons.clear),
        onPressed: () {},
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
      onPressed: () {},
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
    final suggestionlist = .where((p) => p.startsWith(query)).toList();

    return ListView.builder(
        itemBuilder: (context, index) => CollegeContainer(
          name: suggestionlist[index],
          url: suggestionlist[index],
        ));
    throw UnimplementedError();
  }
}
