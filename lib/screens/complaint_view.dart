import 'package:flutter/material.dart';

class ScreenComplaintView extends StatefulWidget {
  const ScreenComplaintView({Key? key}) : super(key: key);

  @override
  State<ScreenComplaintView> createState() => _ScreenComplaintViewState();
}

class _ScreenComplaintViewState extends State<ScreenComplaintView> {
  @override
  Widget build(BuildContext context) {
    Column();
    return Scaffold(
      appBar: AppBar(
        title: Text("CEM Hostel"),
        backgroundColor: Color.fromARGB(255, 224, 145, 41),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                  height: 200,
                  width: 600,
                ),
                Container(
                  height: 200,
                  width: 600,
                  color: Colors.black,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
