import 'package:flutter/material.dart';

class OutdoorPhoto extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return OutdoorPhotoState();
  }
}

class OutdoorPhotoState extends State<OutdoorPhoto> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      drawerScrimColor: Colors.grey,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: BackButton(color: Colors.black),
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
          child: Text("Outdoor Photography",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.w200)),
        ),
        Container(
          padding: EdgeInsets.all(20),
          child: Text(
              "Outdoor photoshoots 30 min with 15-50 pictures and 10 edited pictures by choice: 750,-\n\n"
              "Outdoor photoshoots 45 min - 1,5 hour with 20-60 pictures and 15 edited pictures by choice: 1.500,-\n\n"
              "Outdoor photoshoots 1-2 hours with 50-100 pictures and 25 edited pictures by choice: 3000,-\n\n"
              "Outdoor photoshoots 2-4 hour with 80-150 pictures and 35 edited pictures by choice: 6.000,-\n\n",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w200)),
        ),
      ],
    );
  }
}
