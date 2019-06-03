import 'package:flutter/material.dart';

class Minimal extends StatefulWidget {
  @override
  _MinimalState createState() => _MinimalState();
}

class _MinimalState extends State<Minimal> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
        title: Text('EXPLORE',
            style: TextStyle(
              fontFamily: 'Montserrat',
              fontSize: 15.0,
              color: Colors.black,
            )),
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          color: Colors.black,
          iconSize: 17.0,
          onPressed: () {},
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            color: Colors.black,
            iconSize: 17.0,
            onPressed: () {},
          ),
        ],
      ),
      body: ListView(
        padding: EdgeInsets.only(top: 15.0, bottom: 15.0),
        children: <Widget>[
          Container(
            height: 125.0,
            width: double.infinity,
            child: ListView(
              scrollDirection: Axis.horizontal,
              padding: EdgeInsets.all(10.0),
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Container(
                      height: 70.0,
                      width: 70.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(35.0),
                        color: Colors.orange,
                      ),
                      child: IconButton(
                        icon: Icon(Icons.add),
                        color: Colors.white,
                        onPressed: () {},
                      ),
                    ),
                    SizedBox(
                      height: 7.0,
                    ),
                    Text(
                      'Add To',
                      style: TextStyle(
                        fontFamily: 'Montserrat',
                        fontSize: 14.0,
                        fontWeight: FontWeight.w600,
                      ),
                    )
                  ],
                ),
                SizedBox(
                  width: 25.0,
                ),
                listItem(
                  'images/chris.jpg',
                  'Chris',
                  true,
                ),
                SizedBox(
                  width: 25.0,
                ),
                listItem(
                  'images/hugh.jpg',
                  'Hugh',
                  false,
                ),
                SizedBox(
                  width: 25.0,
                ),
                listItem(
                  'images/johnnydepp.jpg',
                  'Johnny',
                  true,
                ),
                SizedBox(
                  width: 25.0,
                ),
                listItem(
                  'images/tomcruise.jpg',
                  'Tom',
                  true,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget listItem(String imgPath, String name, bool available) {
    return Column(
      children: <Widget>[
        Container(
          height: 70.0,
          width: 70.0,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(35.0),
            image: DecorationImage(
              image: AssetImage(imgPath),
              fit: BoxFit.cover,
            ),
          ),
        ),
        SizedBox(
          height: 7.0,
        ),
        Row(
          children: <Widget>[
            Text(
              name,
              style: TextStyle(
                fontFamily: 'Montserrat',
                fontSize: 14.0,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(
              width: 4.0,
            ),
            available
                ? Container(
                    height: 10.0,
                    width: 10.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5.0),
                      color: Colors.orange,
                    ),
                  )
                : Container(),
          ],
        )
      ],
    );
  }
}
