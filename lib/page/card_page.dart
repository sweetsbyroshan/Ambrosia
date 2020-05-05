import 'package:ambrosia/style/colors.dart';
import 'package:ambrosia/widgets/alert.dart';
import 'package:ambrosia/widgets/button.dart';
import 'package:ambrosia/widgets/card/image_action_card.dart';
import 'package:ambrosia/widgets/card/image_card.dart';
import 'package:ambrosia/widgets/card/item_info_card.dart';
import 'package:ambrosia/widgets/card/option_card.dart';
import 'package:ambrosia/widgets/card/profile_card.dart';
import 'package:ambrosia/widgets/card/task_progress_card.dart';
import 'package:flutter/material.dart';

class CardPage extends StatelessWidget {
  static const routeName = 'cardPage';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cards'),
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 8),
          child: Column(
            children: <Widget>[
              ImageActionCard(
                type: CardType.HORIZONTAL,
                provider: Image.network(
                  'https://images.unsplash.com/photo-1494790108377-be9c29b29330?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=334&q=80',
                  height: 100,
                  fit: BoxFit.cover,
                  alignment: Alignment.topCenter,
                ),
                title: 'Card Title',
                action: 'Open',
                actionColor: ThemeColors.primaryBlue,
                body:
                    'Market-facing. Programmatically incentivization nor drill down, and let\'s put a pin in that it is all exactly as i said, but i don\'t like it big picture. Three-martini lunch can I just chime in on that one.',
              ),
              ImageActionCard(
                type: CardType.VERTICAL,
                provider: Image.network(
                  'https://images.unsplash.com/photo-1506919258185-6078bba55d2a?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=515&q=80',
                  height: 250,
                  alignment: Alignment.topCenter,
                  width: MediaQuery.of(context).size.width,
                  fit: BoxFit.cover,
                ),
                title: 'Card Title',
                action: 'Open',
                actionColor: ThemeColors.primaryBlue,
                body:
                    'Ramp up criticality for i don\'t want to drain the whole swamp, i just want to shoot some alligators but you better eat a reality sandwich before you walk back in that boardroom, so define the underlying principles that drive decisions and strategy for your design language and powerPointless, yet a loss a day will keep you focus. ',
              ),
              ImageCard(
                provider: Image.network(
                  'https://images.unsplash.com/photo-1491438590914-bc09fcaaf77a?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=750&q=80',
                  height: 250,
                  alignment: Alignment.topCenter,
                  width: MediaQuery.of(context).size.width,
                  fit: BoxFit.cover,
                ),
                body:
                    'We have put the apim bol, temporarily so that we can later put the monitors on onward and upward, productize the deliverables and focus on the bottom line.',
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
                  'https://images.unsplash.com/photo-1501386761578-eac5c94b800a?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=750&q=80',
                ),
                picture: NetworkImage(
                    'https://images.unsplash.com/profile-1501388291884-ec59b7872fbc'),
                name: 'Nicholas Green',
                desc: '@nickxshotz',
              ),
              ImageActionCard(
                type: CardType.HORIZONTAL,
                provider: Image.network(
                  'https://images.unsplash.com/photo-1438761681033-6461ffad8d80?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60',
                  width: 80,
                  height: 100,
                  fit: BoxFit.cover,
                  alignment: Alignment.topCenter,
                ),
                title: 'Christopher Campbell',
                action: 'Go',
                actionColor: ThemeColors.primaryBlue,
                body:
                    'Want more selection? Check out my work on Creative Market. https://creativemarket.com/chrisjoelcampbell',
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
                  'https://images.unsplash.com/profile-1529113145362-c63dee0d193b',
                  height: 250,
                  alignment: Alignment.topCenter,
                  width: MediaQuery.of(context).size.width,
                  fit: BoxFit.cover,
                ),
                title: 'Roberto Delgado Webb',
                action: 'Open',
                actionColor: ThemeColors.primaryBlue,
                body:
                    'Content Creator and Creative Advisor.Want to work with me? Talk to me on Instagram: DelgadowebbDo you like the filter in my photos?You can buy it here:',
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
      ),
    );
  }
}
