import 'package:amvision_app/screens/home_screen.dart';
import 'package:flutter/material.dart';

// Possibly add a reference to a site where booking can be done (Both made for web and mobile platforms)

class Bookings extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return BookingsState();
  }
}

class BookingsState extends State<Bookings> {
  String dropdownValue = 'Photo Shoot';

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
          booking(),
        ],
      ),
    );
  }

  Widget booking() {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.only(top: 50, bottom: 10),
          child: Text("Booking",
              style: TextStyle(fontSize: 35, fontWeight: FontWeight.w200)),
        ),
        const SizedBox(
          height: 30,
        ),
        Container(
          alignment: Alignment.centerLeft,
          padding: EdgeInsets.only(left: 20, right: 20),
          child: Column(
            children: [
              Text(
                "Choose Service:",
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w200,
                    color: Colors.black),
              ),
              const SizedBox(
                height: 10,
              ),
              DropdownButton<String>(
                value: dropdownValue,
                iconSize: 24,
                elevation: 16,
                style: const TextStyle(color: Colors.black),
                isExpanded: true,
                underline: Container(
                  height: 1,
                  color: Colors.grey,
                ),
                onChanged: (String? newValue) {
                  setState(() {
                    dropdownValue = newValue!;
                  });
                },
                items: <String>[
                  'Photo Shoot',
                  'Video Shoot',
                  'Marriage Pack',
                  'Toddler Portrait',
                  'Family Portrait',
                  'Graduate Portrait'
                ].map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
              ),
            ],
          ),
        ),
        Container(
          padding: EdgeInsets.only(top: 50, left: 20),
          child: Row(
            children: [
              SizedBox(
                width: 150,
                child: TextFormField(
                  decoration: InputDecoration(
                      border: UnderlineInputBorder(),
                      labelText: 'Name'),
                ),
              ),

              const SizedBox(width: 40,),

              SizedBox(
                width: 150,
                child: TextFormField(
                  decoration: InputDecoration(
                      border: UnderlineInputBorder(),
                      labelText: 'Phone Number'),
                ),
              ),

            ],
          ),
        ),

        Container(
          padding: EdgeInsets.only(top: 20, left: 20),
          child: Row(
            children: [
              SizedBox(
                width: 150,
                child: TextFormField(
                  decoration: InputDecoration(
                      border: UnderlineInputBorder(),
                      labelText: 'Address'),
                ),
              ),

              const SizedBox(width: 40,),

              SizedBox(
                width: 150,
                child: TextFormField(
                  decoration: InputDecoration(
                      border: UnderlineInputBorder(),
                      labelText: 'E-Mail'),
                ),
              ),

            ],
          ),
        ),

        const SizedBox(height: 50,),

        Container(
          child: SizedBox(
            width: 250,
            child: TextFormField(
              decoration: InputDecoration(
                  border: UnderlineInputBorder(),
                  labelText: 'Comments'),
            ),
          ),
        ),

        Container(
          padding: EdgeInsets.only(top: 75),
          alignment: Alignment.center,
          child: SizedBox(
            height: 60,
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
                    context, MaterialPageRoute(builder: (context) =>HomeScreen()));
              },
              child: Text(
                "Submit",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w200
                ),
              ),
            ),
          ),
        ),

      ],
    );
  }
}
