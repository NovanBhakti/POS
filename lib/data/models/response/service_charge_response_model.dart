import 'dart:convert';

class ServiceResponseModel {
  final String? status;
  final List<Service>? data;

  ServiceResponseModel({
    this.status,
    this.data,
  });

  factory ServiceResponseModel.fromJson(String str) =>
      ServiceResponseModel.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory ServiceResponseModel.fromMap(Map<String, dynamic> json) =>
      ServiceResponseModel(
        status: json["status"],
        data: json["data"] == null
            ? []
            : List<Service>.from(json["data"]!.map((x) => Service.fromMap(x))),
      );

  Map<String, dynamic> toMap() => {
        "status": status,
        "data":
            data == null ? [] : List<dynamic>.from(data!.map((x) => x.toMap())),
      };
}

class Service {
  final int? id;
  final String? name;
  final String? description;
  final String? type;
  final String? value;
  final String? status;
  final dynamic expiredAt;
  final DateTime? createdAt;
  final DateTime? updatedAt;

  Service({
    this.id,
    this.name,
    this.description,
    this.type,
    this.value,
    this.status,
    this.expiredAt,
    this.createdAt,
    this.updatedAt,
  });

  factory Service.fromJson(String str) => Service.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Service.fromMap(Map<String, dynamic> json) => Service(
        id: json["id"],
        name: json["name"],
        description: json["description"],
        type: json["type"],
        value: json["value"],
        status: json["status"],
        expiredAt: json["expired_at"],
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
        "description": description,
        "type": type,
        "value": value,
        "status": status,
        "expired_at": expiredAt,
        "created_at": createdAt?.toIso8601String(),
        "updated_at": updatedAt?.toIso8601String(),
      };
}
