

import 'package:flutter/material.dart';

class IconTextWidget extends StatelessWidget {
  final String? cinsiyet;
  final IconData? icon;


  IconTextWidget({this.cinsiyet, this.icon});    // CONSTRUCTOR

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          size: 30,
        ),
        SizedBox(
          height: 12.0,
        ),
        Text(
          cinsiyet.toString(),
          style: (TextStyle(
              fontSize: 20, fontWeight: FontWeight.bold)),
        )
      ],
    );
  }
}