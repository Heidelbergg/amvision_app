import 'package:flutter/material.dart';

class AboutUs extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return AboutUsState();
  }
}

class AboutUsState extends State<AboutUs> {
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
              "About AM Vision",
              style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w200
              )
          ),
        ),

        Container(
          padding: EdgeInsets.all(20),
          child: Text(
              "Lorem ipsum dolor sit amet, consectetur adipiscing elit, "
                  "sed do eiusmod tempor incididunt ut labore et dolore "
                  "magna aliqua. Ut enim ad minim veniam, quis nostrud "
                  "exercitation ullamco laboris nisi ut aliquip ex ea "
                  "commodo consequat. Duis aute irure dolor in reprehenderit "
                  "in voluptate velit esse cillum dolore eu fugiat nulla pariatur. "
                  "Excepteur sint occaecat cupidatat non proident, sunt in culpa qui"
                  " officia deserunt mollit anim id est laborum.",
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w200
              )
          ),
        ),

        Container(
          height: 250,
          width: 200,
          padding: EdgeInsets.all(20),
          child :ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(30),
            ),
            child: Image.asset(
              "assets/images/image00013.jpeg",
              fit: BoxFit.cover,
            ),
          ),
        ),
      ],
    );
  }

}