import 'package:ambrosia/style/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Badges extends StatefulWidget {
  final Color color;
  String text = '';
  Badges({this.color, this.text = ''});

  @override
  _BadgesState createState() => _BadgesState();
}

class _BadgesState extends State<Badges> {
  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(minWidth: 40, minHeight: 40),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: widget.color,
      ),
      child: Center(
        child: Text(
          widget.text,
          style: TextStyle(
              fontSize: 16,
              color: widget.color == ThemeColors.secondaryYellow
                  ? ThemeColors.primaryBlack
                  : ThemeColors.primaryWhite),
        ),
      ),
    );
  }

  void update(text) {
    setState(() {
      widget.text = text;
    });
  }
}
