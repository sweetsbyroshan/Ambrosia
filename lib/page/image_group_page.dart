import 'package:ambrosia/model/dashboard.dart';
import 'package:ambrosia/widgets/image_group.dart';
import 'package:flutter/material.dart';

class ImageGroupPage extends StatelessWidget {
  static const routeName = 'imageGroupPage';
  @override
  Widget build(BuildContext context) {
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

    return Scaffold(
      appBar: AppBar(title: Text('ImageGroup'),),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 8),
          child: Column(children: <Widget>[
            ImageGroup(image: images,)
            ,ImageGroup(image: null,)
          ],)
        ),
      ),
    );
  }
}
