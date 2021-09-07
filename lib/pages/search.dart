import 'package:flutter/material.dart';
import 'package:spotify_redesign_concept_by_chidalu/widgets/constants.dart';
// import 'package:spotify_redesign_concept_by_chidalu/widgets/constants.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({Key key}) : super(key: key);

  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Stack(
          children: <Widget>[
            Container(
              color: Colors.black87,
              width: double.infinity,
              child: Opacity(
                opacity: 0.3,
                child: Image.asset(
                  StyleGuide.searchBackground,
                  height: 1000,
                  width: 100,
                  fit: BoxFit.fitHeight,
                ),
              ),
            ),
            Align(
                alignment: Alignment.bottomCenter,
                child: Theme(
                    data: Theme.of(context)
                        .copyWith(canvasColor: Colors.transparent),
                    child: BottomNavigationBar(
                      backgroundColor: Colors.black
                          .withOpacity(0.1), //here set your transparent level
                      elevation: 0,
                      selectedItemColor: Colors.white,
                      unselectedItemColor: Colors.white,
                      type: BottomNavigationBarType.fixed,
                      currentIndex: 0,
                      showSelectedLabels: false,
                      showUnselectedLabels: false,
                      items: [
                        BottomNavigationBarItem(
                            icon: Icon(Icons.notifications_none, size: 30),
                            title: Text('Notifications')),
                        BottomNavigationBarItem(
                            icon: Icon(Icons.search, size: 30),
                            title: Text('Search')),
                        BottomNavigationBarItem(
                            icon: Icon(Icons.perm_identity, size: 30),
                            title: Text('User'))
                      ],
                    ))),
            Column(
              children: [
                Padding(padding: EdgeInsets.all(30)),
                Center(
                  child: Text(
                    "Search",
                    style: TextStyle(
                      fontSize: 35,
                      color: Colors.white,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                SizedBox(height: 40),
                _searchBar(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

Widget _searchBar() {
  return Container(
      width: 350,
      padding: EdgeInsets.all(2),
      decoration: BoxDecoration(
        color: Colors.grey[800],
        borderRadius: BorderRadius.circular(10),
      ),
      child: TextField(
          decoration: InputDecoration(
              border: InputBorder.none,
              prefixIcon: Icon(
                Icons.search,
                color: Colors.white,
              ),
              hintText: "Artists, songs or podcasts",
              hintStyle: TextStyle(
                color: Colors.white,
                fontSize: 18,
              ))));
}
