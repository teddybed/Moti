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
          // Gradient 1
          Positioned(
            top: 533 * scaleY, // Position for the first gradient
            left: 0,
            child: Container(
              width: 428 * scaleX,
              height: 393 * scaleY,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Color.fromRGBO(24, 26, 32, 0), // Transparent at the top
                    Color(0xFF181A20), // Dark color at the bottom
                  ],
                  stops: [0.0, 1.0],
                ),
              ),
            ),
          ),
          // Gradient 2
          Positioned(
            top: 533 * scaleY, // Position for the second gradient (same as first one)
            left: 0,
            child: Container(
              width: 428 * scaleX,
              height: 393 * scaleY,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Color.fromRGBO(24, 26, 32, 0),
                    Color(0xFF181A20),
                  ],
                  stops: [0.0, 1.0],
                ),
              ),
            ),
          ),
          // Text on the bottom of the gradient
          Positioned(
            bottom: 20 * scaleY, // Position the text at the bottom of the screen
            left: 0,
            right: 0,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20 * scaleX),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: 380 , // Set the width of the header
                    height: 116 , // Set the height of the header
                    alignment: Alignment.center, // Vertically and horizontally center the text

                    child: Text(
                      'Welcome to MOTI! 👋', // Header Text with emoji
                      textAlign: TextAlign.center, // Center align the text

                      style: TextStyle(
                        fontFamily: 'Urbanist', // Apply the Urbanist font
                        fontSize: 48 , // Adjust font size
                        fontWeight: FontWeight.w700, // Apply bold font weight
                        height: 1.2, // Line height of 120%
                        letterSpacing: 0.0, // No letter spacing
                        color: Colors.white,
                      ),
                    ),
                  ),
                  SizedBox(height: 10 * scaleY), // Space between header and description
                  Container(
                    width: 280, // Set the width of the description
                    height: 50, // Set the height of the description
                    alignment: Alignment.center, // Vertically and horizontally center the text
                    child: Text(
                      'We are here to make you happy, as fast as possible.', // Description text
                      textAlign: TextAlign.center, // Center align the text

                      style: TextStyle(
                        fontFamily: 'Urbanist', // Apply the Urbanist font
                        fontSize: 18, // Adjust font size
                        fontWeight: FontWeight.w500, // Apply bold font weight
                        height: 1.4, // Line height of 140%
                        letterSpacing: 0.2, // No letter spacing
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
