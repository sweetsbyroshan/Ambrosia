import 'package:ambrosia/style/colors.dart';
import 'package:ambrosia/widgets/badges.dart';
import 'package:flutter/material.dart';

class BadgePage extends StatelessWidget {
  static const routeName = 'badgePage';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Badge'),
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 8),
          child: Row(
            children: <Widget>[
              Badges(
                color: ThemeColors.primaryBlack,
                text: '1',
              ),
              Badges(
                color: ThemeColors.primaryBlue,
                text: '1',
              ),
              Badges(
                color: ThemeColors.secondaryCyan,
                text: '1',
              ),
              Badges(
                color: ThemeColors.secondaryOrange,
                text: '1',
              ),
              Badges(
                color: ThemeColors.secondaryRed,
                text: '1',
              ),
              Badges(
                color: ThemeColors.secondaryYellow,
                text: '1',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
