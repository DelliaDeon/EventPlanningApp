import 'package:flutter/material.dart';
import 'package:event_planning_app/components/event_card.dart';

class EventsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Events'),
      ),
      body: ListView(
        padding: EdgeInsets.all(16.0),
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
            image: 'lib/images/big_event.jpg',
            title: "Dirty Rave",
            time: "11:00pm",
            location: "The Cabin",
            price: '\$9.00',
            isInterested: true,
          ),
          EventCard(
            image: 'lib/images/big_event.jpg',
            title: "Dirty Rave",
            time: "11:00pm",
            location: "The Cabin",
            price: '\$9.00',
            isInterested: true,
          ),
          EventCard(
            image: 'lib/images/big_event.jpg',
            title: "Dirty Rave",
            time: "11:00pm",
            location: "The Cabin",
            price: '\$9.00',
            isInterested: true,
          ),
          EventCard(
            image: 'lib/images/big_event.jpg',
            title: "Dirty Rave",
            time: "11:00pm",
            location: "The Cabin",
            price: '\$9.00',
            isInterested: true,
          ),
        ],
      ),
    );
  }
}
