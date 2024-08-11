import 'package:flutter/material.dart';

class EventCard extends StatelessWidget{
  final String image;
  final String title;
  final String time;
  final String location;
  final String price;
  final bool isInterested;
  final bool isGoing;

  EventCard({
    required this.image,
    required this.title,
    required this.time,
    required this.location,
    required this.price,
    this.isInterested = false,
    this.isGoing = false,
  });

  @override
  Widget build(BuildContext context){
    return Card(
      child: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            Row(
              children: [
                Image.asset(image, height: 150,),
                SizedBox(width: 20,),

                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(title, style: Theme.of(context).textTheme.headlineMedium,),
                    SizedBox(height: 10,),
                    Text(time, style: TextStyle(fontSize: 16,),),
                    SizedBox(height: 10,),
                    Text(location, style: TextStyle(fontSize: 20,),),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(price),
                        if(isInterested)
                          TextButton(
                            onPressed: (){},
                            child: Text('Interested'),
                          ),
                        if(isGoing)
                          TextButton(
                            onPressed: (){},
                            child: Text('Going'),
                          ),
                      ],
                    )
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

}