import 'package:flutter/material.dart';
//import 'package:image_picker/image_picker.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
      ),

      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: Column(
            children: [
              Image.asset('lib/images/couple_love.jpg', height: 100,),
              Text(
                "John Doe",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                ),
              ),
              Text("Event Planner"),

              SizedBox(height: 30,),
              Row(
                children: [
                  SizedBox(width: 40,),
                  Container(
                    child: Column(
                      children: [
                        Text("10"),
                        Text("Events Attended"),
                      ],
                    ),
                  ),
                  SizedBox(width: 100,),
                  Container(
                    child: Column(
                      children: [
                        Text("9"),
                        Text("Events Planned"),
                      ],
                    ),
                  ),
                ],
              ),

              SizedBox(height: 80,),

              Container(
                child: Column(
                  children: [
                    Row(
                      children: [
                        SizedBox(width: 10,),
                        Icon(Icons.person_2_rounded),SizedBox(width: 30,),
                        Text("My Account", style: TextStyle(fontSize: 21),),
                        SizedBox(width: 170,),
                        Icon(Icons.arrow_forward_ios_rounded)
                      ],
                    ),

                    SizedBox(height: 60,),

                    Row(
                      children: [
                        SizedBox(width: 10,),
                        Icon(Icons.lock),
                        SizedBox(width: 30,),
                        Text("Change Password", style: TextStyle(fontSize: 21),),
                        SizedBox(width: 115,),
                        Icon(Icons.arrow_forward_ios_rounded)
                      ],
                    ),

                    SizedBox(height: 60,),

                    Row(
                      children: [
                        SizedBox(width: 10,),
                        Icon(Icons.document_scanner),
                        SizedBox(width: 30,),
                        Text("Events You Are Planning", style: TextStyle(fontSize: 21),),
                        SizedBox(width: 55,),
                        Icon(Icons.arrow_forward_ios_rounded)
                      ],
                    ),

                    SizedBox(height: 60,),

                    Row(
                      children: [
                        SizedBox(width: 10,),
                        Icon(Icons.logout),
                        SizedBox(width: 30,),
                        Text("Log Out", style: TextStyle(fontSize: 21),),
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
