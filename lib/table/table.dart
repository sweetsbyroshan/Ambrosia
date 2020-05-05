import 'package:flutter/material.dart';

class Tabel extends StatelessWidget {
  final List<Widget> headers;
  final List<List<Widget>> tableItem;

  Tabel({Key key, this.headers, this.tableItem}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Container(
              child: Row(
            children: headers,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
          )),
          Divider(),
          Container(
            child: ListView.builder(
              itemBuilder: (ctx, i) {
                return Row(
                  children: tableItem[i],
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                );
              },
              itemCount: tableItem.length,
              primary: false,
              shrinkWrap: true,
            ),
          ),
        ],
      ),
    );
  }
}
