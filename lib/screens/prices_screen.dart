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
        Container(
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
                "Photo Shoot",
                style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w200,
                    color: Colors.white
                ),
              ),
              const SizedBox(height: 5,),
              Text(
                "1000 DDK",
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

        const SizedBox(height: 30,),

        // Video

        Container(
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
                "Video Shoot",
                style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w200,
                    color: Colors.white
                ),
              ),
              const SizedBox(height: 5,),
              Text(
                "200 DDK PR. HOUR",
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

        const SizedBox(height: 30,),

        // Wedding pack

        Container(
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
                "Marriage Pack",
                style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w200,
                    color: Colors.white
                ),
              ),
              const SizedBox(height: 5,),
              Text(
                "3999 DDK",
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
        const SizedBox(height: 30,),

        // Baby Pack
        Container(
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
                "Toddler Pack",
                style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w200,
                    color: Colors.white
                ),
              ),
              const SizedBox(height: 5,),
              Text(
                "1999 DDK",
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
        const SizedBox(height: 30,),

        Container(
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
                "Family Portrait",
                style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w200,
                    color: Colors.white
                ),
              ),
              const SizedBox(height: 5,),
              Text(
                "1499 DDK",
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

      ],
    );
  }
}
