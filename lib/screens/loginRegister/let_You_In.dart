import 'package:flutter/material.dart';

// Navbar Component with Theme: Light
class Navbar extends StatelessWidget {
  final VoidCallback? onBack;

  const Navbar({Key? key, this.onBack}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 380,
      height: 48,
      padding: const EdgeInsets.symmetric(vertical: 12),
      child: Row(
        children: [
          const SizedBox(width: 12),
          GestureDetector(
            onTap: onBack ?? () => Navigator.pop(context),
            child: const Icon(Icons.arrow_back, color: Colors.black),
          ),
          const SizedBox(width: 12),
        ],
      ),
    );
  }
}

class letYouIn extends StatefulWidget {
  @override
  _LightSplashState createState() => _LightSplashState();
}

class _LightSplashState extends State<letYouIn> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final scaleX = size.width / 428.0;
    final scaleY = size.height / 926.0;

    return Scaffold(
      body: Stack(
        children: [
          // White container
          Positioned(
            top: 44.0 * scaleY,
            child: Center(
              child: Container(
                width: 428.0 * scaleX,
                height: 882.0 * scaleY,
                padding: EdgeInsets.fromLTRB(
                  24.0 * scaleX,
                  16.0 * scaleY,
                  24.0 * scaleX,
                  48.0 * scaleY,
                ),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(0),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    // Navbar (Light theme)
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Navbar(),
                    ),
                    const SizedBox(height: 34),

                    // Logo
                    Image.asset(
                      'assets/images/logo2.png',
                      width: 207.24,
                      height: 66.57,
                    ),
                    const SizedBox(height: 34),

                    // Styled Text
                    Container(
                      width: 380,
                      height: 68,
                      alignment: Alignment.center,
                      child: const Text(
                        'Let’s get you in',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontFamily: 'Urbanist',
                          fontWeight: FontWeight.w700,
                          fontSize: 48,
                          height: 1.4, // 140%
                          letterSpacing: 0.2,
                          color: Color(0xFF212121), // dark text color
                        ),
                      ),
                    ),

                    const SizedBox(height: 34), // gap: 34px

                    // Red Container
                    Container(
                      width: 380,
                      height: 363,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8), // optional
                      ),
                      child: Column(
                        children: [
                          const SizedBox(height: 16), // gap: 16px

                          // Yellow Container inside Red Container
                          Container(
                            width: 380,
                            height: 212, // Height for the entire container
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Column(
                              children: [
                                // Facebook Button
                                GestureDetector(
                                  onTap: () {
                                    // Handle Button 1 tap action here
                                  },
                                  child: Container(
                                    width: 380,
                                    height: 60,
                                    padding: const EdgeInsets.fromLTRB(32, 18, 32, 18),
                                    margin: const EdgeInsets.only(bottom: 10),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(16),
                                      border: Border.all(width: 1, color: Color(0xFFEEEEEE)), // Border color #EEEEEE
                                      color: Colors.white, // Background color white
                                    ),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.center, // Centers the content horizontally
                                      children: [
                                        Image.asset(
                                          'assets/images/facebook.png', // Replace with your image path
                                          width: 24,
                                          height: 24,
                                        ),
                                        SizedBox(width: 10), // Space between image and text
                                        const Text(
                                          'Continue with Facebook',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            fontFamily: 'Urbanist',
                                            fontWeight: FontWeight.w600,
                                            fontSize: 16,
                                            height: 1.4, // 140%
                                            letterSpacing: 0.2,
                                            color: Color(0xFF212121), // dark text color
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),

                                // Google Button
                                GestureDetector(
                                  onTap: () {
                                    // Handle Button 2 tap action here
                                  },
                                  child: Container(
                                    width: 380,
                                    height: 60,
                                    padding: const EdgeInsets.fromLTRB(32, 18, 32, 18),
                                    margin: const EdgeInsets.only(bottom: 10),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(16),
                                      border: Border.all(width: 1, color: Color(0xFFEEEEEE)), // Border color #EEEEEE
                                      color: Colors.white, // Background color white
                                    ),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.center, // Centers the content horizontally
                                      children: [
                                        Image.asset(
                                          'assets/images/google.png', // Replace with your image path
                                          width: 24,
                                          height: 24,
                                        ),
                                        SizedBox(width: 10), // Space between image and text
                                        const Text(
                                          'Continue with Google',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            fontFamily: 'Urbanist',
                                            fontWeight: FontWeight.w600,
                                            fontSize: 16,
                                            height: 1.4, // 140%
                                            letterSpacing: 0.2,
                                            color: Color(0xFF212121), // dark text color
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),

                                // Apple Button
                                GestureDetector(
                                  onTap: () {
                                    // Handle Button 3 tap action here
                                  },
                                  child: Container(
                                    width: 380,
                                    height: 60,
                                    padding: const EdgeInsets.fromLTRB(32, 18, 32, 18),
                                    margin: const EdgeInsets.only(bottom: 10),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(16),
                                      border: Border.all(width: 1, color: Color(0xFFEEEEEE)), // Border color #EEEEEE
                                      color: Colors.white, // Background color white
                                    ),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.center, // Centers the content horizontally
                                      children: [
                                        Image.asset(
                                          'assets/images/apple.png', // Replace with your image path
                                          width: 24,
                                          height: 24,
                                        ),
                                        SizedBox(width: 10), // Space between image and text
                                        const Text(
                                          'Continue with Apple',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            fontFamily: 'Urbanist',
                                            fontWeight: FontWeight.w600,
                                            fontSize: 16,
                                            height: 1.4, // 140%
                                            letterSpacing: 0.2,
                                            color: Color(0xFF212121), // dark text color
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          // OR line
                          const Padding(
                            padding: EdgeInsets.symmetric(vertical: 12),
                            child: Row(
                              children: [
                                Expanded(child: Divider(color: Color(0xFFEEEEEE))),
                                Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 10),
                                  child: Text(
                                    'or',
                                    style: TextStyle(
                                      fontFamily: 'Urbanist',
                                      fontWeight: FontWeight.w600,
                                      fontSize: 18,
                                      color: Color(0xFF212121), // dark text color
                                    ),
                                  ),
                                ),
                                Expanded(child: Divider(color: Color(0xFFEEEEEE))),
                              ],
                            ),
                          ),
                          // Next Button
                          SizedBox(
                            width: 348,
                            height: 58,
                            child: ElevatedButton(
                              onPressed: () {
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: const Color(0xFFF85F47),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(100),
                                ),
                                padding: EdgeInsets.symmetric(vertical: 18 * scaleY, horizontal: 16 * scaleX),
                              ),
                              child: const Text(
                                'Sign in with Phone Number',
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
                    // Don't have an account? Row
                    const SizedBox(height: 20), // Optional spacing before the row
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: 148,
                          height: 20,
                          alignment: Alignment.centerRight, // Align text to the right
                          child: const Text(
                            "Don't have an account? ",
                            textAlign: TextAlign.right, // Right-align the text

                            style: TextStyle(
                              fontFamily: 'Urbanist', // Make sure you have the font loaded
                              fontWeight: FontWeight.w400,
                              fontSize: 14,
                              height: 1.4, // line-height of 140%
                              letterSpacing: 0.2,
                              color: Color(0xFF9E9E9E), // Corrected color property

                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {

                              // Navigate to the next page using the named route
                              Navigator.pushNamed(context, '/signUp');
                              },
                          child: Container(
                            width: 49,
                            height: 20,
                            alignment: Alignment.center, // Center align the text vertically
                            child: const Text(
                              "Sign up",
                              style: TextStyle(
                                fontFamily: 'Urbanist', // Make sure you have the font loaded
                                fontWeight: FontWeight.w600,
                                fontSize: 14,
                                height: 1.4, // line-height of 140%
                                letterSpacing: 0.2,
                                color: Color(0xFFF85F47), // Corrected color property
                              ),
                            ),
                          ),

                        ),
                      ],
                    )

                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
