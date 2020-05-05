import 'package:flutter/material.dart';

import '../button.dart';

class ImageActionCard extends StatelessWidget {
  final Image provider;
  final Color color, actionColor;
  final String action, title, body;
  final CardType type;
  final Widget feature;
  ImageActionCard(
      {this.action,
      this.actionColor,
      this.body,
      this.color,
      this.feature,
      this.provider,
      this.title,
      @required this.type});
  @override
  Widget build(BuildContext context) {
    if (feature == null) {
      if (type == CardType.VERTICAL)
        return Card(
          child: Container(
            constraints: BoxConstraints(minWidth: 140,),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(8.0))),
            child: Column(
              children: <Widget>[
                provider,
                Container(
                  margin: EdgeInsets.all(8),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        title,
                        style: TextStyle(
                            fontWeight: FontWeight.w900, fontSize: 18),
                      ),
                      Container(
                        constraints: BoxConstraints(minWidth: 140),
                        child: Text(body),
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      Button(
                        onPressed: () {},
                        color: color,
                        text: Text(
                          action,
                          style: TextStyle(color: actionColor),
                        ),
                        type: ButtonType.DEFAULT,
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        );
      else
        return Card(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            constraints: BoxConstraints(minHeight: 100),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(8.0))),
            child: Row(
              children: <Widget>[
                Flexible(child: provider,flex: 2,),
                Flexible(
                  flex: 6,
                  child: Container(
                    margin: EdgeInsets.all(8),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          title,
                          style: TextStyle(
                              fontWeight: FontWeight.w900, fontSize: 18),
                        ),
                        Container(
                          constraints:
                              BoxConstraints(minWidth: 140, maxWidth: 220),
                          child: Text(body.length > 100
                              ? body.substring(0, 100)
                              : body),
                        ),
                        SizedBox(
                          height: 16,
                        ),
                      ],
                    ),
                  ),
                ),
                Flexible(
                  flex: 2,
                  child: Button(
                    onPressed: () {},
                    color: color,
                    text: Text(
                      action,
                      style: TextStyle(color: actionColor),
                    ),
                    type: ButtonType.DEFAULT,
                  ),
                ),
              ],
            ),
          ),
        );
    } else {
      if (type == CardType.VERTICAL)
        return Stack(
          children: <Widget>[
            Container(
              margin: EdgeInsets.symmetric(vertical: 16),
              child: Card(
                child: Container(
                  constraints: BoxConstraints(minWidth: 140),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(8.0))),
                  child: Column(
                    children: <Widget>[
                      provider,
                      Container(
                        margin: EdgeInsets.all(8),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              title,
                              style: TextStyle(
                                  fontWeight: FontWeight.w900, fontSize: 18),
                            ),
                            Container(
                              constraints: BoxConstraints(minWidth: 140),
                              child: Text(body),
                            ),
                            SizedBox(
                              height: 16,
                            ),
                            Button(
                              onPressed: () {},
                              color: color,
                              text: Text(
                                action,
                                style: TextStyle(color: actionColor),
                              ),
                              type: ButtonType.DEFAULT,
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
             Positioned(
              child: feature,
              top: 0,
              left: 16,
              right: 16,
            ),
          ],
        );
      else
        return Stack(
          children: <Widget>[
            Container(
              margin: EdgeInsets.symmetric(vertical: 16),
              child: Card(
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  constraints: BoxConstraints(minHeight: 100),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(8.0))),
                  child: Row(
                    children: <Widget>[
                      provider,
                      Flexible(
                        flex: 6,
                        child: Container(
                          margin: EdgeInsets.all(8),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                title,
                                style: TextStyle(
                                    fontWeight: FontWeight.w900, fontSize: 18),
                              ),
                              Container(
                                constraints: BoxConstraints(
                                    minWidth: 140, maxWidth: 220),
                                child: Text(body.length > 100
                                    ? body.substring(0, 100)
                                    : body),
                              ),
                              SizedBox(
                                height: 16,
                              ),
                            ],
                          ),
                        ),
                      ),
                      Flexible(
                        flex: 2,
                        child: Button(
                          onPressed: () {},
                          color: color,
                          text: Text(
                            action,
                            style: TextStyle(color: actionColor),
                          ),
                          type: ButtonType.DEFAULT,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
              child: feature,
              top: 0,
              right: 16,
            )
          ],
        );
    }
  }
}

enum CardType { HORIZONTAL, VERTICAL }
