import 'package:flutter/material.dart';
import 'package:spotify_redesign_concept_by_chidalu/widgets/bottomNavbar.dart';
import 'package:spotify_redesign_concept_by_chidalu/widgets/constants.dart';
import 'package:spotify_redesign_concept_by_chidalu/widgets/squarecards.dart';
import 'package:spotify_redesign_concept_by_chidalu/widgets/squarecirclecards.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        Container(
          color: Colors.black87,
          width: double.infinity,
          child: Opacity(
            opacity: 0.3,
            child: Image.asset(
              StyleGuide.homeBackground,
              height: 1000,
              width: double.infinity,
              fit: BoxFit.fitHeight,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 50),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(18.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'Good evening 🌩',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                          fontWeight: FontWeight.w300),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'Recently',
                      style: TextStyle(
                          fontSize: 30,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'posted',
                      style: TextStyle(
                          fontSize: 30,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    Container(
                      height: 170,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: <Widget>[
                          squareCard(StyleGuide.homeBackground),
                          squareCard(StyleGuide.searchBackground),
                          squareCard(StyleGuide.homeBackground),
                          squareCard(StyleGuide.playlistBackground),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      'Popular',
                      style: TextStyle(
                          fontSize: 30,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    Container(
                      height: 170,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: <Widget>[
                          squareCircleCard(StyleGuide.searchBackground),
                          squareCircleCard(StyleGuide.playlistBackground),
                          squareCircleCard(StyleGuide.homeBackground),
                          squareCircleCard(StyleGuide.homeBackground),
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
        Align(
            alignment: Alignment.bottomCenter,
            child: Theme(
                data:
                    Theme.of(context).copyWith(canvasColor: Colors.transparent),
                child: BottomNavbar()))
      ]),
    );
  }
}
