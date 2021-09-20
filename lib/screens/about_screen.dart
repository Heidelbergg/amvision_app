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
              "Photographer Ariel M. Achiza. \n\n"
                  "I'm a passionate photographer and videographer living in Odense in Denmark. "
                  "I have experience with different type of photography and videography. "
                  "I'm the founder of A. M. Vision, an epicentre of extraordinary photo- and videography. \n\n"
                  " Portfolio: \n\n • Portraits \n • Art \n • Fashion \n • Dance \n • Family \n • Events",
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