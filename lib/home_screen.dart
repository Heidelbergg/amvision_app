import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

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
      ),
      drawer: buildDrawer(),
      body: buildBody(),
    );
  }

  // Drawer on the left side of the screen
  Widget buildDrawer() {
    return FractionallySizedBox(
      alignment: Alignment.bottomLeft,
      child: Container(
        height: MediaQuery.of(context).size.height,
        padding: EdgeInsets.only(
            top: MediaQuery.of(context).padding.top, bottom: 250),
        child: ClipRRect(
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(10), bottomRight: Radius.circular(150)),
          child: Theme(
            data: Theme.of(context).copyWith(
              canvasColor: Colors.white60,
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
                  /* buildprices(),
                  buildbooking(),
                  buildaboutus(),*/
                ],
              ),
            ),
          ),
        ),
      ),
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
        padding: EdgeInsets.only(top: 24),
        // Override the default appbar restriction for widgets
        children: [
          buildslideshow(),
        ],
      ),
    );
  }

  // slideshow at the top of homescreen
  Widget buildslideshow() {
    return Column(
      children: [
        Container(
          child: CarouselSlider(
            options: CarouselOptions(
              height: 600,
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
        ),
        AnimatedTextKit(
          animatedTexts: [
            TypewriterAnimatedText(
              "AM Vision",
              textStyle: const TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.bold,
                height: 3
              ),
              speed: const Duration(milliseconds: 750),
            ),
          ],
          isRepeatingAnimation: true,
          repeatForever: true,
          pause: const Duration(milliseconds: 100),
          stopPauseOnTap: true,
        ),
/*        const SizedBox(height: 50,),
        AnimatedTextKit(
          animatedTexts: [
            RotateAnimatedText('Professional'),
            RotateAnimatedText('Visionary'),
            RotateAnimatedText('Innovator'),
          ],
          isRepeatingAnimation: true,
          repeatForever: true,
          pause: const Duration(milliseconds: 1000),
        ),*/
        buildgallery(),
      ],
    );
  }

  Widget buildgallery() {
    return Container();
  }
}
