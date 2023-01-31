import 'package:hive/hive.dart';
part 'ingressosModel.g.dart';

@HiveType(typeId: 0)
class IngressosModel {
  @HiveField(0)
  String data;

  @HiveField(1)
  String categoria;

  @HiveField(2)
  String tipus;

  @HiveField(3)
  String concepte;

  @HiveField(4)
  int quantitat;

  IngressosModel({required this.data, required this.categoria, required this.tipus, required this.concepte, required this.quantitat});
}