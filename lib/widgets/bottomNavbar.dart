import 'package:flutter/material.dart';
import 'package:spotify_redesign_concept_by_chidalu/routes/routes.dart';

class BottomNavbar extends StatelessWidget {
  const BottomNavbar({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
            width: 50,
            height: 50,
            // ignore: deprecated_member_use
            child: FlatButton(
              onPressed: () {},
              shape: new RoundedRectangleBorder(
                borderRadius: new BorderRadius.circular(10.0),
              ),
              child: Icon(
                Icons.home,
                size: 30,
                color: Colors.white,
              ),
            )),
        Container(
            width: 50,
            height: 50,
            // ignore: deprecated_member_use
            child: FlatButton(
              onPressed: () {
                Navigator.of(context)
                    .pushNamedAndRemoveUntil(searchRoute, (route) => false);
              },
              shape: new RoundedRectangleBorder(
                borderRadius: new BorderRadius.circular(10.0),
              ),
              child: Icon(
                Icons.search,
                size: 30,
                color: Colors.white,
              ),
            )),
        Container(
            width: 50,
            height: 50,
            // ignore: deprecated_member_use
            child: FlatButton(
              onPressed: () {},
              shape: new RoundedRectangleBorder(
                borderRadius: new BorderRadius.circular(10.0),
              ),
              child: Icon(
                Icons.dashboard_outlined,
                size: 30,
                color: Colors.white,
              ),
            )),
      ],
    );
  }
}
