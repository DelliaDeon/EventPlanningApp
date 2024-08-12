import 'package:flutter/material.dart';

class SearchScreen extends StatelessWidget {
  void updateList(String value){
    // this is the function that will filter our list

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Search for an Event'),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 6.0),
        child: Container(
          child: Column(
            children: [
              SizedBox(height: 10,),
              TextField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Color(0xff302360),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8.0),
                    borderSide: BorderSide.none,
                  ),
                  hintText: "Search, eg: Dirty Rave, Weddings",
                  prefixIcon: Icon(Icons.search),
                  prefixIconColor: Colors.purple.shade900,
                ),
              ),
              SizedBox(height: 20,),
              Expanded(
                child: ListView(),
              ),
            ],
          ),
        ),
      )
    );
  }
}
