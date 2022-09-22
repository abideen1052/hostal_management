import 'package:flutter/material.dart';
import 'package:myproject1/db/functions/db_functions.dart';
import 'package:myproject1/db/model/data_model.dart';

class SrcreenStudenRegister extends StatelessWidget {
  SrcreenStudenRegister({Key? key}) : super(key: key);
  final _nameController = TextEditingController();
  final _adnoController = TextEditingController();
  final _semController = TextEditingController();
  final _deptController = TextEditingController();
  final _roomnoController = TextEditingController();
  final _mobnoController = TextEditingController();

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
            Padding(
              padding: const EdgeInsets.only(
                left: 300,
                top: 20,
              ),
              child: Row(
                children: [
                  Container(
                    width: 90,
                    child: Text('Name :'),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  SizedBox(
                    width: 400,
                    height: 40,
                    child: TextFormField(
                      controller: _nameController,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.black, width: 200))),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 300,
                top: 20,
              ),
              child: Row(
                children: [
                  Container(
                    width: 90,
                    child: Text('Adm.no :'),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  SizedBox(
                    width: 400,
                    height: 40,
                    child: TextFormField(
                      controller: _adnoController,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.black, width: 200))),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 300,
                top: 20,
              ),
              child: Row(
                children: [
                  Container(
                    width: 90,
                    child: Text('Semester :'),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  SizedBox(
                    width: 400,
                    height: 40,
                    child: TextFormField(
                      controller: _semController,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.black, width: 200))),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 300,
                top: 20,
              ),
              child: Row(
                children: [
                  Container(
                    width: 90,
                    child: Text('Department :'),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  SizedBox(
                    width: 400,
                    height: 40,
                    child: TextFormField(
                      controller: _deptController,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.black, width: 200))),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 300,
                top: 20,
              ),
              child: Row(
                children: [
                  Container(
                    width: 90,
                    child: Text('Room no :'),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  SizedBox(
                    width: 400,
                    height: 40,
                    child: TextFormField(
                      controller: _roomnoController,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.black, width: 200))),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 300,
                top: 20,
              ),
              child: Row(
                children: [
                  Container(
                    width: 90,
                    child: Text('Mob no :'),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  SizedBox(
                    width: 400,
                    height: 40,
                    child: TextFormField(
                      controller: _mobnoController,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.black, width: 200))),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 150),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(primary: Colors.black),
                onPressed: () {
                  onAddStudentButtonClicked();
                  Navigator.of(context).pop();
                },
                child: Text(
                  'Add Student',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Future<void> onAddStudentButtonClicked() async {
    final _name = _nameController.text.trim();
    final _adno = _adnoController.text.trim();
    final _sem = _semController.text.trim();
    final _dept = _deptController.text.trim();
    final _roomno = _roomnoController.text.trim();
    final _mobno = _mobnoController.text.trim();
    if (_name.isEmpty ||
        _adno.isEmpty ||
        _sem.isEmpty ||
        _dept.isEmpty ||
        _roomno.isEmpty ||
        _mobno.isEmpty) {
      return;
    }

    final _student = StudentRegisterModel(
        name: _name,
        adno: _adno,
        sem: _sem,
        dept: _dept,
        room: _roomno,
        mob: _mobno);

    addStudent(_student);
  }
}
