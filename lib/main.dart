import 'package:flutter/material.dart';
import 'package:pixel_perfect/pixel_perfect.dart';

const iconsPath = 'assets/icons/';
const imagePath = 'assets/images/';

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
    return PixelPerfect(
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
                      Image.asset(imagePath + 'avatar.png')
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
    leftPaddingFactor: 41,
    value: 600,
    name: 'follower',
  ),
  UserStats(
    leftPaddingFactor: 24,
    value: 500,
    name: 'following',
  ),
];

