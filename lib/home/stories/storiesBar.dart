import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:helloworld/home/stories/myStory.dart';
import 'package:helloworld/home/stories/story.dart';
import 'package:helloworld/models/profile.dart';

class StoriesBar extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _StoriesBarState();
  }
}

class _StoriesBarState extends State<StoriesBar> {
  Profile gabriel = Profile(
      id: 1,
      personName: 'Gabriel',
      profilePhotoUrl:
          'https://imgs.search.brave.com/gea9L2G8rEsgKbvfAME2_FT9oI06gTjOn2PIecb-hqo/rs:fit:1200:1200:1/g:ce/aHR0cHM6Ly9zaW1v/bmxhbG9uZGUuZ2l0/aHViLmlvL2ltYWdl/cy9waG90bzEzLmpw/Zw');

  Profile zed = Profile(
      id: 2,
      personName: 'Zed',
      profilePhotoUrl:
          'https://imgs.search.brave.com/r-D8KplOvfLMViXelGOd3WJb-mVllBHTOYOmziEjeYE/rs:fit:1200:1200:1/g:ce/aHR0cHM6Ly9pLnBp/bmltZy5jb20vb3Jp/Z2luYWxzL2RjL2Nj/LzZhL2RjY2M2YTY4/OWJmNjY3OTQyYzFi/YmMwODVmMzhiMzhj/LmpwZw');

  @override
  Widget build(BuildContext context) {
    List<Profile> profiles = [gabriel, zed];
    return Container(
      height: 75,
      width: double.infinity,
      margin: EdgeInsets.symmetric(horizontal: 5),
      child: Row(children: <Widget>[
        MyStory(profiles[0]),
        ...profiles.map((pf) => Story(pf)),
      ]),
    );
  }
}
