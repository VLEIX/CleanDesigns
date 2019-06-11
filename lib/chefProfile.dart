import 'package:flutter/material.dart';

class ChefProfile extends StatefulWidget {
  @override
  _ChefProfileState createState() => _ChefProfileState();
}

class _ChefProfileState extends State<ChefProfile> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: <Widget>[
        Scaffold(
          body: ListView(
            children: <Widget>[
              Stack(
                children: <Widget>[
                  Container(
                    height: 350.0,
                    width: double.infinity,
                  ),
                  Container(
                    height: 200.0,
                    width: double.infinity,
                    color: Color(0xFFFA624F),
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: IconButton(
                      icon: Icon(Icons.arrow_back_ios),
                      color: Colors.white,
                      iconSize: 18.0,
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                  ),
                ],
              )
            ],
          ),
        )
      ],
    );
  }
}
