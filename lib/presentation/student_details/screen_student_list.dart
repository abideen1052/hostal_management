import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:myproject1/db/functions/db_functions.dart';

import '../../db/model/data_model.dart';

class StudentList extends StatelessWidget {
  const StudentList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    getAllStudents();
    return Scaffold(
      appBar: AppBar(
        title: Text("CEM Hostel"),
        backgroundColor: Color.fromARGB(255, 224, 145, 41),
      ),
      body: ValueListenableBuilder(
        valueListenable: studentListNotifier,
        builder: (BuildContext ctx, List<StudentRegisterModel> studentList,
            Widget? child) {
          return ListView.separated(
              itemBuilder: (ctx, index) {
                final data = studentList[index];
                return Container(
                  width: 30,
                  color: Colors.grey,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text('Name: '),
                              Text(data.name),
                            ],
                          ),
                          Row(
                            children: [
                              Text('Adm.no: '),
                              Text(data.adno),
                            ],
                          ),
                          Row(
                            children: [
                              Text('Semeester: '),
                              Text(data.sem),
                            ],
                          ),
                          Row(
                            children: [
                              Text('Department: '),
                              Text(data.dept),
                            ],
                          ),
                          Row(
                            children: [
                              Text('Room: '),
                              Text(data.room),
                            ],
                          ),
                          Row(
                            children: [
                              Text('Mob.no: '),
                              Text(data.mob),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
              separatorBuilder: (ctx, index) {
                return const Divider();
              },
              itemCount: studentList.length);
        },
      ),
    );
  }
}
