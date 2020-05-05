import 'package:ambrosia/style/colors.dart';
import 'package:flutter/material.dart';

import '../button.dart';

class OptionCard extends StatelessWidget {
  final Color actionColor;
  final String title, body, option1, option2;
  OptionCard({
    this.actionColor,
    this.title,
    this.body,
    this.option1,
    this.option2,
  });
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        constraints: BoxConstraints(minWidth: 140),
        decoration:
            BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(8.0))),
        child: Column(
          children: <Widget>[
            Container(
              margin: EdgeInsets.all(8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    title,
                    style: TextStyle(fontWeight: FontWeight.w900, fontSize: 18),
                  ),
                  Container(
                    constraints: BoxConstraints(minWidth: 140),
                    child: Text(body),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Row(
                    children: <Widget>[
                      Button(
                        onPressed: () {},
                        text: Text(
                          option1,
                          style: TextStyle(color: actionColor),
                        ),
                        type: ButtonType.SIMPLE,
                      ),
                      Button(
                        onPressed: () {},
                        text: Text(
                          option2,
                          style: TextStyle(color: actionColor),
                        ),
                        type: ButtonType.SIMPLE,
                      ),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
