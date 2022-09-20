import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:myproject1/screens/complaint.dart';
import 'package:myproject1/screens/complaint_view.dart';
import 'package:myproject1/presentation/login/screen_login.dart';
import 'package:myproject1/screens/student_reg/student_reg.dart';

class ScreenStaff extends StatefulWidget {
  const ScreenStaff({Key? key}) : super(key: key);

  @override
  State<ScreenStaff> createState() => _ScreenStaffState();
}

class _ScreenStaffState extends State<ScreenStaff> {
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
                          builder: (context) => SrcreenStudenRegister()));
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
      ),
    );
  }
}
