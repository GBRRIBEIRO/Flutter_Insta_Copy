import 'package:flutter/material.dart';

class DmButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 5),
      child: IconButton(
          onPressed: null,
          icon: Image.network(
              'https://imgs.search.brave.com/1zx3uiwU8kgCseiaLLvId3rBlptWDnjNRPQNkda6634/rs:fit:1200:1200:1/g:ce/aHR0cHM6Ly90aWdo/ZXN0aW1lcGllY2Vz/LmNvbS93cC1jb250/ZW50L3VwbG9hZHMv/MjAxNi8xMS9JbnN0/YWdyYW0taWNvbi1X/SElURS5wbmc')),
    );
  }
}
