import 'package:flutter/material.dart';

class SearchScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Search'),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 6.0),
        child: Container(
          child: Column(
            children: [
              SizedBox(height: 10,),
              TextField(
                decoration: InputDecoration(
                  hintText: "Search",
                ),
              ),
            ],
          ),
        ),
      )
    );
  }
}
