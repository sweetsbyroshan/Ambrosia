import 'package:ambrosia/model/dashboard.dart';
import 'package:ambrosia/style/colors.dart';
import 'package:ambrosia/table/table.dart';
import 'package:ambrosia/widgets/image_group.dart';
import 'package:flutter/material.dart';

class TablePage extends StatelessWidget {
  static const routeName = 'tablePage';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Table'),),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 8),
          child: setupTable()
        ),
      ),
    );
  }
  Widget setupTable() {
  List<ImageProvider> images = [];
  Dashboard dashboard = Dashboard();
  images.add(NetworkImage(
      'https://images.unsplash.com/photo-1550424616-3d37bc3e9a2a?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60'));
  images.add(NetworkImage(
      'https://images.unsplash.com/photo-1533619043865-1c2e2f32ff2f?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60'));
  images.add(NetworkImage(
      'https://images.unsplash.com/photo-1527772291563-41d27d5052ab?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60'));
  images.add(NetworkImage(
      'https://images.unsplash.com/photo-1526948128573-703ee1aeb6fa?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60'));
  dashboard.getDashboard();

  List<Widget> headers = [
    Flexible(flex: 1, child: Text('Name')),
    Flexible(flex: 1, child: Text('Status')),
    Flexible(flex: 1, child: Text('Team')),
  ];
  List<List<Widget>> tableItem = [];
  List<Widget> tableItem1 = [
    Flexible(child: Text('Animation')),
    Flexible(
      child: Row(
        children: <Widget>[
          Icon(
            Icons.brightness_1,
            color: ThemeColors.secondaryCyan,
          ),
          Text('Approved')
        ],
      ),
    ),
    Flexible(
      child: ImageGroup(
        image: images,
      ),
    )
  ];
  List<Widget> tableItem2 = [
    Flexible(child: Text('Branding')),
    Flexible(
      child: Row(
        children: <Widget>[
          Icon(
            Icons.brightness_1,
            color: ThemeColors.secondaryYellow,
          ),
          Text('Approved')
        ],
      ),
    ),
    Flexible(
      child: ImageGroup(
        image: images,
      ),
    )
  ];
  List<Widget> tableItem3 = [
    Flexible(child: Text('Web(Ecom)')),
    Flexible(
      child: Row(
        children: <Widget>[
          Icon(
            Icons.brightness_1,
            color: ThemeColors.secondaryRed,
          ),
          Text('Pending')
        ],
      ),
    ),
    Flexible(
      child: ImageGroup(
        image: null,
      ),
    )
  ];
  List<Widget> tableItem4 = [
    Flexible(child: Text('Mobile(Ecom)')),
    Flexible(
      child: Row(
        children: <Widget>[
          Icon(
            Icons.brightness_1,
            color: ThemeColors.secondaryRed,
          ),
          Text('Pending')
        ],
      ),
    ),
    Flexible(
      child: ImageGroup(
        image: null,
      ),
    )
  ];
  tableItem.add(tableItem1);
  tableItem.add(tableItem2);
  tableItem.add(tableItem3);
  tableItem.add(tableItem4);
  return Tabel(headers: headers, tableItem: tableItem);
}

}
