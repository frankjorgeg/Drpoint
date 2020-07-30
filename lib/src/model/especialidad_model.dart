import 'dart:convert';

class EspecialidadModel {
  String name;
  String doctores;

  EspecialidadModel({
    this.name,
    this.doctores,
  });

  EspecialidadModel copyWith({
    String name,
    String doctores,

  }) =>
      EspecialidadModel(
        name: name ?? this.name,
        doctores: doctores ?? this.doctores,

      );

  factory EspecialidadModel.fromRawJson(String str) => EspecialidadModel.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory EspecialidadModel.fromJson(Map<String, dynamic> json) => EspecialidadModel(
    name: json["name"] == null ? null : json["name"],
    doctores: json["doctores"] == null ? null : json["doctores"],

  );

  Map<String, dynamic> toJson() => {
    "name": name == null ? null : name,
    "doctores": doctores == null ? null : doctores,

  };
}
