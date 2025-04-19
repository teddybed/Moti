import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LightSplash extends StatefulWidget {
  @override
  _LightSplashState createState() => _LightSplashState();
}

class _LightSplashState extends State<LightSplash> with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();

    // Navigate to welcome screen after 2 seconds
    Timer(Duration(seconds: 2), () {
      Navigator.pushReplacementNamed(context, '/welcome');
    });

    _controller = AnimationController(
      duration: const Duration(seconds: 1),
      vsync: this,
    )..repeat();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final scaleX = size.width / 428.0;
    final scaleY = size.height / 926.0;

    return Scaffold(
      backgroundColor: const Color(0xFFF85F47),
      body: Stack(
        children: [
          Positioned(
            top: 396.0 * scaleY,
            left: 110.76 * scaleX,
            child: Image.asset(
              'assets/images/logo.png',
              width: 207.24 * scaleX,
              height: 66.57 * scaleY,
            ),
          ),
          Positioned(
            top: 766.0 * scaleY,
            left: 184.0 * scaleX,
            child: RotationTransition(
              turns: _controller,
              child: SvgPicture.asset(
                'assets/images/loading.svg',
                width: 60.0 * scaleX,
                height: 60.0 * scaleY,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
