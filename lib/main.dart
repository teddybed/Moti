import 'package:flutter/material.dart';
import 'Splash/light_splash.dart';
import 'Splash/light_welcome.dart';
import 'walkthrough/light_walkthrough_1.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter 4 Page App',
      theme: ThemeData(primarySwatch: Colors.blue),
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => LightSplash(),
        '/welcome': (context) => LightWelcome(),
        '/walkthrough1': (context) => Walkthrough1(),

      },
    );
  }
}
