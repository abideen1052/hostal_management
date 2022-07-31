import 'package:flutter/material.dart';
import 'package:myproject1/screens/homepage.dart';
import 'package:flutter/services.dart';
import 'package:myproject1/screens/packages.dart';
import 'package:myproject1/utilities/constants.dart';

class Allotment extends StatefulWidget {
  @override
  _AllotmentState createState() => _AllotmentState();
}

class _AllotmentState extends State<Allotment> {
  Widget _buildAllot(String display, IconData got) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          display,
          style: kLabelStyle,
        ),
        SizedBox(height: 10.0),
        Container(
          alignment: Alignment.centerLeft,
          decoration: kBoxDecorationStyle,
          height: 60.0,
          child: TextField(
            style: TextStyle(
              color: Colors.white,
              fontFamily: 'OpenSans',
            ),
            decoration: InputDecoration(
              border: InputBorder.none,
              contentPadding: EdgeInsets.only(top: 14.0),
              prefixIcon: Icon(
                got,
                color: Colors.white,
              ),
              hintText: display,
              hintStyle: kHintTextStyle,
            ),
            maxLines: 1,
            keyboardType: TextInputType.number,
            maxLength: 12,
          ),
        ),
      ],
    );
  }

  void _showToast(BuildContext context) {
    final scaffold = ScaffoldMessenger.of(context);
    scaffold.showSnackBar(
      SnackBar(
        content: const Text('You will be contacted soon for available place'),
        action: SnackBarAction(
            label: 'UNDO', onPressed: scaffold.hideCurrentSnackBar),
      ),
    );
  }

  Widget _buildConfirm() {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 25.0),
      width: double.infinity,
      child: RaisedButton(
        onPressed: () {
          _showToast(context);
          Navigator.push(context,
              new MaterialPageRoute(builder: (context) => MyHomePage()));
        },
        elevation: 5.0,
        padding: EdgeInsets.all(15.0),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30.0),
        ),
        color: Colors.white,
        child: Text(
          "Confirm",
          style: TextStyle(
            color: Color(0xFF73EEF5),
            letterSpacing: 1.5,
            fontSize: 18.0,
            fontWeight: FontWeight.bold,
            fontFamily: 'OpenSans',
          ),
        ),
      ),
    );
  }

  Widget _buildOffers() {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 25.0),
      width: double.infinity,
      child: RaisedButton(
        onPressed: () {
          Navigator.push(
              context, new MaterialPageRoute(builder: (context) => Packages()));
        },
        elevation: 5.0,
        padding: EdgeInsets.all(15.0),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30.0),
        ),
        color: Colors.white,
        child: Text(
          "Check Our Offers",
          style: TextStyle(
            color: Color(0xFF73EEF5),
            letterSpacing: 1.5,
            fontSize: 18.0,
            fontWeight: FontWeight.bold,
            fontFamily: 'OpenSans',
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Allot rooms`"),
          backgroundColor: Colors.cyan[400],
        ),
        body: ListView(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(10),
              child: Text(
                "Fill the information...",
                textScaleFactor: 2,
                style: TextStyle(
                  fontFamily: 'IndieFlower',
                  fontSize: 20,
                  foreground: Paint()
                    ..style = PaintingStyle.stroke
                    ..strokeWidth = 2
                    ..color = Colors.cyan[700]!,
                ),
              ),
            ),
            _buildAllot("Room you need", Icons.room_outlined),
            _buildAllot("Number of people", Icons.people),
            _buildAllot("Your Contact", Icons.contact_support),
            _buildConfirm(),
            _buildOffers(),
          ],
        ));
  }
}
