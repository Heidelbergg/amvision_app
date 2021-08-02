import 'package:flutter/material.dart';

// Possibly add a reference to a site where booking can be done (Both made for web and mobile platforms)

class Bookings extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return BookingsState();
  }
}

class BookingsState extends State<Bookings> {
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
        padding: EdgeInsets.only(top: MediaQuery
            .of(context)
            .padding
            .top),
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
          padding: EdgeInsets.only(top: 50, bottom: 10),
          child: Text(
              "Booking",
              style: TextStyle(
                  fontSize: 35,
                  fontWeight: FontWeight.w200
              )
          ),
        ),
      ],
    );
  }

}