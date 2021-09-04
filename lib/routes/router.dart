import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:spotify_redesign_concept_by_chidalu/pages/home.dart';
import 'package:spotify_redesign_concept_by_chidalu/pages/playlist.dart';
import 'package:spotify_redesign_concept_by_chidalu/pages/search.dart';
import 'package:spotify_redesign_concept_by_chidalu/routes/routes.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  // ignore: unused_local_variable
  final Map<String, dynamic> arguments = settings.arguments;
  switch (settings.name) {
    case homeRoute:
      return PageTransition(
        child: HomePage(),
        type: PageTransitionType.fade,
      );

    case searchRoute:
      return PageTransition(
        child: SearchPage(),
        type: PageTransitionType.fade,
      );

    case playlistRoute:
      return PageTransition(
        child: PlaylistPage(),
        type: PageTransitionType.fade,
      );

    default:
      return PageTransition(
        child: HomePage(),
        type: PageTransitionType.fade,
      );
  }
}
