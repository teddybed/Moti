import 'dart:async';
import 'package:flutter/material.dart';

class LightWelcome extends StatefulWidget {
  @override
  _LightWelcomeState createState() => _LightWelcomeState();
}

class _LightWelcomeState extends State<LightWelcome> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 2), () {
      Navigator.pushReplacementNamed(context, '/walkthrough1');
    });
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final scaleX = size.width / 428.0;
    final scaleY = size.height / 926.0;

    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            left: -3,
            child: Image.asset(
              'assets/images/background.png',
              width: 434 * scaleX,
              height: 926 * scaleY,
              fit: BoxFit.cover,
            ),
          ),

          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              height: 926 * scaleY,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Color.fromRGBO(24, 26, 32, 0),
                    Color(0xFF181A20),
                  ],
                ),
              ),
              alignment: Alignment.center,
              child: Container(
                width: 380 ,
                height: 186 ,
                decoration: BoxDecoration(
                  color: Colors.black.withOpacity(0.5), // Optional: subtle box background
                ),
                child: Center(
                  child: Text(
                    "Welcome",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 28 ,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1.5 ,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
