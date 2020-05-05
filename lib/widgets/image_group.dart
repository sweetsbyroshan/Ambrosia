import 'package:ambrosia/style/colors.dart';
import 'package:flutter/material.dart';

class ImageGroup extends StatelessWidget {
  final List<ImageProvider> image;

  const ImageGroup({Key key, this.image}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 50,
      child: ListView.builder(
        shrinkWrap: true,
        itemBuilder: (ctx, i) {
          return Align(
            widthFactor: 0.5,
            child: SizedBox(
                height: 48,
                width: 48,
                child: Container(
                  decoration: BoxDecoration(
                      color: ThemeColors.primaryBlack,
                      shape: BoxShape.circle,
                      border: Border.all(
                          width: 2.0, color: ThemeColors.primaryWhite),
                      image: image != null
                          ? DecorationImage(
                              image: image[i],
                              fit: BoxFit.cover,
                            )
                          : null),
                )),
          );
        },
        itemCount: image != null && image.length<4? image.length : 4,
        primary: false,
        scrollDirection: Axis.horizontal,
      ),
    );
  }
}
