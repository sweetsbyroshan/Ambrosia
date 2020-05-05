import 'package:ambrosia/style/colors.dart';
import 'package:ambrosia/widgets/button.dart';
import 'package:ambrosia/widgets/card/image_action_card.dart';
import 'package:flutter/material.dart';

class ItemListPage extends StatelessWidget {
  static const routeName = 'itemListPage';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Item List'),
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.symmetric(vertical: 16, horizontal: 8),
          child: Column(
            children: <Widget>[
              Container(
                child: new TextField(
                  // controller: ,
                  decoration: new InputDecoration(labelText: 'Search'),
                ),
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
                  ImageActionCard(
                    type: CardType.VERTICAL,
                    action: 'Action',
                    actionColor: ThemeColors.primaryBlue,
                    body: 'L-33, Phase Ii, Apmc Market-1, Sector 19, Vashi',
                    title: 'Rooster Studio',
                    provider: Image.network(
                      'https://images.unsplash.com/photo-1558236617-7d65d9dbcd02?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=739&q=80',
                      height: 100,
                    ),
                  ),
                  ImageActionCard(
                    type: CardType.VERTICAL,
                    action: 'Action',
                    actionColor: ThemeColors.primaryBlue,
                    body: '519 , Maulana Azad Road, Ladi Bazar, Girgaon',
                    title: 'Pelican Shipping',
                    provider: Image.network(
                      'https://images.unsplash.com/photo-1578575437130-527eed3abbec?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=750&q=80',
                      height: 100,
                    ),
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
                    action: 'Action',
                    actionColor: ThemeColors.primaryBlue,
                    body:
                        '50 , X-, Utra Chs, Shastri Nagar,lokhandwala Cplx, Andheri(w)',
                    title: 'Toucan Apps',
                    provider: Image.network(
                      'https://images.unsplash.com/photo-1573496774426-fe3db3dd1731?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=749&q=80',
                      height: 100,
                    ),
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
                    action: 'Action',
                    actionColor: ThemeColors.primaryBlue,
                    body:
                        '38 , Ganga, Satiwali, Tungareshwar Ind.est, Vasai (east)',
                    title: 'Round Robin Inc.',
                    provider: Image.network(
                      'https://images.unsplash.com/photo-1557804506-669a67965ba0?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=667&q=80',
                      height: 100,
                    ),
                  ),
                ],
              ),
              ListView(
                shrinkWrap: true,
                primary: false,
                children: <Widget>[
                  ImageActionCard(
                    type: CardType.HORIZONTAL,
                    provider: Image.network(
                      'http://www.azadirecords.com/wp-content/uploads/2018/04/Uday-Kapur-and-Mo-Joshi-3.jpg',
                      height: 100,
                      width: 70,
                      fit: BoxFit.cover,
                      alignment: Alignment.topCenter,
                    ),
                    title: 'Seedhe Maut',
                    action: 'Open',
                    actionColor: ThemeColors.primaryBlue,
                    body:
                        'evolution of the capital’s hip-hop sound. Having mastered the art of delivering razor sharp, combative and witty rhymes, the bi-lingual duo are following in the trailblazing footsteps of international hip-hop collectives such as Run The Jewels, Clipse, Black Hippy, Mobb Deep, Blackstar and more.',
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
                  ),ImageActionCard(
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
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
