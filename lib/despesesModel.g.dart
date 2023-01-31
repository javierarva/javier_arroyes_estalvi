// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'despesesModel.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class DespesesModelAdapter extends TypeAdapter<DespesesModel> {
  @override
  final int typeId = 0;

  @override
  DespesesModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return DespesesModel(
      data: fields[0] as String,
      categoria: fields[1] as String,
      tipus: fields[2] as String,
      concepte: fields[3] as String,
      quantitat: fields[4] as int,
    );
  }

  @override
  void write(BinaryWriter writer, DespesesModel obj) {
    writer
      ..writeByte(5)
      ..writeByte(0)
      ..write(obj.data)
      ..writeByte(1)
      ..write(obj.categoria)
      ..writeByte(2)
      ..write(obj.tipus)
      ..writeByte(3)
      ..write(obj.concepte)
      ..writeByte(4)
      ..write(obj.quantitat);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is DespesesModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
