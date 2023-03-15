import 'package:flutter/material.dart';
import 'package:helloworld/home/stories/storiesBar.dart';

import './home/appbar/instagramTitle.dart';
import './home/appbar/dmButton.dart';
import './home/appbar/likeButton.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Application name
      title: 'Instagram',
      // Application theme data, you can set the colors for the application as
      // you want
      theme: ThemeData(
        primarySwatch: Colors.blue,
        backgroundColor: Colors.black,
      ),
      // A widget which will be started on application startup
      home: MyHomePage(title: 'Instagram'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final String title;
  const MyHomePage({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        // The title text which will be shown on the action bar
        title: InstagramTitle(),
        backgroundColor: Colors.black,
        actions: [
          Row(children: [
            Container(
              child: Row(children: [
                LikeButton(),
                DmButton(),
              ]),
            ),
          ])
        ],
      ),
      body: Center(
          child: Column(
        children: [
          StoriesBar(),
          Container(),
        ],
      )),
    );
  }
}
