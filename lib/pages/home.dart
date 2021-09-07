import 'package:flutter/material.dart';
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
              Column(
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
                    height: 20,
                  ),
                  // Container(
                  //   padding: EdgeInsets.all(5),
                  //   decoration: BoxDecoration(
                  //       color: Color.fromRGBO(244, 243, 243, 1),
                  //       borderRadius: BorderRadius.circular(15)),
                  //   child: TextField(
                  //     decoration: InputDecoration(
                  //         border: InputBorder.none,
                  //         prefixIcon: Icon(
                  //           Icons.search,
                  //           color: Colors.black87,
                  //         ),
                  //         hintText: "Search you're looking for",
                  //         hintStyle:
                  //             TextStyle(color: Colors.grey, fontSize: 15)),
                  //   ),
                  // ),
                  SizedBox(
                    height: 10,
                  ),
                ],
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
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      'played',
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
                      'Podcasts',
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
      ]),
    );
  }
}
