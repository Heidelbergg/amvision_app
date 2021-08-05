import 'package:flutter/material.dart';

class EventsPhoto extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return EventsPhotoState();
  }
}

class EventsPhotoState extends State<EventsPhoto> {
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
          child: Text("Events Photography",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.w200)),
        ),
        Container(
          padding: EdgeInsets.all(20),
          child: Text(
              "(1) 10 edited pictures: 1.000,- \n\n"
              "(2) 15 edited pictures: 1.500,- \n\n"
              "(3) 20 edited pictures: 2.000,- \n\n",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w200)),
        ),
      ],
    );
  }
}
