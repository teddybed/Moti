import 'package:flutter/material.dart';

class Walkthrough3 extends StatefulWidget {
  @override
  _Walkthrough3State createState() => _Walkthrough3State();
}

class _Walkthrough3State extends State<Walkthrough3> {
  int _activeDotIndex = 0; // Active dot state

  // Set the active dot index
  void _setActiveDot(int index) {
    setState(() {
      _activeDotIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final scaleX = size.width / 428.0;
    final scaleY = size.height / 926.0;

    return Scaffold(
      backgroundColor: const Color(0xFFFFFFFF),
      body: Stack(
        children: [
          // Image
          Positioned(
            top: 196 * scaleX, // Adjusted to position the image
            left: 78 * scaleY,
            child: Image.asset(
              'assets/images/49 - 3D Finance.png',
              width: 302 * scaleX,
              height: 302 * scaleY,
            ),
          ),

          // Bottom Container
          Positioned(
            top: 480 * scaleX, // Adjusted top value to fit the layout
            left: 0,
            child: Container(
              width: 428 * scaleX,
              height: 446 * scaleY, // Increased height to avoid overflow
              padding: const EdgeInsets.fromLTRB(24, 36, 24, 48),
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(60),
                  topRight: Radius.circular(60),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  // Gradient Header Text
                  SizedBox(
                    width: double.infinity,  // Allow the width to be dynamic and flexible
                    height: 58,
                    child: ShaderMask(
                      shaderCallback: (bounds) => const LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [Color(0xFFF85F47), Color(0xFFFF3B1C)],
                      ).createShader(Rect.fromLTWH(0, 0, bounds.width, bounds.height)),  // Use bounds.width and bounds.height for dynamic sizing
                      blendMode: BlendMode.srcIn,
                      child: const Text(
                        'Pay',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontFamily: 'Urbanist',
                          fontWeight: FontWeight.w700,
                          fontSize: 48,
                          height: 1.2, // 120%
                          letterSpacing: 0,
                        ),
                      ),
                    ),
                  ),

                  // Description with dark background
                  Container(
                    width: 380, // Adjusted width for scaling
                    height: 75, // Adjusted height for scaling
                    alignment: Alignment.center,
                    child: const Text(
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontFamily: 'Urbanist',
                        fontWeight: FontWeight.w500,
                        fontSize: 18,
                        height: 1.4, // 140%
                        letterSpacing: 0.2,
                        color: Color(0xFF212121), // dark text color
                      ),
                    ),
                  ),

                  // Dot Indicators
                  const SizedBox(height: 30), // Added spacing before dots
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center, // Center dots
                    children: <Widget>[
                      // First Dot


                      const SizedBox(width: 8), // Space between dots

                      // Second Dot
                      Container(
                        width: 8,
                        height: 8,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          color: Color(0xFFE0E0E0), // Background color #E0E0E0
                        ),
                      )
                      ,


                      const SizedBox(width: 8), // Space between dots

                      Container(
                        width: 8,
                        height: 8,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          color: Color(0xFFE0E0E0), // Background color #E0E0E0
                        ),
                      ),
                      const SizedBox(width: 8), // Space between dots
                      Container(
                        width: 32,
                        height: 8,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          color: _activeDotIndex == 0
                              ? null
                              : Colors.grey,
                          gradient: _activeDotIndex == 0
                              ? LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                            colors: [Color(0xFFF85F47), Color(0xFFFF3B1C)],
                          )
                              : null,
                        ),
                      ),
                    ],
                  ),

                  const SizedBox(height: 30), // Added spacing after dots

                  // Main Filled Button
                  SizedBox(
                    width: 380,
                    height: 58,
                    child: ElevatedButton(
                      onPressed: () {
                        // Navigate to the next page using the named route
                        Navigator.pushNamed(context, '/letYouIn');

                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFFF85F47),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(100),
                        ),
                        padding: EdgeInsets.symmetric(vertical: 18 * scaleY, horizontal: 16 * scaleX),
                      ),
                      child: const Text(
                        'Get Started',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontFamily: 'Urbanist',
                          fontWeight: FontWeight.w700,
                          fontSize: 16,
                          height: 1.4,
                          letterSpacing: 0.2,
                          color: Colors.white,
                        ),
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
