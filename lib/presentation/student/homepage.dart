import 'package:flutter/material.dart';
import 'package:myproject1/presentation/billpayment/bill_payment.dart';
import 'package:myproject1/presentation/complaints/complaint_reg_form.dart';
import 'package:myproject1/presentation/details/details.dart';
import 'package:myproject1/presentation/outgoing/outgoing.dart';

import 'package:myproject1/presentation/login/screen_login.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
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
                            builder: (context) => ComplaintRegisterForm()));
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
                          "Complaints",
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
                            builder: (context) => BillPayment()));
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
                          Icons.currency_rupee,
                          color: Colors.black,
                          size: 40.0,
                        ),
                        Text(
                          "Bill Payment",
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
                            builder: (context) => OutgoingRegister()));
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
                          Icons.app_registration,
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
                    Navigator.push(context,
                        new MaterialPageRoute(builder: (context) => Details()));
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
                        Text(
                          "View Details",
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
