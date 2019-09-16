import 'package:flutter/material.dart';

class ChefProfile extends StatefulWidget {
  @override
  _ChefProfileState createState() => _ChefProfileState();
}

class _ChefProfileState extends State<ChefProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Positioned(
            height: 44.0,
            child: AppBar(
              title: Text('dsd'),
              backgroundColor: Colors.red,
              elevation: 0.0,
              leading: IconButton(
                icon: Icon(Icons.arrow_back_ios),
                tooltip: 'Back',
                color: Colors.black,
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('images/food_pattern.png'),
                fit: BoxFit.fill,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
