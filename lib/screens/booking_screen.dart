import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:cool_alert/cool_alert.dart';



// Possibly add a reference to a site where booking can be done (Both made for web and mobile platforms)

class Bookings extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return BookingsState();
  }
}

class BookingsState extends State<Bookings> {

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
        padding: EdgeInsets.only(top: MediaQuery.of(context).padding.top),
        // Override the default appbar restriction for widgets
        children: [
          booking(),
        ],
      ),
    );
  }

  // Link to form for booking
  Widget booking() {

    return Column(
      children: [
        Container(
          padding: EdgeInsets.only(top: 50, bottom: 150),
          child: Text("Booking",
              style: TextStyle(fontSize: 35, fontWeight: FontWeight.w200)),
        ),
        Container(
          padding: EdgeInsets.only(top: 75),
          alignment: Alignment.center,
          child: SizedBox(
            height: 100,
            width: 200,
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
                launch('https://form.123formbuilder.com/5997884/form');
              },
              child: Text(
                "Go to booking",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w200),
              ),
            ),
          ),
        ),
      ],
    );
  }

// in-app form
/*  Widget booking() {
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
                  '!SEE PRICES TAB FOR MORE INFORMATION!',
                  'Studio Photography (1)',
                  'Studio Photography (2)',
                  'Studio Photography (3)',
                  'Outdoor Photography (1)',
                  'Outdoor Photography (2)',
                  'Outdoor Photography (3)',
                  'Outdoor Photography (4)',
                  'Events Photography (1)',
                  'Events Photography (2)',
                  'Events Photography (3)',
                  'Videography (1)',
                  'Videography (2)',
                  'Videography (3)',
                  'Videography (4)',
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
                      border: UnderlineInputBorder(), labelText: 'Name'),
                ),
              ),
              const SizedBox(
                width: 40,
              ),
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
                      border: UnderlineInputBorder(), labelText: 'Address'),
                ),
              ),
              const SizedBox(
                width: 40,
              ),
              SizedBox(
                width: 150,
                child: TextFormField(
                  decoration: InputDecoration(
                      border: UnderlineInputBorder(), labelText: 'E-Mail'),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 50,
        ),
        Container(
          child: SizedBox(
            width: 250,
            child: TextFormField(
              decoration: InputDecoration(
                  border: UnderlineInputBorder(), labelText: 'Comments'),
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
                CoolAlert.show(
                  context: context,
                  title: "Order Confirmation\n",
                  type: CoolAlertType.success,
                  text: "A confirmation was sent to the email you provided. \n\n"
                      "Check your spam folder if you are unable to find the email. \n\n "
                      "You will be contacted further about your order.",
                  onConfirmBtnTap: () => Navigator.push(
                      context, MaterialPageRoute(builder: (context) =>HomeScreen())),
                );

                //send email to customer/owner

              },
              child: Text(
                "Submit",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w200),
              ),
            ),
          ),
        ),
      ],
    );
  }*/
}
