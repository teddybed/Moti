import 'package:flutter/material.dart';
import 'light_Splash.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter 4 Page App',
      theme: ThemeData(primarySwatch: Colors.blue),
      debugShowCheckedModeBanner: false, // 👈 disables debug banner

      initialRoute: '/',
      routes: {
        '/': (context) => LightSplash(),

      },
    );
  }
}
