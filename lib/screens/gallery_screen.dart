import 'package:flutter/material.dart';

class Gallery extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return GalleryState();
  }
}

class GalleryState extends State<Gallery> {
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
          buildgallery(),
        ],
      ),
    );
  }

  Widget buildgallery() {
      return Column(
        children: [
          Container(
            padding: EdgeInsets.only(top: 50, bottom: 10),
            child: Text(
              "Gallery",
                style: TextStyle(
                    fontSize: 35,
                    fontWeight: FontWeight.w200
                )
            ),
          ),

          Container(
            height: 450,
            width: 400,
            padding: EdgeInsets.all(20),
            child :ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(30),
              ),
              child: Image.asset(
                "assets/images/image00001.jpeg",
                fit: BoxFit.cover,
              ),
            ),
          ),

          Container(
            height: 450,
            width: 400,
            padding: EdgeInsets.all(20),
            child :ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(30),
              ),
              child: Image.asset(
                "assets/images/image00002.jpeg",
                fit: BoxFit.cover,
              ),
            ),
          ),

          Container(
            height: 450,
            width: 400,
            padding: EdgeInsets.all(20),
            child :ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(30),
              ),
              child: Image.asset(
                "assets/images/image00003.jpeg",
                fit: BoxFit.cover,
              ),
            ),
          ),

          Container(
            height: 450,
            width: 400,
            padding: EdgeInsets.all(20),
            child :ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(30),
              ),
              child: Image.asset(
                "assets/images/image00004.jpeg",
                fit: BoxFit.cover,
              ),
            ),
          ),

          Container(
            height: 450,
            width: 400,
            padding: EdgeInsets.all(20),
            child :ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(30),
              ),
              child: Image.asset(
                "assets/images/image00005.jpeg",
                fit: BoxFit.cover,
              ),
            ),
          ),

          Container(
            height: 450,
            width: 400,
            padding: EdgeInsets.all(20),
            child :ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(30),
              ),
              child: Image.asset(
                "assets/images/image00007.jpeg",
                fit: BoxFit.cover,
              ),
            ),
          ),

          Container(
            height: 450,
            width: 400,
            padding: EdgeInsets.all(20),
            child :ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(30),
              ),
              child: Image.asset(
                "assets/images/image00008.jpeg",
                fit: BoxFit.cover,
              ),
            ),
          ),

          Container(
            height: 450,
            width: 400,
            padding: EdgeInsets.all(20),
            child :ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(30),
              ),
              child: Image.asset(
                "assets/images/image00009.jpeg",
                fit: BoxFit.cover,
              ),
            ),
          ),

          Container(
            height: 450,
            width: 400,
            padding: EdgeInsets.all(20),
            child :ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(30),
              ),
              child: Image.asset(
                "assets/images/image00010.jpeg",
                fit: BoxFit.cover,
              ),
            ),
          ),

          Container(
            height: 450,
            width: 400,
            padding: EdgeInsets.all(20),
            child :ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(30),
              ),
              child: Image.asset(
                "assets/images/image00011.jpeg",
                fit: BoxFit.cover,
              ),
            ),
          ),

          Container(
            height: 450,
            width: 400,
            padding: EdgeInsets.all(20),
            child :ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(30),
              ),
              child: Image.asset(
                "assets/images/image00012.jpeg",
                fit: BoxFit.cover,
              ),
            ),
          ),

          Container(
            height: 450,
            width: 400,
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
