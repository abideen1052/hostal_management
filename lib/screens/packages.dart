import 'package:flutter/material.dart';
import 'package:myproject1/screens/homepage.dart';
import 'package:myproject1/screens/login_screen.dart';

class Packages extends StatefulWidget {
  @override
  _PackagesState createState() => _PackagesState();
}

class _PackagesState extends State<Packages> {
  void _showToast(BuildContext context) {
    final scaffold = ScaffoldMessenger.of(context);
    scaffold.showSnackBar(
      SnackBar(
        content: const Text('Your Offer is booked'),
        action: SnackBarAction(
            label: 'UNDO', onPressed: scaffold.hideCurrentSnackBar),
      ),
    );
  }

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
                "Offers : Only Room",
                textScaleFactor: 2,
                style: TextStyle(
                  fontFamily: 'IndieFlower',
                  fontSize: 15,
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
                        _showToast(context);
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
                              "1 Month                       29.99\$",
                              style: TextStyle(
                                color: Color(0xFF03A9F4),
                                fontWeight: FontWeight.bold,
                                fontFamily: 'OpenSans',
                                fontSize: 25,
                              ),
                              textAlign: TextAlign.left,
                            ),
                          ],
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        _showToast(context);
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
                              "1 year                           300.0\$",
                              style: TextStyle(
                                color: Color(0xFF03A9F4),
                                fontWeight: FontWeight.bold,
                                fontFamily: 'OpenSans',
                                fontSize: 25,
                              ),
                              textAlign: TextAlign.left,
                            ),
                          ],
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        _showToast(context);
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
                              "2 year                          720.0\$",
                              style: TextStyle(
                                color: Color(0xFF03A9F4),
                                fontWeight: FontWeight.bold,
                                fontFamily: 'OpenSans',
                                fontSize: 25,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ]),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Text(
                "Offers: Room with 2 Times Meal",
                textScaleFactor: 2,
                style: TextStyle(
                  fontFamily: 'IndieFlower',
                  fontSize: 15,
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
                        _showToast(context);
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
                              "1 Month                       59.99\$",
                              style: TextStyle(
                                color: Color(0xFF03A9F4),
                                fontWeight: FontWeight.bold,
                                fontFamily: 'OpenSans',
                                fontSize: 25,
                              ),
                              textAlign: TextAlign.left,
                            ),
                          ],
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        _showToast(context);
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
                              "1 year                           500.0\$",
                              style: TextStyle(
                                color: Color(0xFF03A9F4),
                                fontWeight: FontWeight.bold,
                                fontFamily: 'OpenSans',
                                fontSize: 25,
                              ),
                              textAlign: TextAlign.left,
                            ),
                          ],
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        _showToast(context);
                        Navigator.push(
                            context,
                            new MaterialPageRoute(
                                builder: (context) => MyHomePage()));
                        _showToast(context);
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
                              "2 year                         1200.0\$",
                              style: TextStyle(
                                color: Color(0xFF03A9F4),
                                fontWeight: FontWeight.bold,
                                fontFamily: 'OpenSans',
                                fontSize: 25,
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
