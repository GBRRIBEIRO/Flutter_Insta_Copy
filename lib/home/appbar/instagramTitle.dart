import 'package:flutter/material.dart';

class InstagramTitle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Text('Instagram'),
      Container(child: DropdownButton(items: null, onChanged: null))
    ]);
  }
}
