import 'package:flutter/material.dart';
import 'package:spotify_redesign_concept_by_chidalu/widgets/constants.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({Key key}) : super(key: key);

  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: NeverScrollableScrollPhysics(),
        child: Stack(children: <Widget>[
          Container(
              color: Colors.blue,
              width: double.infinity,
              child: Opacity(
                opacity: 0.5,
                child: Image.asset(
                  StyleGuide.searchBackground,
                  height: 1000,
                  width: 100,
                  fit: BoxFit.fitHeight,
                ),
              ))
        ]),
      ),
    );
  }
}
