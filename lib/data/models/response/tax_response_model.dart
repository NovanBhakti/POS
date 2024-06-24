import 'dart:convert';

class TaxResponseModel {
  final String? status;
  final List<Tax>? data;

  TaxResponseModel({
    this.status,
    this.data,
  });

  factory TaxResponseModel.fromJson(String str) =>
      TaxResponseModel.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory TaxResponseModel.fromMap(Map<String, dynamic> json) =>
      TaxResponseModel(
        status: json["status"],
        data: json["data"] == null
            ? []
            : List<Tax>.from(json["data"]!.map((x) => Tax.fromMap(x))),
      );

  Map<String, dynamic> toMap() => {
        "status": status,
        "data":
            data == null ? [] : List<dynamic>.from(data!.map((x) => x.toMap())),
      };
}

class Tax {
  final int? id;
  final String? name;
  final String? value;
  final String? status;
  final DateTime? expiredAt;
  final DateTime? createdAt;
  final DateTime? updatedAt;

  Tax({
    this.id,
    this.name,
    this.value,
    this.status,
    this.expiredAt,
    this.createdAt,
    this.updatedAt,
  });

  factory Tax.fromJson(String str) => Tax.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Tax.fromMap(Map<String, dynamic> json) => Tax(
        id: json["id"],
        name: json["name"],
        value: json["value"],
        status: json["status"],
        expiredAt: json["expired_at"] == null
            ? null
            : DateTime.parse(json["expired_at"]),
        createdAt: json["created_at"] == null
            ? null
            : DateTime.parse(json["created_at"]),
        updatedAt: json["updated_at"] == null
            ? null
            : DateTime.parse(json["updated_at"]),
      );

  Map<String, dynamic> toMap() => {
        "id": id,
        "name": name,
        "value": value,
        "status": status,
        "expired_at":
            "${expiredAt!.year.toString().padLeft(4, '0')}-${expiredAt!.month.toString().padLeft(2, '0')}-${expiredAt!.day.toString().padLeft(2, '0')}",
        "created_at": createdAt?.toIso8601String(),
        "updated_at": updatedAt?.toIso8601String(),
      };
}
