import 'package:flutter/material.dart';

class SectionBar extends StatelessWidget {
  const SectionBar({Key key}) : super(key: key);

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
              onPressed: () {},
              shape: new RoundedRectangleBorder(
                borderRadius: new BorderRadius.circular(10.0),
              ),
              child: Icon(
                Icons.search,
                size: 30,
                color: Colors.white,
              ),
            )),
      ],
    );
  }
}
