// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ingressosModel.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class IngressosModelAdapter extends TypeAdapter<IngressosModel> {
  @override
  final int typeId = 0;

  @override
  IngressosModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return IngressosModel(
      data: fields[0] as String,
      categoria: fields[1] as String,
      tipus: fields[2] as String,
      concepte: fields[3] as String,
      quantitat: fields[4] as int,
    );
  }

  @override
  void write(BinaryWriter writer, IngressosModel obj) {
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
      other is IngressosModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
