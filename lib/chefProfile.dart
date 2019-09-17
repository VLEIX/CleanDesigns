import 'package:flutter/material.dart';

class ChefProfile extends StatefulWidget {
  @override
  _ChefProfileState createState() => _ChefProfileState();
}

class _ChefProfileState extends State<ChefProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFC634B),
      body: Stack(
        children: <Widget>[
          Opacity(
            opacity: 0.2,
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('images/food_pattern.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          ListView(
            children: <Widget>[
              Container(
                height: 100.0,
                width: double.infinity,
                color: Colors.transparent,
              ),
              Container(
                height: 100.0,
                width: double.infinity,
                color: Colors.black,
              ),
              Container(
                height: 100.0,
                width: double.infinity,
                color: Colors.white,
              ),
              Container(
                height: 100.0,
                width: double.infinity,
                color: Colors.black,
              ),
              Container(
                height: 100.0,
                width: double.infinity,
                color: Colors.white,
              ),
              Container(
                height: 100.0,
                width: double.infinity,
                color: Colors.black,
              ),
              Container(
                height: 100.0,
                width: double.infinity,
                color: Colors.white,
              ),
              Container(
                height: 100.0,
                width: double.infinity,
                color: Colors.black,
              ),
              Container(
                height: 100.0,
                width: double.infinity,
                color: Colors.white,
              ),
              Container(
                height: 100.0,
                width: double.infinity,
                color: Colors.black,
              ),
              Container(
                height: 100.0,
                width: double.infinity,
                color: Colors.white,
              ),
              Container(
                height: 100.0,
                width: double.infinity,
                color: Colors.green,
              ),
            ],
          ),
          Container(
            height: 80.0,
            width: double.infinity,
            child: AppBar(
              backgroundColor: Colors.transparent,
              elevation: 0.0,
              leading: IconButton(
                icon: Icon(Icons.arrow_back_ios),
                tooltip: 'Back',
                color: Colors.white,
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ),
          )
        ],
      ),
    );
  }
}
