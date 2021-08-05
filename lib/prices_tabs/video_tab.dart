import 'package:flutter/material.dart';

class VideoGraphy extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return VideoGraphyState();
  }
}

class VideoGraphyState extends State<VideoGraphy> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      drawerScrimColor: Colors.grey,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: buildBody(),
    );
  }

  Widget buildBody() {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [Colors.grey, Colors.white10],
          begin: Alignment.bottomRight,
          end: Alignment.topLeft,
        ),
      ),
      child: ListView(
        // Align the dimensions with the top
        padding: EdgeInsets.only(top: MediaQuery.of(context).padding.top),
        // Override the default appbar restriction for widgets
        children: [
          prices(),
        ],
      ),
    );
  }

  Widget prices() {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.only(top: 50, bottom: 30),
          child: Text("Videography",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.w200)),
        ),
        Container(
          padding: EdgeInsets.all(20),
          child: Text(
              "(1) Production of 15-30sec. Video (Full HD) 30 min filming including editing: 1.500 kr \n\n"
              "(2) Production of 2-3 min. Video (Full HD ) 2 hour filming including editing: 3.000,- \n\n"
              "(3) Production of 4-6 min. Video (Full HD) 4 hour filming including editing: 5.000,- \n\n"
              "(4) Production of 5-10 min. Video (Full HD) 6 hour filming including editing: 10.000,- \n\n",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w200)),
        ),
      ],
    );
  }
}
