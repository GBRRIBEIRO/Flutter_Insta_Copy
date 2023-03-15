import 'package:flutter/material.dart';

class Profile {
  final int id;
  final String personName;
  final String profilePhotoUrl;
  Profile(
      {required this.id,
      required this.personName,
      required this.profilePhotoUrl});

  Widget getImage() {
    return Image.network(profilePhotoUrl);
  }
}
