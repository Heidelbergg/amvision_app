import 'package:flutter/material.dart';

class Prices extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return PricesState();
  }
}

class PricesState extends State<Prices> {
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