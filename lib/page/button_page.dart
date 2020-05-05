import 'package:ambrosia/style/colors.dart';
import 'package:ambrosia/widgets/alert.dart';
import 'package:ambrosia/widgets/button.dart';
import 'package:flutter/material.dart';

class ButtonPage extends StatelessWidget {
  static const routeName = 'buttonPage';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Button'),
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 8),
          child: Column(
            children: <Widget>[
              Wrap(
                spacing: 8.0,
                children: <Widget>[
                  Button(
                      color: ThemeColors.primaryBlack,
                      type: ButtonType.DEFAULT,
                      onPressed: () {},
                      text: Text(
                        'Default',
                        style: TextStyle(color: ThemeColors.primaryWhite),
                      )),
                  Button(
                      color: ThemeColors.primaryBlack,
                      type: ButtonType.WITH_ICON,
                      onPressed: () {},
                      text: Text(
                        'With Icon',
                        style: TextStyle(color: ThemeColors.primaryWhite),
                      )),
                  Button(
                      color: ThemeColors.primaryBlack,
                      type: ButtonType.ICON,
                      onPressed: () {},
                      iconColor: ThemeColors.primaryWhite,
                      text: Text(
                        '',
                        style: TextStyle(color: ThemeColors.primaryWhite),
                      )),
                  Button(
                      color: ThemeColors.primaryBlack,
                      type: ButtonType.ROUNDED,
                      onPressed: () {},
                      text: Text(
                        'Rounded',
                        style: TextStyle(color: ThemeColors.primaryWhite),
                      )),
                  Button(
                      color: ThemeColors.primaryBlack,
                      type: ButtonType.SIMPLE,
                      onPressed: () {},
                      text: Text(
                        'Simple',
                        style: TextStyle(color: ThemeColors.primaryBlack),
                      )),
                ],
              ),
              Wrap(
                spacing: 8.0,
                children: <Widget>[
                  Button(
                      color: ThemeColors.primaryBlue,
                      type: ButtonType.DEFAULT,
                      onPressed: () {},
                      text: Text(
                        'Default',
                        style: TextStyle(color: ThemeColors.primaryWhite),
                      )),
                  Button(
                      color: ThemeColors.primaryBlue,
                      type: ButtonType.WITH_ICON,
                      onPressed: () {},
                      text: Text(
                        'With Icon',
                        style: TextStyle(color: ThemeColors.primaryWhite),
                      )),
                  Button(
                      color: ThemeColors.primaryBlue,
                      type: ButtonType.ICON,
                      onPressed: () {},
                      iconColor: ThemeColors.primaryWhite,
                      text: Text(
                        '',
                        style: TextStyle(color: ThemeColors.primaryWhite),
                      )),
                  Button(
                      color: ThemeColors.primaryBlue,
                      type: ButtonType.ROUNDED,
                      onPressed: () {},
                      text: Text(
                        'Rounded',
                        style: TextStyle(color: ThemeColors.primaryWhite),
                      )),
                  Button(
                      color: ThemeColors.primaryBlue,
                      type: ButtonType.SIMPLE,
                      onPressed: () {},
                      text: Text(
                        'Simple',
                        style: TextStyle(color: ThemeColors.primaryBlue),
                      )),
                ],
              ),
              Wrap(
                spacing: 8.0,
                children: <Widget>[
                  Button(
                      color: ThemeColors.secondaryCyan,
                      type: ButtonType.DEFAULT,
                      onPressed: () {},
                      text: Text(
                        'Default',
                        style: TextStyle(color: ThemeColors.primaryWhite),
                      )),
                  Button(
                      color: ThemeColors.secondaryCyan,
                      type: ButtonType.WITH_ICON,
                      onPressed: () {},
                      text: Text(
                        'With Icon',
                        style: TextStyle(color: ThemeColors.primaryWhite),
                      )),
                  Button(
                      color: ThemeColors.secondaryCyan,
                      type: ButtonType.ICON,
                      onPressed: () {},
                      iconColor: ThemeColors.primaryWhite,
                      text: Text(
                        '',
                        style: TextStyle(color: ThemeColors.primaryWhite),
                      )),
                  Button(
                      color: ThemeColors.secondaryCyan,
                      type: ButtonType.ROUNDED,
                      onPressed: () {},
                      text: Text(
                        'Rounded',
                        style: TextStyle(color: ThemeColors.primaryWhite),
                      )),
                  Button(
                      color: ThemeColors.secondaryCyan,
                      type: ButtonType.SIMPLE,
                      onPressed: () {},
                      text: Text(
                        'Simple',
                        style: TextStyle(color: ThemeColors.secondaryCyan),
                      )),
                ],
              ),
              Wrap(
                spacing: 8.0,
                children: <Widget>[
                  Button(
                      color: ThemeColors.secondaryOrange,
                      type: ButtonType.DEFAULT,
                      onPressed: () {},
                      text: Text(
                        'Default',
                        style: TextStyle(color: ThemeColors.primaryWhite),
                      )),
                  Button(
                      color: ThemeColors.secondaryOrange,
                      type: ButtonType.WITH_ICON,
                      onPressed: () {},
                      text: Text(
                        'With Icon',
                        style: TextStyle(color: ThemeColors.primaryWhite),
                      )),
                  Button(
                      color: ThemeColors.secondaryOrange,
                      type: ButtonType.ICON,
                      onPressed: () {},
                      iconColor: ThemeColors.primaryWhite,
                      text: Text(
                        '',
                        style: TextStyle(color: ThemeColors.primaryWhite),
                      )),
                  Button(
                      color: ThemeColors.secondaryOrange,
                      type: ButtonType.ROUNDED,
                      onPressed: () {},
                      text: Text(
                        'Rounded',
                        style: TextStyle(color: ThemeColors.primaryWhite),
                      )),
                  Button(
                      color: ThemeColors.secondaryOrange,
                      type: ButtonType.SIMPLE,
                      onPressed: () {},
                      text: Text(
                        'Simple',
                        style: TextStyle(color: ThemeColors.secondaryOrange),
                      )),
                ],
              ),
              Wrap(
                spacing: 8.0,
                children: <Widget>[
                  Button(
                      color: ThemeColors.secondaryRed,
                      type: ButtonType.DEFAULT,
                      onPressed: () {},
                      text: Text(
                        'Default',
                        style: TextStyle(color: ThemeColors.primaryWhite),
                      )),
                  Button(
                      color: ThemeColors.secondaryRed,
                      type: ButtonType.WITH_ICON,
                      onPressed: () {},
                      text: Text(
                        'With Icon',
                        style: TextStyle(color: ThemeColors.primaryWhite),
                      )),
                  Button(
                      color: ThemeColors.secondaryRed,
                      type: ButtonType.ICON,
                      onPressed: () {},
                      iconColor: ThemeColors.primaryWhite,
                      text: Text(
                        '',
                        style: TextStyle(color: ThemeColors.primaryWhite),
                      )),
                  Button(
                      color: ThemeColors.secondaryRed,
                      type: ButtonType.ROUNDED,
                      onPressed: () {},
                      text: Text(
                        'Rounded',
                        style: TextStyle(color: ThemeColors.primaryWhite),
                      )),
                  Button(
                      color: ThemeColors.secondaryRed,
                      type: ButtonType.SIMPLE,
                      onPressed: () {},
                      text: Text(
                        'Simple',
                        style: TextStyle(color: ThemeColors.secondaryRed),
                      )),
                ],
              ),
              Wrap(
                spacing: 8.0,
                children: <Widget>[
                  Button(
                      color: ThemeColors.secondaryYellow,
                      type: ButtonType.DEFAULT,
                      onPressed: () {},
                      text: Text(
                        'Default',
                        style: TextStyle(color: ThemeColors.primaryBlack),
                      )),
                  Button(
                      color: ThemeColors.secondaryYellow,
                      type: ButtonType.WITH_ICON,
                      onPressed: () {},
                      text: Text(
                        'With Icon',
                        style: TextStyle(color: ThemeColors.primaryBlack),
                      )),
                  Button(
                      color: ThemeColors.secondaryYellow,
                      type: ButtonType.ICON,
                      onPressed: () {},
                      iconColor: ThemeColors.primaryWhite,
                      text: Text(
                        '',
                        style: TextStyle(color: ThemeColors.primaryBlack),
                      )),
                  Button(
                      color: ThemeColors.secondaryYellow,
                      type: ButtonType.ROUNDED,
                      onPressed: () {},
                      text: Text(
                        'Rounded',
                        style: TextStyle(color: ThemeColors.primaryBlack),
                      )),
                  Button(
                      color: ThemeColors.secondaryYellow,
                      type: ButtonType.SIMPLE,
                      onPressed: () {},
                      text: Text(
                        'Simple',
                        style: TextStyle(color: ThemeColors.secondaryYellow),
                      )),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
