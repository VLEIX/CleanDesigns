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
          tooltip: 'Back',
          color: Colors.black,
          iconSize: 17.0,
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            tooltip: 'Search',
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
          ),
          SizedBox(
            height: 15.0,
          ),
          firstStyleRow(
            'images/cone.jpeg',
            'images/letter.jpeg',
            'images/chris.jpg',
            'Chris Pratt',
            '10:51 PM',
            'I like the way to place Items to show more information',
          ),
          SizedBox(
            height: 10.0,
          ),
          secondStyleRow(
            'images/window.jpeg',
            'images/cactus.jpeg',
            'images/tomcruise.jpg',
            'Tom Cruise',
            '10:40 PM',
            'I like the way to place Items to show more information',
          ),
          thirdStyleRow(
            'images/hugh.jpg',
            'Hugh Jackman',
            '9:30 PM',
            'I like the way to place Items to show more information',
            'images/johnnydepp.jpg',
            'Johnny Depp',
            '9:24 PM',
            'I like the way to place Items to show more information',
          ),
          SizedBox(
            height: 10.0,
          ),
          firstStyleRow(
            'images/cone.jpeg',
            'images/letter.jpeg',
            'images/chris.jpg',
            'Chris Pratt',
            '10:51 PM',
            'I like the way to place Items to show more information',
          ),
          SizedBox(
            height: 10.0,
          ),
          secondStyleRow(
            'images/window.jpeg',
            'images/cactus.jpeg',
            'images/tomcruise.jpg',
            'Tom Cruise',
            '10:40 PM',
            'I like the way to place Items to show more information',
          ),
          thirdStyleRow(
            'images/hugh.jpg',
            'Hugh Jackman',
            '9:30 PM',
            'I like the way to place Items to show more information',
            'images/johnnydepp.jpg',
            'Johnny Depp',
            '9:24 PM',
            'I like the way to place Items to show more information',
          ),
          SizedBox(
            height: 10.0,
          ),
          firstStyleRow(
            'images/cone.jpeg',
            'images/letter.jpeg',
            'images/chris.jpg',
            'Chris Pratt',
            '10:51 PM',
            'I like the way to place Items to show more information',
          ),
          SizedBox(
            height: 10.0,
          ),
          secondStyleRow(
            'images/window.jpeg',
            'images/cactus.jpeg',
            'images/tomcruise.jpg',
            'Tom Cruise',
            '10:40 PM',
            'I like the way to place Items to show more information',
          ),
          thirdStyleRow(
            'images/hugh.jpg',
            'Hugh Jackman',
            '9:30 PM',
            'I like the way to place Items to show more information',
            'images/johnnydepp.jpg',
            'Johnny Depp',
            '9:24 PM',
            'I like the way to place Items to show more information',
          ),
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

  Widget infoUser(
      String imgAvatar, String name, String hour, String description) {
    return Container(
      height: 100.0,
      padding: EdgeInsets.all(5.0),
      child: Column(
        children: <Widget>[
          Text(
            description,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.left,
            maxLines: 2,
            style: TextStyle(
              fontFamily: 'Montserrat',
            ),
          ),
          SizedBox(
            height: 10.0,
          ),
          Row(
            children: <Widget>[
              Container(
                height: 30.0,
                width: 30.0,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.0),
                    image: DecorationImage(
                      image: AssetImage(imgAvatar),
                      fit: BoxFit.cover,
                    )),
              ),
              SizedBox(
                width: 10.0,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    name,
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontFamily: 'Montserrat',
                      fontSize: 14.0,
                      fontWeight: FontWeight.w600,
                      color: Colors.orange,
                    ),
                  ),
                  Text(
                    hour,
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontFamily: 'Montserrat',
                      color: Colors.grey,
                    ),
                  )
                ],
              )
            ],
          ),
        ],
      ),
    );
  }

  Widget imageRounded(String path, double height) {
    return Container(
      height: height,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        image: DecorationImage(
          image: AssetImage(path),
          fit: BoxFit.cover,
        ),
      ),
    );
  }

  Widget firstStyleRow(String imgPath1, String imgPath2, String imgAvatar,
      String name, String hour, String description) {
    return Container(
      padding: EdgeInsets.only(
        left: 10.0,
        right: 10.0,
      ),
      child: Row(
        children: <Widget>[
          Flexible(
            flex: 1,
            child: Container(
              child: Column(
                children: <Widget>[
                  imageRounded(
                    imgPath1,
                    160.0,
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  infoUser(
                    imgAvatar,
                    name,
                    hour,
                    description,
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            width: 10.0,
          ),
          Flexible(
            flex: 1,
            child: imageRounded(
              imgPath2,
              270.0,
            ),
          ),
        ],
      ),
    );
  }

  Widget secondStyleRow(String imgPath1, String imgPath2, String imgAvatar,
      String name, String hour, String description) {
    return Container(
      padding: EdgeInsets.only(
        left: 10.0,
        right: 10.0,
      ),
      child: Row(
        children: <Widget>[
          Flexible(
            flex: 1,
            child: imageRounded(
              imgPath2,
              270.0,
            ),
          ),
          SizedBox(
            width: 10.0,
          ),
          Flexible(
            flex: 1,
            child: Container(
              child: Column(
                children: <Widget>[
                  infoUser(
                    imgAvatar,
                    name,
                    hour,
                    description,
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  imageRounded(
                    imgPath1,
                    160.0,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget thirdStyleRow(
      String imgAvatar1,
      String name1,
      String hour1,
      String description1,
      String imgAvatar2,
      String name2,
      String hour2,
      String description2) {
    return Container(
      padding: EdgeInsets.only(
        left: 10.0,
        right: 10.0,
      ),
      child: Row(
        children: <Widget>[
          Flexible(
            flex: 1,
            child: infoUser(imgAvatar1, name1, hour1, description1),
          ),
          SizedBox(
            width: 10.0,
          ),
          Flexible(
            flex: 1,
            child: infoUser(imgAvatar2, name2, hour2, description2),
          ),
        ],
      ),
    );
  }
}
