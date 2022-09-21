import 'package:flutter/cupertino.dart';
import 'package:hive/hive.dart';
import 'package:myproject1/db/model/data_model.dart';

ValueNotifier<List<StudentRegisterModel>> studentListNotifier =
    ValueNotifier([]);
ValueNotifier<List<ComplainRegisterodel>> complaintListNotifier =
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

Future<void> addComplaint(ComplainRegisterodel value) async {
  final complaintDB = await Hive.openBox<ComplainRegisterodel>('complaint_db');
  await complaintDB.add(value);
  complaintListNotifier.value.add(value);
  complaintListNotifier.notifyListeners();
}

Future<void> getAllComplaints() async {
  final complaintDB = await Hive.openBox<ComplainRegisterodel>('complaint_db');
  complaintListNotifier.value.clear();
  complaintListNotifier.value.addAll(complaintDB.values);
  complaintListNotifier.notifyListeners();
}
