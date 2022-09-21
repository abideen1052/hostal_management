import 'package:flutter/material.dart';

class StaffScreen extends StatelessWidget {
  const StaffScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("CEM Hostel"),
        backgroundColor: Color.fromARGB(255, 224, 145, 41),
      ),
      body: Center(
          child: Container(
        child: Text('Staff'),
      )),
    );
  }
}
