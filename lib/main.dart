import 'package:flutter/material.dart';
import 'screens/Splash/light_splash.dart';
import 'screens/Splash/light_welcome.dart';
import 'screens/walkthrough/light_walkthrough_1.dart';
import 'screens/walkthrough/light_walkthrough_2.dart';
import 'screens/walkthrough/light_walkthrough_3.dart';




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
        '/walkthrough2': (context) => Walkthrough2(),
        '/walkthrough3': (context) => Walkthrough3(),



      },
    );
  }
}
