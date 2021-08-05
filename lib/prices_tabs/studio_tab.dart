import 'package:flutter/material.dart';

class StudioPhoto extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return StudioPhotoState();
  }
}

class StudioPhotoState extends State<StudioPhoto> {
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
          child: Text("Studio Photography",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.w200)),
        ),
        Container(
          padding: EdgeInsets.all(20),
          child: Text(
              "(1) Portraits for 30 min with 10-15 pictures and 10 edited pictures: 750,- \n\n"
              "(2) Portraits for 1 hour with 20-30 pictures and 20 edited pictures: 1.500,- \n\n"
              "(3) Portraits for 2 hours with 40-50 pictures and 30 edited pictures: 3000,- \n\n",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w200)),
        ),
      ],
    );
  }
}
