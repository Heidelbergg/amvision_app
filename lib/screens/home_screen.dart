import 'package:amvision_app/screens/about_screen.dart';
import 'package:amvision_app/screens/booking_screen.dart';
import 'package:amvision_app/screens/gallery_screen.dart';
import 'package:amvision_app/screens/prices_screen.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomescreenState createState() => _HomescreenState();
}

// Home screen class
class _HomescreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      drawerScrimColor: Colors.grey,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.black),
      ),
      drawer: buildDrawer(),
      body: buildBody(),
    );
  }

  // Body for the home screen - call other buildmethods for the elements
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
          buildslideshow(),
        ],
      ),
    );
  }


  // Drawer on the left side of the screen
  Widget buildDrawer() {
    return FractionallySizedBox(
      child: Container(
        height: MediaQuery.of(context).size.height,
        padding: EdgeInsets.only(top: MediaQuery.of(context).padding.top, bottom: MediaQuery.of(context).size.height / 2.5),
        child: ClipRRect(
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(10), bottomRight: Radius.circular(150)),
          child: Theme(
            data: Theme.of(context).copyWith(
              canvasColor: Colors.white60,
            ),
            child: Drawer(
              child: ListView(
                padding: EdgeInsets.only(top: 40),
                children: [
                  SizedBox(
                    height: 130.0,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            image:
                                AssetImage("assets/images/profile-picture.png"),
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
                      leading: Icon(FontAwesomeIcons.home),
                      title: const Text("Home"),
                      onTap: () {
                        Navigator.pop(context);
                        Navigator.push(
                            context, MaterialPageRoute(builder: (context) => HomeScreen()));

                      }),
                  ListTile(
                      leading: Icon(FontAwesomeIcons.dollarSign),
                      title: const Text("Prices"),
                      onTap: () {
                        Navigator.pop(context);
                        Navigator.push(
                            context, MaterialPageRoute(builder: (context) =>Prices()));
                      }),
                  ListTile(
                    title: const Text("Booking"),
                    leading: Icon(FontAwesomeIcons.calendarAlt),
                    onTap: () {
                      Navigator.pop(context);
                      Navigator.push(
                          context, MaterialPageRoute(builder: (context) => Bookings()));
                    },
                  ),
                  ListTile(
                    contentPadding: EdgeInsets.only(top: 3, left: 16),
                    title: const Text("About Us"),
                    leading: Icon(FontAwesomeIcons.addressCard),
                    onTap: () {
                      Navigator.pop(context);
                      Navigator.push(
                          context, MaterialPageRoute(builder: (context) => AboutUs()));
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

  // slideshow at the top of homescreen
  Widget buildslideshow() {
    return Container(
      child: Column(
        children: [
          CarouselSlider(
            options: CarouselOptions(
              height: 650,
              autoPlay: true,
              enlargeCenterPage: true,
              viewportFraction: 1,
              aspectRatio: 2.0,
              initialPage: 0,
              autoPlayAnimationDuration: Duration(seconds: 3),
            ),
            items: [
              ClipRRect(
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.elliptical(200, 200),
                ),
                child: Image.asset(
                  "assets/images/image00001.jpeg",
                  fit: BoxFit.cover,
                ),
              ),
              ClipRRect(
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.elliptical(200, 200),
                ),
                child: Image.asset(
                  "assets/images/image00003.jpeg",
                  fit: BoxFit.cover,
                ),
              ),
              ClipRRect(
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.elliptical(200, 200),
                ),
                child: Image.asset(
                  "assets/images/image00007.jpeg",
                  fit: BoxFit.cover,
                ),
              ),
              ClipRRect(
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.elliptical(200, 200),
                ),
                child: Image.asset(
                  "assets/images/image00010.jpeg",
                  fit: BoxFit.cover,
                ),
              ),
            ],
          ),
          AnimatedTextKit(
            animatedTexts: [
              TypewriterAnimatedText(
                "AM Vision",
                textStyle: const TextStyle(
                    fontSize: 32, fontWeight: FontWeight.bold, height: 3),
                speed: const Duration(milliseconds: 450),
              ),
            ],
            isRepeatingAnimation: true,
            repeatForever: true,
            pause: const Duration(milliseconds: 100),
            stopPauseOnTap: true,
          ),
          buildgallery(),
        ],
      ),
    );
  }

  // Buttons at the bottom of the screen
  Widget buildgallery() {
    return Container(
      padding: EdgeInsets.only(top: 10, bottom: 10),
      child: Column(
        children: [
          //Gallery Button
          Container(
            padding: EdgeInsets.only(top: 20,left: 20),
            alignment: Alignment.topLeft,
            child: SizedBox(
              height: 100,
              width: 150,
              child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.grey),
                  elevation: MaterialStateProperty.all(10),
                  shadowColor: MaterialStateProperty.all(Colors.black87),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                ),
                onPressed: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) =>Gallery()));
                },
                child: Text(
                  "Gallery",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w200
                  ),
                ),
              ),
            ),
          ),

          //Prices button
          Container(
            padding: EdgeInsets.only(right: 20),
            alignment: Alignment.topRight,
            child: SizedBox(
              height: 100,
              width: 150,
              child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.grey),
                  elevation: MaterialStateProperty.all(10),
                  shadowColor: MaterialStateProperty.all(Colors.black87),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                ),
                onPressed: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) =>Prices()));
                },
                child: Text(
                  "Prices",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w200
                  ),
                ),
              ),
            ),
          ),

          //Bookings button
          Container(
            padding: EdgeInsets.only(left: 20),
            alignment: Alignment.bottomLeft,
            child: SizedBox(
              height: 100,
              width: 150,
              child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.grey),
                  elevation: MaterialStateProperty.all(10),
                  shadowColor: MaterialStateProperty.all(Colors.black87),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                ),
                onPressed: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) =>Bookings()));
                },
                child: Text(
                  "Booking",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w200
                  ),
                ),
              ),
            ),
          ),

          //About us button
          Container(
            padding: EdgeInsets.only(right: 20),
            alignment: Alignment.bottomRight,
            child: SizedBox(
              height: 100,
              width: 150,
              child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.grey),
                  elevation: MaterialStateProperty.all(10),
                  shadowColor: MaterialStateProperty.all(Colors.black87),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                ),
                onPressed: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) =>AboutUs()));
                },
                child: Text(
                  "About us",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w200
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
