import 'package:amvision_app/prices_tabs/events_tab.dart';
import 'package:amvision_app/prices_tabs/outdoor_tab.dart';
import 'package:amvision_app/prices_tabs/studio_tab.dart';
import 'package:amvision_app/prices_tabs/video_tab.dart';
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

        // Header
        Container(
          padding: EdgeInsets.only(top: 50, bottom: 30),
          child: Text("Prices",
              style: TextStyle(fontSize: 35, fontWeight: FontWeight.w200)),
        ),

        // Photoshoot
        ElevatedButton(
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Colors.transparent),
            elevation: MaterialStateProperty.all(0),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
              ),
            ),
          ),
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) =>StudioPhoto()));
          },
          child: Container(
            width: 250,
            height: 150,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(30)),
              gradient: LinearGradient(
                colors: [Colors.black54, Colors.grey],
                begin: Alignment.bottomRight,
                end: Alignment.topLeft,
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Studio Photography",
                  style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w200,
                      color: Colors.white
                  ),
                ),
                const SizedBox(height: 10,),
                Text(
                  "Tap for more",
                  textAlign: TextAlign.start,
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w200,
                      color: Colors.white
                  ),
                ),
              ],
            ),
          ),
        ),

        const SizedBox(height: 30,),

        // Video

        ElevatedButton(
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Colors.transparent),
            elevation: MaterialStateProperty.all(0),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
              ),
            ),
          ),
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) =>OutdoorPhoto()));
          },
          child: Container(
            width: 250,
            height: 150,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(30)),
              gradient: LinearGradient(
                colors: [Colors.black54, Colors.grey],
                begin: Alignment.bottomRight,
                end: Alignment.topLeft,
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Outdoor Photography",
                  style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w200,
                      color: Colors.white
                  ),
                ),
                const SizedBox(height: 10,),
                Text(
                  "Tap for more",
                  textAlign: TextAlign.start,
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w200,
                      color: Colors.white
                  ),
                ),
              ],
            ),
          ),
        ),

        const SizedBox(height: 30,),

        // Wedding pack

        ElevatedButton(
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Colors.transparent),
            elevation: MaterialStateProperty.all(0),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
              ),
            ),
          ),
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) =>EventsPhoto()));
          },
          child: Container(
            width: 250,
            height: 150,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(30)),
              gradient: LinearGradient(
                colors: [Colors.black54, Colors.grey],
                begin: Alignment.bottomRight,
                end: Alignment.topLeft,
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Events Photography",
                  style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w200,
                      color: Colors.white
                  ),
                ),
                const SizedBox(height: 10,),
                Text(
                  "Tap for more",
                  textAlign: TextAlign.start,
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w200,
                      color: Colors.white
                  ),
                ),
              ],
            ),
          ),
        ),
        const SizedBox(height: 30,),

        // Baby Pack
        ElevatedButton(
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Colors.transparent),
            elevation: MaterialStateProperty.all(0),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
              ),
            ),
          ),
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) =>VideoGraphy()));
            },
            child: Container(
              width: 250,
              height: 150,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(30)),
                gradient: LinearGradient(
                  colors: [Colors.black54, Colors.grey],
                  begin: Alignment.bottomRight,
                  end: Alignment.topLeft,
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Videography",
                    style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w200,
                        color: Colors.white
                    ),
                  ),
                  const SizedBox(height: 10,),
                  Text(
                    "Tap for more",
                    textAlign: TextAlign.start,
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w200,
                        color: Colors.white
                    ),
                  ),
                ],
              ),
            ),
        ),
        const SizedBox(height: 30,),
      ],
    );
  }
}
