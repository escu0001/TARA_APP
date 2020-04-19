import 'package:tara_app/screens/authenticate/exhibition_bottom_sheet.dart';
import 'package:tara_app/screens/authenticate/sliding_cards.dart';
import 'package:tara_app/screens/main.dart';
import 'package:flutter/material.dart';

import 'exhibition_bottom_sheet.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: <Widget>[
          SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SizedBox(height: 8),
                Header(),
                SizedBox(height: 40),
                
                SizedBox(height: 8),
                SlidingCardsView(),
              ],
            ),
          ),
          ExhibitionBottomSheet(), //use this or ScrollableExhibitionSheet
        ],
      ),
    );
  }
}

class Header extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 32, vertical:7),
      child: Text(
        'Welcome Back, User',
        style: TextStyle(
          fontSize: 30,
          fontWeight: FontWeight.w200,
          fontFamily: 'Roboto'
        ),
      ),
    );
  }
}
