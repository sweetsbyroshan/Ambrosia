import 'package:ambrosia/model/dashboard.dart';
import 'package:ambrosia/page/alert_page.dart';
import 'package:ambrosia/page/button_page.dart';
import 'package:ambrosia/page/card_page.dart';
import 'package:ambrosia/page/image_group_page.dart';
import 'package:ambrosia/page/item_detail.dart';
import 'package:ambrosia/page/item_list.dart';
import 'package:ambrosia/page/search.dart';
import 'package:ambrosia/page/table_page.dart';
import 'package:ambrosia/style/colors.dart';
import 'package:ambrosia/table/table.dart';
import 'package:ambrosia/widgets/button.dart';
import 'package:ambrosia/widgets/card/item_info_card.dart';
import 'package:ambrosia/widgets/image_group.dart';
import 'package:flutter/material.dart';

import 'badge_page.dart';
import 'login.dart';

class HomePage extends StatelessWidget {
  List<ImageProvider> images = [];
  Dashboard dashboard = Dashboard();
  @override
  Widget build(BuildContext context) {
    images.add(NetworkImage(
        'https://images.unsplash.com/photo-1550424616-3d37bc3e9a2a?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60'));
    images.add(NetworkImage(
        'https://images.unsplash.com/photo-1533619043865-1c2e2f32ff2f?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60'));
    images.add(NetworkImage(
        'https://images.unsplash.com/photo-1527772291563-41d27d5052ab?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60'));
    images.add(NetworkImage(
        'https://images.unsplash.com/photo-1526948128573-703ee1aeb6fa?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60'));
    dashboard.getDashboard();
    return Scaffold(
      drawer: drawer(context),
      appBar: AppBar(
        title: Text('Ambrosia'),
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              ListView.builder(
                itemBuilder: (ctx, i) {
                  return ItemInfoCard(
                    title: dashboard.dash[i].title,
                    desc: dashboard.dash[i].desc,
                    icon: dashboard.dash[i].icon,
                    value: dashboard.dash[i].value,
                    color: dashboard.dash[i].color,
                  );
                },
                itemCount: dashboard.dash.length,
                shrinkWrap: true,
                primary: false,
              ),
              Divider(),
              Text(
                'Tasks',
                style: TextStyle(fontWeight: FontWeight.w900, fontSize: 24),
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 16),
                child: setupTable(),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget setupTable() {
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

  Widget drawer(ctx) {
    return Container(
      color: ThemeColors.primaryWhite,
      child: Drawer(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 32,
              ),
              Container(
                child: Container(
                  color: ThemeColors.primaryBlue,
                  child: Center(
                    child: Text(
                      'Ambrosia',
                      style: TextStyle(
                          fontSize: 18, color: ThemeColors.primaryWhite),
                    ),
                  ),
                  height: 114,
                  width: 114,
                ),
                padding: EdgeInsets.all(32),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SizedBox(
                    height: 16,
                  ),
                  Divider(),
                  SizedBox(
                    height: 16,
                  ),
                  FlatButton(onPressed: () {
                    Navigator.pop(ctx);
                  }, child: Text('DASHBOARD')),
                  FlatButton(onPressed: () {}, child: Text('EXAMPLE')),
                  Container(
                    margin: EdgeInsets.only(left: 8),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Button(
                            type: ButtonType.SIMPLE,
                            onPressed: () {
                              Navigator.popAndPushNamed(
                                  ctx, LoginPage.routeName);
                            },
                            text: Text('LOGIN')),
                        Button(
                            type: ButtonType.SIMPLE,
                            onPressed: () {
                              Navigator.popAndPushNamed(
                                  ctx, ItemListPage.routeName);
                            },
                            text: Text('ITEM LIST')),
                        Button(
                            type: ButtonType.SIMPLE,
                            onPressed: () {
                              Navigator.popAndPushNamed(
                                  ctx, ItemDetailPage.routeName);
                            },
                            text: Text('ITEM DETAIL')),
                        Button(
                            type: ButtonType.SIMPLE,
                            onPressed: () {
                              Navigator.popAndPushNamed(
                                  ctx, SearchPage.routeName);
                            },
                            text: Text('SEARCH')),
                      ],
                    ),
                  ),
                  Button(
                      type: ButtonType.SIMPLE,
                      onPressed: () {},
                      text: Text('COMPONENTS')),
                  Container(
                    margin: EdgeInsets.only(left: 8),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Button(
                            type: ButtonType.SIMPLE,
                            onPressed: () {
                              Navigator.popAndPushNamed(
                                  ctx, AlertPage.routeName);
                            },
                            text: Text('Alert')),
                        Button(
                            type: ButtonType.SIMPLE,
                            onPressed: () {
                              Navigator.popAndPushNamed(
                                  ctx, ButtonPage.routeName);
                            },
                            text: Text('Button')),
                        Button(
                            type: ButtonType.SIMPLE,
                            onPressed: () {
                              Navigator.popAndPushNamed(
                                  ctx, BadgePage.routeName);
                            },
                            text: Text('Badges')),
                        Button(
                            type: ButtonType.SIMPLE,
                            onPressed: () {
                              Navigator.popAndPushNamed(
                                  ctx, CardPage.routeName);
                            },
                            text: Text('Cards')),
                        Button(
                            type: ButtonType.SIMPLE,
                            onPressed: () {
                              Navigator.popAndPushNamed(
                                  ctx, ImageGroupPage.routeName);},
                            text: Text('ImageGroup')),
                        Button(
                            type: ButtonType.SIMPLE,
                            onPressed: () {
                              Navigator.popAndPushNamed(
                                  ctx, TablePage.routeName);},
                            text: Text('Table')),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
