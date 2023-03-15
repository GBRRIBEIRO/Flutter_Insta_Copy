import 'package:flutter/material.dart';

class LikeButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: IconButton(
          onPressed: null,
          icon: Image.network(
              'https://imgs.search.brave.com/7PHacmX4NytmcPPha5KqGjI5Ovv22otuNNzFJEsGP-o/rs:fit:1200:1200:1/g:ce/aHR0cHM6Ly93d3cu/bmljZXBuZy5jb20v/cG5nL2Z1bGwvNzc4/LTc3ODYwNTBfbmV3/LWluc3RhZ3JhbS1p/Y29uLXBuZy5wbmc')),
    );
  }
}
