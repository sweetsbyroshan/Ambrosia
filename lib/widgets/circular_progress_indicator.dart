import 'package:flutter/material.dart';

class CPIndicator extends StatelessWidget {
  final double value;

  const CPIndicator({Key key, this.value}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: <Widget>[
        Positioned(
            child: Container(
          child: SizedBox(
            width: 55,
            height: 55,
            child: CircularProgressIndicator(
              value: value,
            ),
          ),
        )),
        Positioned(
            left: 0,
            right: 0,
            child: Align(
              alignment: Alignment.center,
              child: SizedBox(
                  child: Center(
                child: Text((value * 100).floor().toString()+'%'),
              )),
            )),
      ],
    );
  }
}
