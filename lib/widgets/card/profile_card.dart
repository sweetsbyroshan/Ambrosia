import 'package:ambrosia/style/colors.dart';
import 'package:flutter/material.dart';

class ProfileCard extends StatelessWidget {
  final ImageProvider picture;
  final Image cover;
  final String name, desc;
  ProfileCard({
    this.cover,
    this.picture,
    this.name,
    this.desc,
  });
  @override
  Widget build(BuildContext context) {
    return Card(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(16.0))),
        child: Container(
          constraints: BoxConstraints(minHeight: 93),
          child: Column(
            children: <Widget>[
              Stack(
                children: <Widget>[
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        child: ClipRRect(
                          child: cover,
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(8.0),
                              topRight: Radius.circular(8.0)),
                        ),
                        height: 150,
                      ),
                      SizedBox(
                        height: 72,
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 16),
                        child: Text(
                          name,
                          style: TextStyle(
                              fontWeight: FontWeight.w900, fontSize: 18),
                        ),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 16),
                        child: Text(desc),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                    ],
                  ),
                  Positioned.fill(
                    left: 4,
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius:
                                BorderRadius.all(Radius.circular(100))),
                        width: 108,
                        height: 108,
                      ),
                    ),
                  ),
                  Positioned.fill(
                    left: 8,
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Container(
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                              image: picture,
                              fit: BoxFit.cover,
                            )),
                        width: 100,
                        height: 100,
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ));
  }
}
