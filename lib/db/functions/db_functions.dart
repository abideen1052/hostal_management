import 'package:flutter/cupertino.dart';
import 'package:hive/hive.dart';
import 'package:myproject1/db/model/data_model.dart';

ValueNotifier<List<StudentRegisterModel>> studentListNotifier =
    ValueNotifier([]);

Future<void> addStudent(StudentRegisterModel value) async {
  final studentDB = await Hive.openBox<StudentRegisterModel>('student_db');
  await studentDB.add(value);
  studentListNotifier.value.add(value);
  studentListNotifier.notifyListeners();
}

Future<void> getAllStudents() async {
  final studentDB = await Hive.openBox<StudentRegisterModel>('student_db');
  studentListNotifier.value.clear();
  studentListNotifier.value.addAll(studentDB.values);
  studentListNotifier.notifyListeners();
}

Future<void> addComplaint(StudentRegisterModel value) async {
  final complaintDB = await Hive.openBox<StudentRegisterModel>('student_db');
  await complaintDB.add(value);
  studentListNotifier.value.add(value);
  studentListNotifier.notifyListeners();
}
