import 'package:ambrosia/model/dashboard.dart';
import 'package:ambrosia/style/colors.dart';
import 'package:ambrosia/table/table.dart';
import 'package:ambrosia/widgets/button.dart';
import 'package:ambrosia/widgets/card/image_action_card.dart';
import 'package:ambrosia/widgets/card/profile_card.dart';
import 'package:ambrosia/widgets/card/task_progress_card.dart';
import 'package:ambrosia/widgets/image_group.dart';
import 'package:flutter/material.dart';

class SearchPage extends StatelessWidget {
  static const routeName = 'searchPage';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SearchPage'),
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.only(top: 16, left: 8, right: 8, bottom: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                'Search results for \'john\'',
              ),
              GridView(
                shrinkWrap: true,
                primary: false,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 5.0,
                  childAspectRatio: MediaQuery.of(context).size.height / 1400,
                ),
                children: <Widget>[
                  ProfileCard(
                    cover: Image.network(
                      'https://images.unsplash.com/photo-1505528638251-3ef301e4988e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=750&q=80',
                    ),
                    picture: NetworkImage(
                        'https://images.unsplash.com/profile-1561468079507-2992124da4c8'),
                    name: 'John John',
                    desc: '@steve_huntington',
                  ),
                  ProfileCard(
                    cover: Image.network(
                        'https://images.unsplash.com/photo-1573876573785-16dcc0a9acbb?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=750&q=80,'),
                    picture: NetworkImage(
                        'https://images.unsplash.com/profile-1559530797408-63d5de67dec3'),
                    name: 'Mark John',
                    desc: '@halgatewood',
                  ),
                  ProfileCard(
                    cover: Image.network(
                      'https://images.unsplash.com/photo-1588509858604-b833976335fd?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=750&q=80',
                    ),
                    picture: NetworkImage(
                        'https://images.unsplash.com/profile-1545417767552-76dbd60a368f'),
                    name: 'John Buchanan',
                    desc: '@photoart2018',
                  ),
                  ProfileCard(
                    cover: Image.network(
                        'https://images.unsplash.com/photo-1573951925888-9c0c45604fae?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=750&q=80'),
                    picture: NetworkImage(
                        'https://images.unsplash.com/profile-1460461456342-a21eb34982a0'),
                    name: 'John Doe',
                    desc: '@cbarbalis',
                  ),
                ],
              ),
              Text(
                '(33 results in employees)',
              ),
              Button(
                type: ButtonType.SIMPLE,
                text: Text(
                  'Show More',
                  style: TextStyle(decoration: TextDecoration.underline),
                ),
                onPressed: (){},
              )
            ],
          ),
        ),
      ),
    );
  }
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
