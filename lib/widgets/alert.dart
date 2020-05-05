import 'package:ambrosia/style/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'button.dart';

class Alert extends StatelessWidget {
  final Color color, actionColor;
  final String option1, option2, title, body;

  Alert({
    @required this.color,
    this.actionColor = ThemeColors.primaryBlue,
    @required this.option1,
    @required this.title,
    @required this.body,
    @required this.option2,
  });
  @override
  Widget build(BuildContext context) {
    return Builder(
      builder: (BuildContext ctx) {
        return Container(
          margin: EdgeInsets.all(8),
          child: Wrap(
            children: <Widget>[
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(8.0)),
                  color: color,
                ),
                padding: EdgeInsets.only(left: 16),
                child: Container(
                  color: ThemeColors.primaryWhite,
                  padding: EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        title,
                        style: TextStyle(
                            fontWeight: FontWeight.w900, fontSize: 18),
                      ),
                      Text(body),
                      Row(
                        // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          Button(
                            onPressed: () {},
                            color: color,
                            text: Text(
                              option1,
                              style: TextStyle(color: actionColor),
                            ),
                            type: ButtonType.DEFAULT,
                          ),
                          SizedBox(
                            width: 16,
                          ),
                          Button(
                            onPressed: () {},
                            color: color,
                            text: Text(
                              option2,
                              style: TextStyle(color: actionColor),
                            ),
                            type: ButtonType.DEFAULT,
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
