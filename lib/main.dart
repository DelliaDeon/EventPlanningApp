import 'package:flutter/material.dart';
import 'package:event_planning_app/screens/splash_screen.dart';
import 'package:event_planning_app/screens/onboarding_screen.dart';
import 'package:event_planning_app/screens/login_screen.dart';
import 'package:event_planning_app/screens/signup_screen.dart';
import 'package:event_planning_app/screens/home_screen.dart';
import 'package:event_planning_app/screens/search_screen.dart';
import 'package:event_planning_app/screens/messaging_screen.dart';
import 'package:event_planning_app/screens/notifications_screen.dart';
import 'package:event_planning_app/screens/profile_screen.dart';
import 'package:event_planning_app/screens/events_screen.dart';

void main() {
  runApp(const MyEventApp());
}

class MyEventApp extends StatelessWidget {
  const MyEventApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Event Planning and Collaboration App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),

      initialRoute: '/',
      routes: {
        '/': (context) => SplashScreen(),
        '/onboarding': (context) => OnboardingScreen(),
        '/login': (context) => LoginScreen(),
        '/signup': (context) => SignupScreen(),
        '/home': (context) => HomeScreen(),
        '/search': (context) => SearchScreen(),
        '/messaging': (context) => MessagingScreen(),
        '/notifications': (context) => NotificationsScreen(),
        '/profile': (context) => ProfileScreen(),
        '/events': (context) => EventsScreen(),
      },
    );
  }
}
