import 'package:ambrosia/style/colors.dart';
import 'package:ambrosia/widgets/alert.dart';
import 'package:flutter/material.dart';

class AlertPage extends StatelessWidget {
  static const routeName = 'alertPage';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Alert'),),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 8),
          child: Wrap(
            children: <Widget>[
              Alert(
                color: ThemeColors.primaryBlack,
                actionColor: ThemeColors.primaryWhite,
                option1: 'YES',
                body:
                    'Danger! Indicates a dangerous or potentially negative action.',
                title: 'This is alert!',
                option2: 'NO',
              ),
              Alert(
                color: ThemeColors.primaryBlue,
                actionColor: ThemeColors.primaryWhite,
                option1: 'YES',
                body:
                    'Danger! Indicates a dangerous or potentially negative action.',
                title: 'This is alert!',
                option2: 'NO',
              ),
              Alert(
                color: ThemeColors.primaryWhite,
                actionColor: ThemeColors.primaryBlack,
                option1: 'YES',
                body:
                    'Danger! Indicates a dangerous or potentially negative action.',
                title: 'This is alert!',
                option2: 'NO',
              ),
              Alert(
                color: ThemeColors.secondaryCyan,
                actionColor: ThemeColors.primaryBlack,
                option1: 'YES',
                body:
                    'Danger! Indicates a dangerous or potentially negative action.',
                title: 'This is alert!',
                option2: 'NO',
              ),
              Alert(
                color: ThemeColors.secondaryOrange,
                actionColor: ThemeColors.primaryWhite,
                option1: 'YES',
                body:
                    'Danger! Indicates a dangerous or potentially negative action.',
                title: 'This is alert!',
                option2: 'NO',
              ),
              Alert(
                color: ThemeColors.secondaryRed,
                actionColor: ThemeColors.primaryWhite,
                option1: 'YES',
                body:
                    'Danger! Indicates a dangerous or potentially negative action.',
                title: 'This is alert!',
                option2: 'NO',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
