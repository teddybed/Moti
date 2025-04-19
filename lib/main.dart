import 'package:flutter/material.dart';
import 'light_splash.dart';
import 'light_welcome.dart';

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
      },
    );
  }
}
