import 'package:flutter/material.dart';
import 'package:spotify_redesign_concept_by_chidalu/routes/router.dart';
import 'package:spotify_redesign_concept_by_chidalu/routes/routes.dart';
import 'package:spotify_redesign_concept_by_chidalu/utils/config.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: AppConfig.appName,
      debugShowCheckedModeBanner: false,
      onGenerateRoute: generateRoute,
      initialRoute: homeRoute,
    );
  }
}
