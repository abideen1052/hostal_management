import 'package:flutter/material.dart';
import 'package:myproject1/screens/homepage.dart';

class ContactUs extends StatefulWidget {
  @override
  _ContactUsState createState() => _ContactUsState();
}

class _ContactUsState extends State<ContactUs> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Packages"),
          backgroundColor: Colors.cyan[400],
        ),
        body: ListView(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(10),
              child: Text(
                "Contact Us",
                textScaleFactor: 2,
                style: TextStyle(
                  fontFamily: 'IndieFlower',
                  fontSize: 20,
                  foreground: Paint()
                    ..style = PaintingStyle.stroke
                    ..strokeWidth = 2
                    ..color = Colors.cyan[700]!,
                ),
                textAlign: TextAlign.left,
              ),
            ),
            Center(
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            new MaterialPageRoute(
                                builder: (context) => MyHomePage()));
                      },
                      child: Container(
                        margin: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: Color(0xFF73EEF5),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Icon(
                              Icons.home,
                              color: Colors.blueAccent,
                              size: 40.0,
                            ),
                            Text(
                              "            Contact Number: 1234567890                  ",
                              style: TextStyle(
                                color: Color(0xFF03A9F4),
                                fontWeight: FontWeight.bold,
                                fontFamily: 'OpenSans',
                                fontSize: 15,
                              ),
                              textAlign: TextAlign.left,
                            ),
                          ],
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            new MaterialPageRoute(
                                builder: (context) => MyHomePage()));
                      },
                      child: Container(
                        margin: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: Color(0xFF73EEF5),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Icon(
                              Icons.home,
                              color: Colors.blueAccent,
                              size: 40.0,
                            ),
                            Text(
                              "            Email at:HostelsSukkur@gmail.com        ",
                              style: TextStyle(
                                color: Color(0xFF03A9F4),
                                fontWeight: FontWeight.bold,
                                fontFamily: 'OpenSans',
                                fontSize: 15,
                              ),
                              textAlign: TextAlign.left,
                            ),
                          ],
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            new MaterialPageRoute(
                                builder: (context) => MyHomePage()));
                      },
                      child: Container(
                        margin: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: Color(0xFF73EEF5),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Icon(
                              Icons.home,
                              color: Colors.blueAccent,
                              size: 40.0,
                            ),
                            Text(
                              "            Visit Us at:www.HostelsSukkur.com        ",
                              style: TextStyle(
                                color: Color(0xFF03A9F4),
                                fontWeight: FontWeight.bold,
                                fontFamily: 'OpenSans',
                                fontSize: 15,
                              ),
                              textAlign: TextAlign.left,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ]),
            ),
            Center(
              child: ElevatedButton(
                child: Text(
                  'Go to Main Menu',
                  style: TextStyle(
                    color: Color(0xFF73EEF5),
                    fontWeight: FontWeight.bold,
                    fontFamily: 'OpenSans',
                    fontSize: 20,
                  ),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => MyHomePage()),
                  );
                },
                style: ElevatedButton.styleFrom(primary: Colors.white),
              ),
            ),
          ],
        ));
  }
}
