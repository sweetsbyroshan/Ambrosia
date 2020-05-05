import 'package:flutter/material.dart';

class ImageCard extends StatelessWidget {
  final Image provider;
  final String body;
  ImageCard({
    this.provider,
    this.body,
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
            provider,
            Container(
              margin: EdgeInsets.all(8),
              constraints: BoxConstraints(minWidth: 140,),
              child: Text(body),
            )
          ],
        ),
      ),
    );
  }
}
