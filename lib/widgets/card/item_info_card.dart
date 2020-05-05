import 'package:flutter/material.dart';

class ItemInfoCard extends StatelessWidget {
  final String title, value, desc;
  final IconData icon;
  final Color color;
  const ItemInfoCard(
      {Key key, this.title, this.value, this.desc, this.icon, this.color})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(16))),
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Flexible(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    child: Text(
                      title,
                      style:
                          TextStyle(fontWeight: FontWeight.w900, fontSize: 18),
                    ),
                    margin: EdgeInsets.symmetric(vertical: 4),
                  ),
                  Container(
                    child: Text(value),
                    margin: EdgeInsets.symmetric(vertical: 4),
                  ),
                  Container(
                    child: Text(desc),
                    margin: EdgeInsets.symmetric(vertical: 4),
                  ),
                ],
              ),
              flex: 4,
            ),
            Flexible(
              child: Container(
                child: CircleAvatar(
                  child: Icon(
                    icon,
                    color: Colors.white,
                  ),
                  backgroundColor: color,
                ),
                margin: EdgeInsets.only(left: 16, top: 8),
              ),
              flex: 1,
            ),
          ],
        ),
      ),
    );
  }
}
