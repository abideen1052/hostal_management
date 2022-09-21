import 'package:flutter/material.dart';
import 'package:myproject1/db/functions/db_functions.dart';
import 'package:myproject1/db/model/data_model.dart';

class ComplaintRegisterForm extends StatelessWidget {
  ComplaintRegisterForm({Key? key}) : super(key: key);
  final _complaintController = TextEditingController();
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
          Text('Enter your complaint here'),
          SizedBox(
            width: 400,
            height: 50,
            child: Padding(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: TextFormField(
                controller: _complaintController,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Colors.black, width: 300))),
              ),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 450),
            child: Center(
              child: SizedBox(
                height: 40,
                width: 90,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(primary: Colors.black),
                  onPressed: () {
                    onAddComplaintButtonClicked();
                  },
                  child: Text(
                    'Submit',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Future<void> onAddComplaintButtonClicked() async {
    final _complaintReg = _complaintController.text.trim();

    if (_complaintReg.isEmpty) {
      return;
    }

    final _complaint = ComplainRegisterodel(complaint: _complaintReg);
    addComplaint(_complaint);
  }
}
