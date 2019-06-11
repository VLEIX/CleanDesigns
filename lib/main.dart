import 'package:flutter/material.dart';
import 'minimal.dart';
import 'chefProfile.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final List<String> topics = [
    'Minimal',
    'Chef Profile',
    'Hairstylist',
    'Gourmet takeaway',
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Clean Designs',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Clean Designs'),
        ),
        body: ListView.builder(
          itemCount: topics.length,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text(topics[index]),
              onTap: () {
                switch (index) {
                  case 0:
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Minimal()),
                    );
                    break;
                  case 1:
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ChefProfile()),
                    );
                    break;
//                  case 2:
//                    Navigator.push(
//                      context,
//                      MaterialPageRoute(builder: (context) => ListItems()),
//                    );
//                    break;
                }
              },
            );
          },
        ),
      ),
    );
  }
}
