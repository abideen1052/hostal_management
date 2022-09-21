import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class ScreenAttendance extends StatelessWidget {
  const ScreenAttendance({Key? key}) : super(key: key);

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
                Container(
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
                        Icons.assessment_outlined,
                        color: Colors.black,
                        size: 40.0,
                      ),
                      Text(
                        " Room 1",
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
                Container(
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
                        Icons.assessment_outlined,
                        color: Colors.black,
                        size: 40.0,
                      ),
                      Text(
                        "Room 2",
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
                Container(
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
                        Icons.assessment_outlined,
                        color: Colors.black,
                        size: 40.0,
                      ),
                      Text(
                        "Room 3",
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
                Container(
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
                        Icons.assessment_outlined,
                        color: Colors.black,
                        size: 40.0,
                      ),
                      Text(
                        "Room 4",
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
                GestureDetector(
                  onTap: () {},
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
                          Icons.assessment_outlined,
                          color: Colors.black,
                          size: 40.0,
                        ),
                        Text(
                          "Room 5",
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
                Container(
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
                        Icons.assessment_outlined,
                        color: Colors.black,
                        size: 40.0,
                      ),
                      Text(
                        "Room 6",
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
              ],
            )),
          ],
        ));
  }
}
