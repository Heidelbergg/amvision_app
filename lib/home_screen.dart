import 'package:flutter/material.dart';


class HomeScreen extends StatefulWidget {
  @override
  _HomescreenState createState() => _HomescreenState();
}

class _HomescreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
        drawerScrimColor: Colors.grey,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        drawer: buildDrawer(),
      body: buildBody(),
    );
  }

  Widget buildDrawer() {
    return FractionallySizedBox(
      alignment: Alignment.bottomLeft,
      child: Container(
        height: MediaQuery.of(context).size.height,
        padding: EdgeInsets.only(top: MediaQuery.of(context).padding.top, bottom: 250),
        child: ClipRRect(
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(10), bottomRight: Radius.circular(150)),
          child: Theme(
            data: Theme.of(context).copyWith(
              canvasColor: Colors.white70,
            ),
            child: Drawer(
              child: ListView(
                padding: EdgeInsets.only(top: 10),
                children: [
                  SizedBox(
                    height: 170.0,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            image: AssetImage("assets/images/photographer.jpg"),
                            alignment: Alignment.bottomCenter,
                            fit: BoxFit.scaleDown),
                        color: Colors.transparent,
                        border: Border.all(
                          color: Colors.transparent,
                        ),
                      ),
                      child: null,
                    ),
                  ),
                  ListTile(
                      contentPadding: EdgeInsets.only(top: 30, left: 16),
                      leading: Icon(Icons.home),
                      title: const Text("Home"),
                      onTap: () {
                        Navigator.pop(context);
                      }),
                  ListTile(
                      leading: Icon(Icons.attach_money),
                      title: const Text("Prices"),
                      onTap: () {
                        Navigator.pop(context);
                      }),
                  ListTile(
                    title: const Text("Booking"),
                    leading: Icon(Icons.perm_contact_calendar),
                    onTap: () {
                      Navigator.pop(context);
                    },
                  ),
                  ListTile(
                    contentPadding: EdgeInsets.only(top: 3, left: 16),
                    title: const Text("About Us"),
                    leading: Icon(Icons.account_circle),
                    onTap: () {
                      Navigator.pop(context);
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget buildBody() {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [Colors.grey, Colors.white70],
          begin: Alignment.bottomRight,
          end: Alignment.topLeft,
        ),
      ),

    );
  }
}

