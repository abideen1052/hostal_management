// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'data_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class StudentRegisterModelAdapter extends TypeAdapter<StudentRegisterModel> {
  @override
  final int typeId = 1;

  @override
  StudentRegisterModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return StudentRegisterModel(
      name: fields[0] as String,
      adno: fields[1] as String,
      sem: fields[2] as String,
      dept: fields[3] as String,
      room: fields[4] as String,
      mob: fields[5] as String,
    );
  }

  @override
  void write(BinaryWriter writer, StudentRegisterModel obj) {
    writer
      ..writeByte(6)
      ..writeByte(0)
      ..write(obj.name)
      ..writeByte(1)
      ..write(obj.adno)
      ..writeByte(2)
      ..write(obj.sem)
      ..writeByte(3)
      ..write(obj.dept)
      ..writeByte(4)
      ..write(obj.room)
      ..writeByte(5)
      ..write(obj.mob);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is StudentRegisterModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class ComplainRegisterodelAdapter extends TypeAdapter<ComplainRegisterodel> {
  @override
  final int typeId = 2;

  @override
  ComplainRegisterodel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return ComplainRegisterodel(
      fields[0] as String,
    );
  }

  @override
  void write(BinaryWriter writer, ComplainRegisterodel obj) {
    writer
      ..writeByte(1)
      ..writeByte(0)
      ..write(obj.complaint);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ComplainRegisterodelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
