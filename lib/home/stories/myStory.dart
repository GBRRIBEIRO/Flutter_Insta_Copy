import 'package:flutter/material.dart';

import '../../models/profile.dart';
import 'story.dart';

class MyStory extends StatefulWidget {
  Profile profile;
  MyStory(this.profile);

  @override
  State<MyStory> createState() => _MyStoryState(profile);
}

class _MyStoryState extends State<MyStory> {
  Profile _profile;
  _MyStoryState(this._profile);
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Row(children: [
      Stack(
        alignment: Alignment.bottomRight,
        children: [
          Story(_profile),
          Align(
              alignment: Alignment.bottomRight,
              child: Container(
                width: 20,
                height: 20,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                ),
                child: ElevatedButton(
                  child: Text('+', textAlign: TextAlign.center),
                  onPressed: () {},
                  style: ButtonStyle(
                    alignment: Alignment.center,
                  ),
                ),
              ))
        ],
      )
    ]));
  }
}
