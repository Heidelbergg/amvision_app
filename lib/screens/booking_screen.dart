import 'package:flutter/material.dart';

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
    );
  }
}