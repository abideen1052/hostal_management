import 'package:flutter/cupertino.dart';
import 'package:myproject1/db/model/data_model.dart';

ValueNotifier<List<StudentRegisterModel>> studentListNotifier =
    ValueNotifier([]);

void addStudent(StudentRegisterModel value) {
  studentListNotifier.value.add(value);
  print(value.toString());
}
