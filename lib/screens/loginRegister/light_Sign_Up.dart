import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

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

class signUp extends StatefulWidget {
  @override
  _signUpState createState() => _signUpState();
}

class _signUpState extends State<signUp> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _fullNameController = TextEditingController();


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
                      height: 38,
                      alignment: Alignment.center,
                      child: const Text(
                        'Create New Account',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontFamily: 'Urbanist',
                          fontWeight: FontWeight.w700,
                          fontSize: 32,
                          height: 1.2, // 140%
                          letterSpacing: 0,
                          color: Color(0xFF212121), // dark text color
                        ),
                      ),
                    ),


                    // Input Fields Container
                    Container(
                      width: 380,
                      height: 340,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8), // optional
                      ),
                      child: Column(
                        children: [
                          const SizedBox(height: 16), // gap: 16px



                      SizedBox(
                      width: 380,
                      height: 60,
                      child: IntlPhoneField(
                        controller: _fullNameController,
                        decoration: InputDecoration(
                          labelText: 'Phone Number',
                          filled: true,
                          fillColor: Color(0xFFFAFAFA),
                          contentPadding: EdgeInsets.symmetric(horizontal: 20),
                          prefixIcon: Padding(
                            padding: EdgeInsets.only(top: 1.67, left: 3.33), // Adjusted position
                            child: Container(
                              width: 13.3330078125,  // Exact icon width
                              height: 16.6669921875, // Exact icon height
                              child: const Icon(
                                Icons.phone,
                                color: Color(0xFF9E9E9E), // Icon color
                              ),
                            ),
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(16),
                            borderSide: BorderSide.none,
                          ),
                          labelStyle: const TextStyle(
                            fontFamily: 'Urbanist',
                            fontWeight: FontWeight.w400,
                            fontSize: 14,
                            height: 1.4, // line-height equivalent in Flutter
                            letterSpacing: 0.2,
                            color: Color(0xFF9E9E9E),
                          ),
                        ),
                        initialCountryCode: 'US',  // Set the default country code
                        onChanged: (phone) {
                          // Handle phone number input change
                        },

                      ),
                    ),





                          // Email Input
                          SizedBox(
                            width: 380,
                            height: 60,
                            child: TextFormField(
                              controller: _fullNameController,
                              decoration: InputDecoration(
                                labelText: 'Email',
                                filled: true,
                                fillColor: Color(0xFFFAFAFA),
                                contentPadding: EdgeInsets.symmetric(horizontal: 20),
                                prefixIcon: Padding(
                                  padding: EdgeInsets.only(top: 1.67, left: 3.33), // Adjusted position
                                  child: Container(
                                    width: 13.3330078125,  // Exact icon width
                                    height: 16.6669921875, // Exact icon height
                                    child: const Icon(
                                      Icons.email,
                                      color: Color(0xFF9E9E9E), // Icon color
                                    ),
                                  ),
                                ),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(16),
                                  borderSide: BorderSide.none,
                                ),
                                labelStyle: const TextStyle(
                                  fontFamily: 'Urbanist',
                                  fontWeight: FontWeight.w400,
                                  fontSize: 14,
                                  height: 1.4, // line-height equivalent in Flutter
                                  letterSpacing: 0.2,
                                  color: Color(0xFF9E9E9E),
                                ),
                              ),
                              keyboardType: TextInputType.name,
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Please enter your full name';
                                }
                                return null;
                              },
                            ),
                          ),

// Full Name Input
                          SizedBox(
                            width: 380,
                            height: 60,
                            child: TextFormField(
                              controller: _fullNameController,
                              decoration: InputDecoration(
                                labelText: 'Full Name',
                                filled: true,
                                fillColor: Color(0xFFFAFAFA),
                                contentPadding: EdgeInsets.symmetric(horizontal: 20),
                                prefixIcon: Padding(
                                  padding: EdgeInsets.only(top: 1.67, left: 3.33), // Adjusted position
                                  child: Container(
                                    width: 13.3330078125,  // Exact icon width
                                    height: 16.6669921875, // Exact icon height
                                    child: const Icon(
                                      Icons.person,
                                      color: Color(0xFF9E9E9E), // Icon color
                                    ),
                                  ),
                                ),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(16),
                                  borderSide: BorderSide.none,
                                ),
                                labelStyle: const TextStyle(
                                  fontFamily: 'Urbanist',
                                  fontWeight: FontWeight.w400,
                                  fontSize: 14,
                                  height: 1.4, // line-height equivalent in Flutter
                                  letterSpacing: 0.2,
                                  color: Color(0xFF9E9E9E),
                                ),
                              ),
                              keyboardType: TextInputType.name,
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Please enter your full name';
                                }
                                return null;
                              },
                            ),
                          ),


                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 16.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Theme(
                                  data: ThemeData(
                                    checkboxTheme: CheckboxThemeData(
                                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
                                      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                                      visualDensity: VisualDensity.compact,
                                      splashRadius: 0,
                                      side: BorderSide(color: Color(0xFFF85F47), width: 2),
                                      fillColor: MaterialStateProperty.resolveWith<Color>(
                                            (states) => states.contains(MaterialState.selected)
                                            ? Color(0xFFF85F47)
                                            : Colors.transparent,
                                      ),
                                    ),
                                  ),
                                  child: SizedBox(
                                    width: 20,
                                    height: 20,
                                    child: Checkbox(
                                      value: false,
                                      onChanged: (bool? value) {
                                        // Handle 'Remember Me' checkbox
                                      },
                                      visualDensity: VisualDensity.compact,
                                    ),
                                  ),
                                ),
                                const SizedBox(width: 16),
                                const Text(
                                  'Remember Me',
                                  style: TextStyle(
                                    fontFamily: 'Urbanist',
                                    fontWeight: FontWeight.w600,
                                    fontSize: 16,
                                    height: 1.4,
                                    letterSpacing: 0.2,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          // Next Button
                          SizedBox(
                            width: 380,
                            height: 58,
                            child: ElevatedButton(
                              onPressed: () {
                                if (_formKey.currentState?.validate() ?? false) {
                                  // Proceed with sign-up process
                                }
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: const Color(0xFFF85F47),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(100),
                                ),
                                padding: EdgeInsets.symmetric(vertical: 18 * scaleY, horizontal: 16 * scaleX),
                              ),
                              child: const Text(
                                'Sign Up',
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

                    Container(
                      width: 380,
                      height: 45,
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Expanded(child: Divider(color: Color(0xFFEEEEEE))),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 10),
                            child: Text(
                              'or continue with',
                              style: TextStyle(
                                fontFamily: 'Urbanist',
                                fontWeight: FontWeight.w600,
                                fontSize: 18,
                                color: Color(0xFF757575), // dark text color
                              ),
                            ),
                          ),
                          Expanded(child: Divider(color: Color(0xFFEEEEEE))),
                        ],
                      ),
                    ),

                    Container(
                      width: 380,
                      height: 60,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            width: 88,
                            height: 60,
                            padding: EdgeInsets.only(top: 18, right: 32, bottom: 18, left: 32),
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey, width: 1),
                              borderRadius: BorderRadius.circular(16),
                            ),
                            child: Center(
                              child: Image.asset(
                                'assets/images/facebook.png',
                                width: 30,
                                height: 30,
                                fit: BoxFit.contain,
                              ),
                            ),
                          ),
                          Container(
                            width: 88,
                            height: 60,
                            padding: EdgeInsets.only(top: 18, right: 32, bottom: 18, left: 32),
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey, width: 1),
                              borderRadius: BorderRadius.circular(16),
                            ),
                            child: Center(
                              child: Image.asset(
                                'assets/images/google.png',
                                width: 30,
                                height: 30,
                                fit: BoxFit.contain,
                              ),
                            ),
                          ),
                          Container(
                            width: 88,
                            height: 60,
                            padding: EdgeInsets.only(top: 18, right: 32, bottom: 18, left: 32),
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey, width: 1),
                              borderRadius: BorderRadius.circular(16),
                            ),
                            child: Center(
                              child: Image.asset(
                                'assets/images/apple.png',
                                width: 30,
                                height: 30,
                                fit: BoxFit.contain,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),

                    const SizedBox(height: 6),

                    // Don't have an account? Row
                    Container(
                      width: 380,
                      height: 20,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: 20,
                            alignment: Alignment.centerRight,
                            child: const Text(
                              "Already have an account? ",
                              textAlign: TextAlign.right,
                              style: TextStyle(
                                fontFamily: 'Urbanist',
                                fontWeight: FontWeight.w400,
                                fontSize: 14,
                                height: 1.4,
                                letterSpacing: 0.2,
                                color: Color(0xFF9E9E9E),
                              ),
                            ),
                          ),
                          const SizedBox(width: 8), // Gap of 8px
                          GestureDetector(
                            onTap: () {
                              // Add your Sign In logic here
                            },
                            child: Container(
                              height: 20,
                              alignment: Alignment.center,
                              child: const Text(
                                "Sign In",
                                style: TextStyle(
                                  fontFamily: 'Urbanist',
                                  fontWeight: FontWeight.w600,
                                  fontSize: 14,
                                  height: 1.4,
                                  letterSpacing: 0.2,
                                  color: Color(0xFFF85F47),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
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
