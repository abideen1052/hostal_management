import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:myproject1/screens/widgets/form_widget.dart';

class screen_sd_details extends StatefulWidget {
  const screen_sd_details({Key? key}) : super(key: key);

  @override
  State<screen_sd_details> createState() => _screen_sd_detailsState();
}

class _screen_sd_detailsState extends State<screen_sd_details> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("CEM Hostel"),
        backgroundColor: Color.fromARGB(255, 224, 145, 41),
      ),

      //form
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            FormWidget(label: 'Name'),
            FormWidget(label: 'Admission no:'),
            FormWidget(label: 'Semester :'),
            FormWidget(label: 'Department :'),
            FormWidget(label: 'Room no :'),
            SizedBox(
              height: 25,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 150),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(primary: Colors.black),
                onPressed: () {},
                child: Text(
                  'Submit',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
