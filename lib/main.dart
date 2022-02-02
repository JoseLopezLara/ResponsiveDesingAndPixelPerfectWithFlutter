import 'package:flutter/material.dart';
import 'package:pixel_perfect/pixel_perfect.dart';

const iconsPath = 'assets/icons/';
const imagePath = 'assets/images/';

///MockUp dimension
const mockUpHeight = 812;
const mockUpWidth = 375;

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Social Media Profile Screen',
      home: ProfileScreen(),
    );
  }
}

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ///Firs step
    final width = MediaQuery.of(context).size.width;
    final scale = mockUpWidth / width;
    final textScaleFactor = width /mockUpWidth;

    return PixelPerfect(
      ///Second step
      scale: scale,
      assetPath: imagePath + 'profile_light.jpeg',
      child: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 9.0, horizontal: 9.0),
          child: Scaffold(
            body: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 40),
                Row(
                  children: [
                    ///Third step
                    ///Use scale parameter to make the responsive image
                    Image.asset(imagePath + 'avatar.png', scale: scale,),
                    for (var stats in userStats)...[
                      ///Fourth step
                      SizedBox(width: stats.leftPaddingFactor / mockUpWidth * width,),
                      Column(
                        children: [
                          ///Fifth step
                          Text(stats.value.toString(), textScaleFactor: textScaleFactor,
                            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.5),
                          ),
                          ///Sixth step
                          Text(stats.name, style: TextStyle(fontSize: 14),textScaleFactor: textScaleFactor)
                        ],
                      )
                    ]
                  ],
                )
              ],
            ),
          ),
        ),
      )
    );
  }
}

///Stats Object
class UserStats {
  final int value;
  final String name;
  final double leftPaddingFactor;

  UserStats({
    required this.leftPaddingFactor,
    required this.value,
    required this.name,
  });
}

///This map representing a request from database
final userStats = [
  UserStats(
    leftPaddingFactor: 41,
    value: 210,
    name: 'post',
  ),
  UserStats(
    leftPaddingFactor: 42,
    value: 600,
    name: 'follower',
  ),
  UserStats(
    leftPaddingFactor: 25,
    value: 500,
    name: 'following',
  ),
];

