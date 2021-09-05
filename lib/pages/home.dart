import 'package:flutter/material.dart';
import 'package:spotify_redesign_concept_by_chidalu/widgets/constants.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: NeverScrollableScrollPhysics(),
        child: Stack(children: <Widget>[
          Container(
            color: Colors.black87,
            width: double.infinity,
            child: Opacity(
              opacity: 0.1,
              child: Image.asset(
                StyleGuide.homeBackground,
                height: 1000,
                width: 100,
                fit: BoxFit.fitHeight,
              ),
            ),
          ),
          Column(
            children: [
              Padding(padding: EdgeInsets.all(30)),
              Text(
                "Good evening 🌩",
                style: TextStyle(
                  fontSize: 35,
                  color: Colors.white,
                  fontWeight: FontWeight.w400,
                ),
              ),
              SizedBox(height: 30),
            ],
          ),
        ]),
      ),
    );
  }
}
