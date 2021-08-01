import 'package:flutter/material.dart';

class Gallery extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return GalleryState();
  }
}

class GalleryState extends State<Gallery> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      drawerScrimColor: Colors.grey,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
    );
  }
}