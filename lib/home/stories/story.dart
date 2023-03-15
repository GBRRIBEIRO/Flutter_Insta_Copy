import 'package:flutter/material.dart';

import '../../models/profile.dart';

class Story extends StatefulWidget {
  Profile profile;
  Story(this.profile);

  @override
  State<Story> createState() => _StoryState(profile);
}

class _StoryState extends State<Story> {
  Profile _profile;
  _StoryState(this._profile);
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.red,
      ),
      padding: EdgeInsets.all(3),
      margin: EdgeInsets.symmetric(horizontal: 5),
      child: Container(
        width: 60,
        height: 60,
        decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(
              color: Colors.black,
              width: 3,
            ),
            image: DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage(_profile.profilePhotoUrl))),
      ),
    );
  }
}
