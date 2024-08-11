import 'package:flutter/material.dart';
import 'dart:async';


class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> with TickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _rotationAnimation;
  late Animation<double> _radiusAnimation;

  @override
  void initState() {
    super.initState();
    _navigateToLogin();

    // animation controller
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    )..forward();

    // rotation animation
    _rotationAnimation = Tween(
      begin: 0.0,
      end: 1.0,
    ).animate(
      CurvedAnimation(
        parent: _controller,
        curve: Curves.easeInOut,
      ),
    );

    // radius animation => from circle to square
    _radiusAnimation = Tween(
      begin: 450.0,
      end: 1.0,
    ).animate(
      CurvedAnimation(
        parent: _controller,
        curve: Curves.easeInOut,
      ),
    );

    _controller.addListener(() {
      setState(() {});
    });

    // make animation go back and forth
    _controller.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        _controller.reverse();
      } else if (status == AnimationStatus.dismissed) {
        _controller.forward();
      }
    });
  }

  void _navigateToLogin() {
    Timer(Duration(seconds: 10), () {
      Navigator.pushReplacementNamed(context, '/onboarding');
      /*Navigator.of(context).pushReplacement(
        MaterialPageRoute(
            builder: (context) => OnboardingScreen()
        ),
      );*/
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.asset(
                'lib/images/event_logo.png',
                //height: 100,
              ),
              SizedBox(height: 90),
              Stack(
                alignment: Alignment.center,
                children: [
                  //biggest object
                  Transform.rotate(
                    angle: _rotationAnimation.value + 0.2,
                    child: Container(
                      width: 95,
                      height: 95,
                      decoration: BoxDecoration(
                        color: Colors.deepPurple[600],
                        borderRadius: BorderRadius.all(
                          Radius.circular(_radiusAnimation.value),
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.deepPurple.withOpacity(0.8),
                            offset: Offset(-6.0, -6.0),
                            // blurRadius: 5.0
                          ),
                          BoxShadow(
                            color: Colors.black.withOpacity(0.1),
                            offset: Offset(6.0, 6.0),
                            // blurRadius: 16.0
                          ),
                        ],
                      ),
                    ),
                  ),
                  // 2nd biggest object
                  Transform.rotate(
                    angle: _rotationAnimation.value + 0.4,
                    child: Container(
                      width: 85,
                      height: 85,
                      decoration: BoxDecoration(
                        color: Colors.pinkAccent[400],
                        borderRadius: BorderRadius.all(
                          Radius.circular(_radiusAnimation.value),
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.deepPurple.withOpacity(0.8),
                            offset: Offset(-6.0, -6.0),
                            // blurRadius: 5.0
                          ),
                          BoxShadow(
                            color: Colors.black.withOpacity(0.1),
                            offset: Offset(6.0, 6.0),
                            // blurRadius: 16.0
                          ),
                        ],
                      ),
                    ),
                  ),
                  // 3rd biggest object
                  Transform.rotate(
                    angle: _rotationAnimation.value + 0.6,
                    child: Container(
                      width: 75,
                      height: 75,
                      decoration: BoxDecoration(
                        color: Colors.pinkAccent[200],
                        borderRadius: BorderRadius.all(
                          Radius.circular(_radiusAnimation.value),
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.deepPurple.withOpacity(0.7),
                            offset: Offset(-6.0, -6.0),
                            // blurRadius: 5.0
                          ),
                          BoxShadow(
                            color: Colors.black.withOpacity(0.1),
                            offset: Offset(6.0, 6.0),
                            // blurRadius: 16.0
                          ),
                        ],
                      ),
                    ),
                  ),
                  // 4th biggest object
                  Transform.rotate(
                    angle: _rotationAnimation.value + 0.8,
                    child: Container(
                      width: 65,
                      height: 65,
                      decoration: BoxDecoration(
                        color: Colors.pink[100],
                        borderRadius: BorderRadius.all(
                          Radius.circular(_radiusAnimation.value),
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.deepPurple.withOpacity(0.7),
                            offset: Offset(-6.0, -6.0),
                            // blurRadius: 5.0
                          ),
                          BoxShadow(
                            color: Colors.black.withOpacity(0.1),
                            offset: Offset(6.0, 6.0),
                            // blurRadius: 16.0
                          ),
                        ],
                      ),
                    ),
                  ),
                  // 5th biggest object
                  Transform.rotate(
                    angle: _rotationAnimation.value + 1.0,
                    child: Container(
                      width: 55,
                      height: 55,
                      decoration: BoxDecoration(
                        color: Colors.deepPurpleAccent[600],
                        borderRadius: BorderRadius.all(
                          Radius.circular(_radiusAnimation.value),
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.deepPurpleAccent.withOpacity(0.8),
                            offset: Offset(-6.0, -6.0),
                            // blurRadius: 5.0
                          ),
                          BoxShadow(
                            color: Colors.black.withOpacity(0.1),
                            offset: Offset(6.0, 6.0),
                            // blurRadius: 16.0
                          ),
                        ],
                      ),
                    ),
                  ),
                  // 6th biggest object
                  Transform.rotate(
                    angle: _rotationAnimation.value + 1.2,
                    child: Container(
                      width: 45,
                      height: 45,
                      decoration: BoxDecoration(
                        color: Colors.deepPurpleAccent[400],
                        borderRadius: BorderRadius.all(
                          Radius.circular(_radiusAnimation.value),
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.deepPurpleAccent.withOpacity(0.8),
                            offset: Offset(-6.0, -6.0),
                            // blurRadius: 5.0
                          ),
                          BoxShadow(
                            color: Colors.black.withOpacity(0.1),
                            offset: Offset(6.0, 6.0),
                            // blurRadius: 16.0
                          ),
                        ],
                      ),
                    ),
                  ),
                  // 7th biggest object
                  Transform.rotate(
                    angle: _rotationAnimation.value + 1.4,
                    child: Container(
                      width: 35,
                      height: 35,
                      decoration: BoxDecoration(
                        color: Colors.deepPurpleAccent[200],
                        borderRadius: BorderRadius.all(
                          Radius.circular(_radiusAnimation.value),
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.deepPurpleAccent.withOpacity(0.8),
                            offset: Offset(-6.0, -6.0),
                            // blurRadius: 5.0
                          ),
                          BoxShadow(
                            color: Colors.black.withOpacity(0.1),
                            offset: Offset(6.0, 6.0),
                            // blurRadius: 16.0
                          ),
                        ],
                      ),
                    ),
                  ),
                  // 8th biggest object
                  Transform.rotate(
                    angle: _rotationAnimation.value + 1.6,
                    child: Container(
                      width: 25,
                      height: 25,
                      decoration: BoxDecoration(
                        color: Colors.blue[800],
                        borderRadius: BorderRadius.all(
                          Radius.circular(_radiusAnimation.value),
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.deepPurpleAccent.withOpacity(0.7),
                            offset: Offset(-6.0, -6.0),
                            // blurRadius: 5.0
                          ),
                          BoxShadow(
                            color: Colors.black.withOpacity(0.1),
                            offset: Offset(6.0, 6.0),
                            // blurRadius: 16.0
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
