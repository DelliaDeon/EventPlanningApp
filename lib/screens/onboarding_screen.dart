import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

void main(){
  runApp(OnboardingScreen());
}

class OnboardingScreen extends StatefulWidget {
  OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

  class _OnboardingScreenState extends State<OnboardingScreen> {

  //controller to keep track of which screen we're on

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
          children: [
            PageView(
              children: [
                Container(
                  color: Colors.blue,
                ),

                Container(
                  color: Colors.purple,
                ),

                Container(
                  color: Colors.yellow,
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Welcome to Event Planning App!'),
                        ElevatedButton(
                          onPressed: () {
                            Navigator.pushNamed(context, '/login');
                          },
                          child: Text('Login'),
                        ),
                        ElevatedButton(
                          onPressed: () {
                            Navigator.pushNamed(context, '/signup');
                          },
                          child: Text('Sign Up'),
                        ),
                      ],
                    ),
                  ),

                ),
              ],
            ),

            // dot indicators
            //SmoothPageIndicator(controller: controller, count: 3),
          ],
        ),
    );
  }
}
