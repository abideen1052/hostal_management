import 'package:flutter/material.dart';
import 'package:myproject1/screens/complaint_view.dart';
import 'package:myproject1/screens/contactus.dart';
import 'package:myproject1/screens/login_screen.dart';
import 'package:myproject1/screens/allotment.dart';
import 'package:myproject1/screens/complaint.dart';
import 'package:myproject1/screens/packages.dart';
import 'package:myproject1/screens/screen_login.dart';
import 'package:myproject1/screens/staff.dart';
import 'package:myproject1/screens/student_reg.dart';

class ScreenAdmin extends StatefulWidget {
  @override
  _ScreenAdminState createState() => _ScreenAdminState();
}

class _ScreenAdminState extends State<ScreenAdmin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("CEM Hostel"),
          backgroundColor: Color.fromARGB(255, 224, 145, 41),
        ),
        body: ListView(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(50),
              child: Text(
                "Welcome to CEM Hostel",
                textScaleFactor: 2,
                style: TextStyle(
                  fontFamily: 'IndieFlowe',
                  fontSize: 20,
                  foreground: Paint()
                    ..style = PaintingStyle.fill
                    ..strokeWidth = 2
                    ..color = Color.fromARGB(255, 224, 145, 41),
                ),
              ),
            ),
            Center(
                child: Column(
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        new MaterialPageRoute(
                            builder: (context) => ScreenComplaintView()));
                  },
                  child: Container(
                    margin: EdgeInsets.all(10),
                    height: 60.0,
                    width: 250.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      color: Color.fromARGB(255, 224, 145, 41),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(
                          Icons.assignment,
                          color: Colors.black,
                          size: 40.0,
                        ),
                        Text(
                          " view Complaints",
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'OpenSans',
                            fontSize: 20,
                          ),
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
                            builder: (context) => Complaints()));
                  },
                  child: Container(
                    margin: EdgeInsets.all(10),
                    height: 60.0,
                    width: 250.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      color: Color.fromARGB(255, 224, 145, 41),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(
                          Icons.data_exploration_outlined,
                          color: Colors.black,
                          size: 40.0,
                        ),
                        Text(
                          "student details",
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'OpenSans',
                            fontSize: 20,
                          ),
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
                            builder: (context) => Complaints()));
                  },
                  child: Container(
                    margin: EdgeInsets.all(10),
                    height: 60.0,
                    width: 250.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      color: Color.fromARGB(255, 224, 145, 41),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(
                          Icons.file_copy_outlined,
                          color: Colors.black,
                          size: 40.0,
                        ),
                        Text(
                          "Outgoing register",
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'OpenSans',
                            fontSize: 20,
                          ),
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
                            builder: (context) => screen_sd_details()));
                  },
                  child: Container(
                    margin: EdgeInsets.all(10),
                    height: 60.0,
                    width: 250.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      color: Color.fromARGB(255, 224, 145, 41),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(
                          Icons.app_registration_sharp,
                          color: Colors.black,
                          size: 40.0,
                        ),
                        Text(
                          "student registration",
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'OpenSans',
                            fontSize: 20,
                          ),
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
                            builder: (context) => ScreenStaff()));
                  },
                  child: Container(
                    margin: EdgeInsets.all(10),
                    height: 60.0,
                    width: 250.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      color: Color.fromARGB(255, 224, 145, 41),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(
                          Icons.align_vertical_top_sharp,
                          color: Colors.black,
                          size: 40.0,
                        ),
                        Text(
                          "staff ",
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'OpenSans',
                            fontSize: 20,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            )),
            SizedBox(
              height: 30,
            ),
            Center(
              child: ElevatedButton(
                child: Text(
                  'Logout',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'OpenSans',
                    fontSize: 20,
                  ),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ScreenLogin()),
                  );
                },
                style: ElevatedButton.styleFrom(primary: Colors.white),
              ),
            ),
          ],
        ));
  }
}
