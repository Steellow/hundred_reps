import 'package:flutter/material.dart';

// Using our own ListTileIcon class because icons arent centered by default if using Material Design Icons
class ListTileIcon extends StatelessWidget {
  final IconData icon;

  ListTileIcon({this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: 40,
      child: Icon(icon),
    );
  }
}
