import 'package:flutter/material.dart';
import 'package:myproject1/screens/homepage.dart';
import 'package:myproject1/screens/login_screen.dart';
import 'package:flutter/services.dart';
import 'package:myproject1/utilities/constants.dart';

class Complaints extends StatefulWidget {
  @override
  _ComplaintsState createState() => _ComplaintsState();
}

class _ComplaintsState extends State<Complaints> {
  Widget _buildComp() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          'Complaints',
          style: kLabelStyle,
        ),
        SizedBox(height: 10.0),
        Container(
          alignment: Alignment.centerLeft,
          decoration: kBoxDecorationStyle,
          height: 60.0,
          child: TextField(
            cursorColor: Colors.white,
            style: TextStyle(
              color: Colors.white,
              fontFamily: 'OpenSans',
            ),
            decoration: InputDecoration(
              border: InputBorder.none,
              contentPadding: EdgeInsets.only(top: 14.0),
              prefixIcon: Icon(
                Icons.comment_bank,
                color: Colors.white,
              ),
              hintText: 'Describe the Problem you are facing...',
              hintStyle: kHintTextStyle,
            ),
            maxLines: 5,
            keyboardType: TextInputType.multiline,
            maxLength: 100,
            obscureText: false,
          ),
        ),
      ],
    );
  }

  void _showToast(BuildContext context) {
    final scaffold = ScaffoldMessenger.of(context);
    scaffold.showSnackBar(
      SnackBar(
        content: const Text('Got your complaint'),
        action: SnackBarAction(
            label: 'UNDO', onPressed: scaffold.hideCurrentSnackBar),
      ),
    );
  }

  Widget _buildSumbit() {
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
          'Submit',
          style: TextStyle(
            color: Colors.black,
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
          title: Text("Your Complaints"),
          backgroundColor: Color.fromARGB(255, 224, 145, 41),
        ),
        body: ListView(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(10),
              child: Text(
                "Your Complaints",
                textScaleFactor: 2,
                style: TextStyle(
                  fontFamily: 'IndieFlower',
                  fontSize: 20,
                  foreground: Paint()
                    ..style = PaintingStyle.fill
                    ..strokeWidth = 2
                    ..color = Color.fromARGB(255, 224, 145, 41),
                ),
              ),
            ),
            _buildComp(),
            SizedBox(
              height: 50,
            ),
            _buildSumbit()
          ],
        ));
  }
}
