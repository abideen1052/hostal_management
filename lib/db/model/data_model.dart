import 'package:hive/hive.dart';
part 'data_model.g.dart';

@HiveType(typeId: 1)
class StudentRegisterModel {
  @HiveField(0)
  final String name;
  @HiveField(1)
  final String adno;
  @HiveField(2)
  final String sem;
  @HiveField(3)
  final String dept;
  @HiveField(4)
  final String room;
  @HiveField(5)
  final String mob;

  StudentRegisterModel({
    required this.name,
    required this.adno,
    required this.sem,
    required this.dept,
    required this.room,
    required this.mob,
  });
}

@HiveType(typeId: 2)
class ComplainRegisterodel {
  @HiveField(0)
  final String complaint;

  ComplainRegisterodel({
    required this.complaint,
  });
}
