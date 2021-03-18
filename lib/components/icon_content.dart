import 'package:flutter/material.dart';
import '../constants.dart';

class IconContent extends StatelessWidget {
  IconContent(this.iconX, this.label);
  final IconData iconX;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(iconX, size: 80),
        SizedBox(
          height: 15,
        ),
        Text(label, style: kLabelTextStyle)
      ],
    );
  }
}
