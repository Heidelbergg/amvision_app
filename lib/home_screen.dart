import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomescreenState createState() => _HomescreenState();
}

class _HomescreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      drawer: Theme(
        data: Theme.of(context).copyWith(
          canvasColor: Colors.transparent,
        ),
        child: Drawer(
          child: ListView(
            padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 10.0),
            children: [
              DrawerHeader(
                  padding: EdgeInsets.zero,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      // Resize image to being smaller
                        image: AssetImage("assets/images/photographer.JPG"),
                        alignment: Alignment.bottomCenter,
                        fit: BoxFit.scaleDown),
                    color: Colors.transparent,
                    border: Border.all(
                      color: Colors.transparent,
                      width: 1
                    ),
                  ),
                  child: null,
              ),
              ListTile(
                  leading: Icon(Icons.attach_money),
                  title: const Text("Prices"),
                  onTap: () {
                    Navigator.pop(context);
                  }),
              ListTile(
                title: const Text("About Us"),
                leading: Icon(Icons.account_circle),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: const Text("Contact Us"),
                leading: Icon(Icons.phone),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
