import 'package:flutter/material.dart';

class ChefProfile extends StatefulWidget {
  @override
  _ChefProfileState createState() => _ChefProfileState();
}

class _ChefProfileState extends State<ChefProfile> {
  Color orangeColor = Color(0xFFFC634B);
  Color greyColor = Color(0xFFBDBDBD);
  Color greyTextColor = Color(0xFF989898);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: orangeColor,
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
          Container(
            margin: EdgeInsets.only(top: 190.0),
            color: Colors.white,
          ),
          ListView(
            children: <Widget>[
              Container(
                height: 30.0,
                width: double.infinity,
                color: Colors.transparent,
              ),
              Container(
                margin: EdgeInsets.only(left: 20.0, right: 20.0),
                height: 200.0,
                child: profileUser(),
              ),
              SizedBox(
                height: 20.0,
              ),
              headerSection('Menu'),
              Container(
                height: 100.0,
                width: double.infinity,
                color: Colors.black,
              ),
              Container(
                height: 100.0,
                width: double.infinity,
                color: Colors.blue,
              ),
              Container(
                height: 100.0,
                width: double.infinity,
                color: Colors.red,
              ),
            ],
          ),
          Container(
            height: 110.0,
            width: double.infinity,
            child: AppBar(
              backgroundColor: Colors.transparent,
              elevation: 0.0,
              leading: IconButton(
                icon: Icon(Icons.arrow_back_ios),
                tooltip: 'Back',
                color: Colors.white,
                iconSize: 18.0,
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

  Widget profileUser() {
    return Stack(
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(top: 44.0),
          child: Material(
            elevation: 3.0,
            borderRadius: BorderRadius.circular(7.0),
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(7.0),
                color: Colors.white,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  SizedBox(
                    height: 52.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        'Chris Pratt',
                        style: TextStyle(
                          fontFamily: 'Comfortaa',
                          fontSize: 16.0,
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                      SizedBox(
                        width: 4.0,
                      ),
                      Container(
                        height: 12.0,
                        width: 12.0,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('images/chef.png'),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 4.0,
                  ),
                  Text(
                    'Peru',
                    style: TextStyle(
                      fontFamily: 'Comfortaa',
                      fontSize: 14.0,
                      fontWeight: FontWeight.normal,
                      color: greyTextColor,
                    ),
                  ),
                  SizedBox(
                    height: 8.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      SizedBox(
                        width: 20.0,
                      ),
                      Flexible(
                        flex: 1,
                        child: SizedBox(
                          width: double.infinity,
                          child: FlatButton(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(7.0),
                            ),
                            color: orangeColor,
                            child: Text(
                              'Message',
                              style: TextStyle(
                                fontFamily: 'Comfortaa',
                                fontSize: 13.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                            onPressed: () {},
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 20.0,
                      ),
                      Flexible(
                        flex: 1,
                        child: SizedBox(
                          width: double.infinity,
                          child: FlatButton(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(7.0),
                            ),
                            color: greyColor,
                            child: Text(
                              'Following',
                              style: TextStyle(
                                fontFamily: 'Comfortaa',
                                fontSize: 13.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                            onPressed: () {},
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 20.0,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
        Container(
          alignment: Alignment.topCenter,
          child: Container(
            height: 88.0,
            width: 88.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(44.0),
              image: DecorationImage(
                image: AssetImage('images/chris.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget headerSection(String title) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 20.0,
        right: 20.0,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(
            title,
            style: TextStyle(
              fontFamily: 'Comfortaa',
              fontSize: 16.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            'see all',
            style: TextStyle(
              fontFamily: 'Comfortaa',
              fontSize: 13.0,
              fontWeight: FontWeight.normal,
              color: greyTextColor,
            ),
          ),
        ],
      ),
    );
  }

  Widget menuCard(String title, String imgPath, String type, int rating,
      double views, double likes) {
    return Padding();
  }
}
