import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:event_planning_app/screens/events_screen.dart';
import 'package:event_planning_app/screens/messaging_screen.dart';
import 'package:event_planning_app/screens/notifications_screen.dart';
import 'package:event_planning_app/screens/profile_screen.dart';
import 'package:event_planning_app/screens/search_screen.dart';
import 'package:event_planning_app/components/event_card.dart';

void main() {
  runApp(HomeScreen());
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/home': (context) => HomeScreen(),
        '/search': (context) => SearchScreen(),
        '/messaging': (context) => MessagingScreen(),
        '/notifications': (context) => NotificationsScreen(),
        '/profile': (context) => ProfileScreen(),
        '/events': (context) => EventsScreen(),
      },
      home: UpcomingEventsPage(),
    );
  }
}

class WelcomeUser extends StatelessWidget {
  const WelcomeUser({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          children: [
            Text(
              "Hi, Dellia!",
              style: TextStyle(
                fontSize: 20,
                color: Colors.blue,
              ),
            ),
            Text(
              "Welcome Back!",
              style: TextStyle(
                fontSize: 25,
                color: Colors.blue,
              ),
            ),
          ],
        ),
        SizedBox(width: 70),
        CircleAvatar(
          backgroundImage: AssetImage("lib/images/my_pic.jpg"),
        ),
      ],
    );
  }
}

class UpcomingEventsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 7,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'Upcoming Events',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 30,
            ),
          ),
          bottom: TabBar(
            isScrollable: true,
            tabs: [
              Tab(text: 'Monday'),
              Tab(text: 'Tuesday'),
              Tab(text: 'Wednesday'),
              Tab(text: 'Thursday'),
              Tab(text: 'Friday'),
              Tab(text: 'Saturday'),
              Tab(text: 'Sunday'),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            EventsList(),
            EventsList(),
            EventsList(),
            EventsList(),
            EventsList(),
            EventsList(),
            EventsList(),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: Icon(Icons.add),
        ),
        bottomNavigationBar: BottomNavBar(), // Fixed placement
      ),
    );
  }
}

class EventsList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.all(16.0),
      children: [
        SizedBox(
          height: 200,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              EventCard(
                image: 'lib/images/big_event.jpg',
                title: "Dirty Rave",
                time: "11:00pm",
                location: "The Cabin",
                price: '\$9.00',
                isInterested: true,
              ),
              EventCard(
                image: 'lib/images/dinner.jpg',
                title: "LNUGS Dinner",
                time: "7:30pm",
                location: "Eusbett",
                price: '\$9.00',
                isGoing: true,
              ),
              EventCard(
                image: 'lib/images/couple_love.jpg',
                title: "Couples Night",
                time: "7:30pm",
                location: "Groovys, Sunyani",
                price: '\$9.00',
                isGoing: true,
              ),
            ],
          ),
        ),


        SizedBox(height: 16.0),
        Column(
          children: [
            Text(
              "Events You're Hosting,",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 30,
              ),
            ),
            Text("You're not hosting any events yet."),
          ],
        ),
        SizedBox(height: 20.0),
        /*ElevatedButton(
          onPressed: () {},
          child: Text('Create Public Events'),
          style: ElevatedButton.styleFrom(backgroundColor: Colors.pinkAccent[200]),
        ),

        ElevatedButton(
          onPressed: () {},
          child: Text('Create Private Events'),
          style: ElevatedButton.styleFrom(backgroundColor: Colors.blueAccent),
        ),
        SizedBox(height: 50),*/ // button

        GestureDetector(
          child: Container(
            //onTap:,
            height: 80,
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Create Public Events',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        "Anyone can see the event and search for it",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(width: 32,),

                  Icon(Icons.arrow_forward_ios_rounded, color: Colors.white,),
                ],
              ),
            ),
            decoration: BoxDecoration(
              color: Colors.pink,
            ),
          ),
        ),

        SizedBox(height: 20),

        GestureDetector(
          child: Container(
            //onTap:,
            height: 80,
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Create Private Events',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        "Only invited guests can see this event",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                        ),
                      ),
                    ],
                  ),

                  SizedBox(width: 65,),

                  Icon(Icons.arrow_forward_ios_rounded, color: Colors.white,),
                ],
              ),
            ),
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
          ),
        ),
      ],
    );
  }
}

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blueAccent,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 5, vertical: 10),
        child: GNav(
          backgroundColor: Colors.blueAccent,
          color: Colors.white,
          activeColor: Colors.lightBlue,
          tabBackgroundColor: Colors.white,
          gap: 8, // gap between icons and their text
          //onTabChange: (index){},
          tabs: [
            GButton(
              icon: Icons.home,
              text: "Home",
              onPressed: (){
                Navigator.pushNamed(context, '/home');
              },
            ),
            GButton(
              icon: Icons.search,
              text: "Search",
              onPressed: (){
                Navigator.pushNamed(context, '/search');
              },
            ),
            GButton(
              icon: Icons.calendar_month,
              text: "Events",
              onPressed: (){
                Navigator.pushNamed(context, '/events');
              },
            ),
            GButton(
              icon: Icons.person,
              text: "Profile",
              onPressed: (){
                Navigator.pushNamed(context, '/profile');
              },
            ),
          ],
        ),
      ),
    );
  }
}
