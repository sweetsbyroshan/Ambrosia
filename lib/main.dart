import 'package:ambrosia/model/dashboard.dart';
import 'package:ambrosia/page/item_detail.dart';
import 'package:ambrosia/page/item_list.dart';
import 'package:ambrosia/page/login.dart';
import 'package:ambrosia/page/search.dart';
import 'package:ambrosia/page/table_page.dart';
import 'package:ambrosia/style/colors.dart';
import 'package:ambrosia/widgets/alert.dart';
import 'package:ambrosia/widgets/badges.dart';
import 'package:ambrosia/widgets/button.dart';
import 'package:ambrosia/widgets/card/image_action_card.dart';
import 'package:ambrosia/widgets/card/profile_card.dart';
import 'package:flutter/material.dart';

import 'page/alert_page.dart';
import 'page/badge_page.dart';
import 'page/button_page.dart';
import 'page/card_page.dart';
import 'page/home.dart';
import 'page/image_group_page.dart';
import 'table/table.dart';
import 'widgets/card/image_card.dart';
import 'widgets/card/item_info_card.dart';
import 'widgets/card/option_card.dart';
import 'widgets/card/task_progress_card.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomePage(),
      routes: {
        LoginPage.routeName: (ctx) => LoginPage(),
        ItemListPage.routeName: (ctx) => ItemListPage(),
        ItemDetailPage.routeName: (ctx) => ItemDetailPage(),
        SearchPage.routeName: (ctx) => SearchPage(),
        AlertPage.routeName: (ctx) => AlertPage(),
        BadgePage.routeName: (ctx) => BadgePage(),
        ButtonPage.routeName: (ctx) => ButtonPage(),
        CardPage.routeName: (ctx) => CardPage(),
        ImageGroupPage.routeName: (ctx) => ImageGroupPage(),
        TablePage.routeName: (ctx) => TablePage(),
      },
    );
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final title;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Alert(
              color: ThemeColors.primaryBlue,
              actionColor: ThemeColors.primaryWhite,
              option1: 'YES',
              body:
                  'Danger! Indicates a dangerous or potentially negative action.',
              title: 'This is alert!',
              option2: 'NO',
            ),
            Badges(
              color: ThemeColors.secondaryRed,
              text: '1',
            ),
            Wrap(
              spacing: 8.0,
              children: <Widget>[
                Button(
                    type: ButtonType.DEFAULT,
                    onPressed: () {},
                    text: Text(
                      'Default',
                      style: TextStyle(color: ThemeColors.primaryWhite),
                    )),
                Button(
                    type: ButtonType.WITH_ICON,
                    onPressed: () {},
                    text: Text(
                      'With Icon',
                      style: TextStyle(color: ThemeColors.primaryWhite),
                    )),
                Button(
                    type: ButtonType.ICON,
                    onPressed: () {},
                    iconColor: ThemeColors.primaryWhite,
                    text: Text(
                      '',
                      style: TextStyle(color: ThemeColors.primaryWhite),
                    )),
                Button(
                    type: ButtonType.ROUNDED,
                    onPressed: () {},
                    text: Text(
                      'Rounded',
                      style: TextStyle(color: ThemeColors.primaryWhite),
                    )),
                Button(
                    type: ButtonType.SIMPLE,
                    onPressed: () {},
                    text: Text(
                      'Simple',
                      style: TextStyle(color: ThemeColors.primaryBlue),
                    )),
                ImageActionCard(
                  type: CardType.HORIZONTAL,
                  provider: Image.network(
                    'https://upload.wikimedia.org/wikipedia/commons/1/12/Post_Malone_at_the_2019_American_Music_Awards.png',
                    height: 100,
                    fit: BoxFit.cover,
                    alignment: Alignment.topCenter,
                  ),
                  title: 'Post Malone',
                  action: 'Open',
                  actionColor: ThemeColors.primaryBlue,
                  body:
                      'Austin Richard Post, known professionally as Post Malone, is an American singer-songwriter, rapper, record producer and actor. Known for his introspective songwriting and laconic vocal style, Post has gained acclaim for bending a range of genres including country, grunge, hip hop and R&B.',
                ),
                ImageActionCard(
                  type: CardType.VERTICAL,
                  provider: Image.network(
                    'https://upload.wikimedia.org/wikipedia/commons/1/12/Post_Malone_at_the_2019_American_Music_Awards.png',
                    height: 250,
                    alignment: Alignment.topCenter,
                    width: MediaQuery.of(context).size.width,
                    fit: BoxFit.cover,
                  ),
                  title: 'Post Malone',
                  action: 'Open',
                  actionColor: ThemeColors.primaryBlue,
                  body:
                      'Austin Richard Post, known professionally as Post Malone, is an American singer-songwriter, rapper, record producer and actor. Known for his introspective songwriting and laconic vocal style, Post has gained acclaim for bending a range of genres including country, grunge, hip hop and R&B.',
                ),
                ImageCard(
                  provider: Image.network(
                    'https://upload.wikimedia.org/wikipedia/commons/1/12/Post_Malone_at_the_2019_American_Music_Awards.png',
                    height: 250,
                    alignment: Alignment.topCenter,
                    width: MediaQuery.of(context).size.width,
                    fit: BoxFit.cover,
                  ),
                  body:
                      'Austin Richard Post, known professionally as Post Malone, is an American singer-songwriter, rapper, record producer and actor. Known for his introspective songwriting and laconic vocal style, Post has gained acclaim for bending a range of genres including country, grunge, hip hop and R&B.',
                ),
                OptionCard(
                  actionColor: ThemeColors.secondaryCyan,
                  title: 'Post Malon',
                  body:
                      'Austin Richard Post, known professionally as Post Malone, is an American singer-songwriter, rapper, record producer and actor. Known for his introspective songwriting and laconic vocal style, Post has gained acclaim for bending a range of genres including country, grunge, hip hop and R&B.',
                  option1: 'Like',
                  option2: 'Share',
                ),
                ProfileCard(
                  cover: Image.network(
                    'https://coverfiles.alphacoders.com/132/13222.jpg',
                  ),
                  picture: NetworkImage(
                      'https://lh3.googleusercontent.com/-e0hPYKROS_8/XgyfB1f9qnI/AAAAAAAAAm4/0rToL1vMGSkj_RWN8PLrtqgmCCf69y5JQCLcBGAsYHQ/s1600/1577885444910884-0.png'),
                  name: 'Sikander Kahlon',
                  desc: 'King in the North',
                ),
                ImageActionCard(
                  type: CardType.HORIZONTAL,
                  provider: Image.network(
                    'https://upload.wikimedia.org/wikipedia/commons/1/12/Post_Malone_at_the_2019_American_Music_Awards.png',
                    height: 100,
                    fit: BoxFit.cover,
                    alignment: Alignment.topCenter,
                  ),
                  title: 'Post Malone',
                  action: 'Open',
                  actionColor: ThemeColors.primaryBlue,
                  body:
                      'Austin Richard Post, known professionally as Post Malone, is an American singer-songwriter, rapper, record producer and actor. Known for his introspective songwriting and laconic vocal style, Post has gained acclaim for bending a range of genres including country, grunge, hip hop and R&B.',
                  feature: Button(
                    type: ButtonType.DEFAULT,
                    color: ThemeColors.secondaryOrange,
                    text: Container(
                      margin: EdgeInsets.symmetric(horizontal: 8),
                      child: Text(
                        'Featured',
                        style: TextStyle(color: ThemeColors.primaryWhite),
                      ),
                    ),
                    onPressed: () {},
                  ),
                ),
                ImageActionCard(
                  type: CardType.VERTICAL,
                  provider: Image.network(
                    'https://upload.wikimedia.org/wikipedia/commons/1/12/Post_Malone_at_the_2019_American_Music_Awards.png',
                    height: 250,
                    alignment: Alignment.topCenter,
                    width: MediaQuery.of(context).size.width,
                    fit: BoxFit.cover,
                  ),
                  title: 'Post Malone',
                  action: 'Open',
                  actionColor: ThemeColors.primaryBlue,
                  body:
                      'Austin Richard Post, known professionally as Post Malone, is an American singer-songwriter, rapper, record producer and actor. Known for his introspective songwriting and laconic vocal style, Post has gained acclaim for bending a range of genres including country, grunge, hip hop and R&B.',
                  feature: Button(
                    type: ButtonType.DEFAULT,
                    color: ThemeColors.secondaryOrange,
                    text: Container(
                      margin: EdgeInsets.symmetric(horizontal: 8),
                      child: Text(
                        'Featured',
                        style: TextStyle(color: ThemeColors.primaryWhite),
                      ),
                    ),
                    onPressed: () {},
                  ),
                ),
                ItemInfoCard(
                  title: 'Card Title',
                  value: '₹ 99,999',
                  desc: 'descriptive text',
                  icon: Icons.ac_unit,
                )
              ],
            ),
            TaskProgressCard(
              actionColor: ThemeColors.secondaryOrange,
              color: ThemeColors.primaryBlue,
              eta: '4 days remaining',
              tasks: ['web', 'mobile', 'testing'],
              name: 'Carl',
              progress: .75,
              option: 'Open',
            ),
          ],
        ),
      ),
    );
  }
}
