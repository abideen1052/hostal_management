import 'package:flutter/material.dart';

class BillPayment extends StatelessWidget {
  const BillPayment({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("CEM Hostel"),
        backgroundColor: Color.fromARGB(255, 224, 145, 41),
      ),
      body: Center(
          child: Container(
        child: Text('Bill Payment'),
      )),
    );
  }
}
