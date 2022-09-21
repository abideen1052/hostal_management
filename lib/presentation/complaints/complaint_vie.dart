import 'package:flutter/material.dart';

import 'package:myproject1/db/functions/db_functions.dart';
import 'package:myproject1/db/model/data_model.dart';

class ComplaintView extends StatelessWidget {
  const ComplaintView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    getAllComplaints();
    return Scaffold(
      appBar: AppBar(
        title: Text("CEM Hostel"),
        backgroundColor: Color.fromARGB(255, 224, 145, 41),
      ),
      body: ValueListenableBuilder(
        valueListenable: complaintListNotifier,
        builder: (BuildContext ctx, List<ComplainRegisterodel> complaintList,
            Widget? child) {
          return ListView.separated(
              itemBuilder: (ctx, index) {
                final data = complaintList[index];
                return Container(
                    decoration: BoxDecoration(
                        color: Colors.grey, border: Border.all(width: 2)),
                    height: 200,
                    width: 600,
                    child: Text(data.complaint));
              },
              separatorBuilder: (ctx, index) {
                return Divider();
              },
              itemCount: complaintList.length);
        },
      ),
    );
  }
}
