import 'package:ambrosia/style/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Button extends StatelessWidget {
  final ButtonType type;
  final Function onPressed;
  final Color color;
  final Widget text;
  final IconData iconData;
  final Color iconColor;
  Button(
      {@required this.type,
      @required this.onPressed,
      this.iconData = Icons.ac_unit,
      this.color = ThemeColors.primaryBlue,
      this.iconColor = ThemeColors.primaryWhite,
      @required this.text});

  @override
  Widget build(BuildContext context) {
    switch (type) {
      case ButtonType.DEFAULT:
        return FlatButton(
            color: color,
            onPressed: () {
              onPressed();
            },
            child: text);
      case ButtonType.ROUNDED:
        return FlatButton(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50.0),
          ),
          color: color,
          onPressed: () {
            onPressed();
          },
          child: text,
        );
      case ButtonType.WITH_ICON:
        return FlatButton(
          color: color,
          onPressed: () {
            onPressed();
          },
          child: Row(
            mainAxisSize: MainAxisSize.min,

            children: <Widget>[
              Icon(
                iconData,
                color: iconColor,
                size: 24,
              ),
              SizedBox(width: 8,),
              text,
            ],
          ),
        );
      case ButtonType.ICON:
        return FlatButton(
          shape: CircleBorder(),
          color: color,
          onPressed: () {
            onPressed();
          },
          child: Container(
            child: Icon(
              iconData,
              size: 24,
              color: iconColor,
            ),
            margin: EdgeInsets.all(16),
          ),
        );
      case ButtonType.SIMPLE:
        return FlatButton(
          color: Colors.transparent,
          onPressed: () {
            onPressed();
          },
          child: text,
        );
      default:
        return null;
    }
  }
}

enum ButtonType { DEFAULT, ROUNDED, WITH_ICON, ICON, SIMPLE }
