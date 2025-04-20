import 'dart:async';
import 'package:flutter/material.dart';

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
          GestureDetector(
            onTap: onBack ?? () => Navigator.pop(context),
            child: const Icon(Icons.arrow_back, color: Colors.black),
          ),
          const SizedBox(
            width: 300,
            height: 29,
            child: Text(
              'OTP Code Verification',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: 'Urbanist',
                fontWeight: FontWeight.w700,
                fontSize: 24,
                height: 1.2,
                letterSpacing: 0,
                color: Color(0xFF212121),
              ),
            ),
          ),
          const SizedBox(width: 12),
        ],
      ),
    );
  }
}

class Otp extends StatefulWidget {
  const Otp({Key? key}) : super(key: key);

  @override
  _OtpState createState() => _OtpState();
}

class _OtpState extends State<Otp> {
  final List<TextEditingController> _controllers = List.generate(4, (_) => TextEditingController());
  int _countdown = 55;
  late Timer _timer;

  @override
  void initState() {
    super.initState();
    _startCountdown();
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  void _startCountdown() {
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      if (_countdown > 0) {
        setState(() {
          _countdown--;
        });
      } else {
        _timer.cancel();
      }
    });
  }

  void _verifyOtp() {
    final otp = _controllers.map((controller) => controller.text).join();
    if (otp.length == 4) {
      // Handle OTP verification
      print("OTP entered: $otp");
    } else {
      // Show an error if OTP is incomplete
      print("Please enter a valid OTP.");
    }
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final scaleX = size.width / 428.0;
    final scaleY = size.height / 926.0;

    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.fromLTRB(
            24.0 * scaleX,
            44.0 * scaleY,
            24.0 * scaleX,
            48.0 * scaleY,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Align(alignment: Alignment.centerLeft, child: Navbar()),
              const SizedBox(height: 60),
              const SizedBox(
                width: 380,
                height: 25,
                child: Text(
                  'Code has been send to +1 111 ******99',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: 'Urbanist',
                    fontWeight: FontWeight.w500,
                    fontSize: 18,
                    height: 1.4,
                    letterSpacing: 0.2,
                    color: Color(0xFF212121),
                  ),
                ),
              ),
              const SizedBox(height: 60),

              // OTP container
              Container(
                width: 380,
                height: 61,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: List.generate(4, (index) {
                    return Container(
                      width: 83,
                      height: 61,
                      padding: const EdgeInsets.fromLTRB(32, 16, 32, 16),
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey, width: 1),
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: Center(
                        child: TextField(
                          controller: _controllers[index],
                          textAlign: TextAlign.center,
                          keyboardType: TextInputType.number,
                          maxLength: 1,
                          style: const TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          ),
                          decoration: const InputDecoration(
                            counterText: "",
                            border: InputBorder.none,
                          ),
                          onChanged: (value) {
                            if (value.isNotEmpty && index < 3) {
                              FocusScope.of(context).nextFocus();
                            } else if (value.isEmpty && index > 0) {
                              FocusScope.of(context).previousFocus();
                            }
                          },
                        ),
                      ),
                    );
                  }),
                ),
              ),

              const SizedBox(height: 40),


              const SizedBox(height: 20),

              // Countdown timer
              Text(
                _countdown > 0
                    ? 'Resend code in $_countdown s'
                    : 'Resend code',
                style: const TextStyle(
                  fontFamily: 'Urbanist',
                  fontWeight: FontWeight.w500,
                  fontSize: 16,
                  color: Color(0xFF757575),
                ),
              ),


              // Verify button
              SizedBox(
                width: 380,
                height: 58,
                child: ElevatedButton(
                  onPressed: _verifyOtp,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFFF85F47),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(100),
                    ),
                    padding: EdgeInsets.symmetric(
                      vertical: 18 * scaleY,
                      horizontal: 16 * scaleX,
                    ),
                  ),
                  child: const Text(
                    'Verify',
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
    );
  }
}
