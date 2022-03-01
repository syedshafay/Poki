import 'package:flutter/material.dart';
import 'package:poki/router/route_constant.dart';
import 'package:poki/router/routers.dart';
import 'package:poki/values/branding_color.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Poki',
      theme: ThemeData(
        brightness: Brightness.dark,
        primarySwatch: brandingColor,
      ),
      onGenerateRoute: Routers.onGenerateRoute,
      initialRoute: splashRoute,
    );
  }
}
