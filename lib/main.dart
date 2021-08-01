import 'dart:ui';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}
class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: <Widget>[
            Container(
              height: MediaQuery.of(context).size.height / 2.5,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage('assets/images/hunza1.jpg'),
                  fit: BoxFit.fill,
                ),
                  border: Border.symmetric(horizontal: BorderSide.none,
                  ),
                  borderRadius: BorderRadius.circular(12),
                ),
            ),
            SizedBox(height: 40,),
            Padding(padding: const EdgeInsets.only(left: 20,right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Text('Hunza Valley',
                      style:TextStyle(
                          fontSize: 21 ,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'STIX_Two_Text',
                      ),
                      ),
                      SizedBox(height: 5,),
                      Text('Gilgit Baldistan, Pakistan',
                      style: TextStyle(
                        fontSize: 11,
                        fontWeight: FontWeight.normal,
                        fontFamily: 'STIX_Two_Text',
                      ),
                        ),
                    ],
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.star_outlined,
                        color: Colors.deepOrange,
                      ),
                      Text(
                        '41',
                      style: TextStyle(
                        fontSize: 20,
                      ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 40,),
            Padding(padding: const EdgeInsets.only(left: 10,right: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
            children: [
              IconButton(
                onPressed: () {
                  showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return SimpleDialog(
                          title: Text('Contact number'),
                          children: [
                            SimpleDialogOption(
                              onPressed: () =>
                                  Navigator.pop(context,' '),
                              child: Text('+92 3326623300'),
                            ),
                          ],
                        );
                      }
                      );
                  print('button pressed');
                  },
                icon: Icon(
                  Icons.call,
                  color: Colors.blue,
                 size: 30,
                ),
                iconSize: 30,
              ),
              Text(
                'CALL',
                style: TextStyle(
                  color: Colors.blue,
                ),
              ),
            ],
                  ),
                  Column(
                    children: [
                      IconButton(
                        onPressed: () {
                          showDialog(
                              context: context,
                              builder: (BuildContext context) {
                                return SimpleDialog(
                                  title: Text('Route Direction'),
                                  children: [
                                    SimpleDialogOption(
                                      onPressed: () =>
                                          Navigator.pop(context,' '),
                                      child: Text('Tap again for the Directions'),
                                    ),
                                  ],
                                );
                              }
                          );
                          print('button pressed');
                        },
                        icon: Icon(
                          Icons.near_me,
                          color: Colors.blue,
                          size: 30,
                        ),
                        iconSize: 30,
                      ),
                      Text(
                        'ROUTE',
                        style: TextStyle(
                          color: Colors.blue,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      IconButton(
                        onPressed: () {
                          showDialog(
                              context: context,
                              builder: (BuildContext context) {
                                return SimpleDialog(
                                  title: Text('Share location with Friends'),
                                  children: [
                                    SimpleDialogOption(
                                      onPressed: () =>
                                          Navigator.pop(context,' '),
                                      child: Text('Tap for more options'),
                                    ),
                                  ],
                                );
                              }
                          );
                        },
                        icon: Icon(
                          Icons.share,
                          color: Colors.blue,
                          size: 30,
                        ),
                        iconSize: 30,
                      ),
                      Text(
                        'SHARE',
                        style: TextStyle(
                          color: Colors.blue,
                        ),
                      ),
                    ],
                  ),
                ],
            ),
            ),
            SizedBox(height: 40,),
            Padding(padding: const EdgeInsets.only(right: 20,left: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(

                    child: Text('Hunza is among the most beautiful areas of Pakistan.'
                        'It is surrounded by several high peaks including Rakaposhi,'
                        ' Ladyfinger peak and Hunza peak. Hunza was previously a princely'
                        ' state which survived until 1974 and was dissolved by '
                        'Zulfiqar Ali Bhutto. Its capital was the town of Baltit also known'
                        ' as Karimabad.'),
                    width: MediaQuery.of(context).size.width - 100,
                  ),
                ],
              ),
            ),
          ]
        ),
      ),
    );
  }
}
