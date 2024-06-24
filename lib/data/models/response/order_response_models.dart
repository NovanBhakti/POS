import 'dart:convert';

class OrderResponseModel {
  final String? status;
  final List<Order>? data;

  OrderResponseModel({
    this.status,
    this.data,
  });

  factory OrderResponseModel.fromJson(String str) =>
      OrderResponseModel.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory OrderResponseModel.fromMap(Map<String, dynamic> json) =>
      OrderResponseModel(
        status: json["status"],
        data: json["data"] == null
            ? []
            : List<Order>.from(json["data"]!.map((x) => Order.fromMap(x))),
      );

  Map<String, dynamic> toMap() => {
        "status": status,
        "data":
            data == null ? [] : List<dynamic>.from(data!.map((x) => x.toMap())),
      };
}

class Order {
  final int? id;
  final int? paymentAmount;
  final int? subTotal;
  final int? tax;
  final int? discount;
  final int? serviceCharge;
  final int? total;
  final String? paymentMethod;
  final int? totalItem;
  final int? idKasir;
  final String? namaKasir;
  final DateTime? transactionTime;
  final DateTime? createdAt;
  final DateTime? updatedAt;

  Order({
    this.id,
    this.paymentAmount,
    this.subTotal,
    this.tax,
    this.discount,
    this.serviceCharge,
    this.total,
    this.paymentMethod,
    this.totalItem,
    this.idKasir,
    this.namaKasir,
    this.transactionTime,
    this.createdAt,
    this.updatedAt,
  });

  factory Order.fromJson(String str) => Order.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Order.fromMap(Map<String, dynamic> json) => Order(
        id: json["id"],
        paymentAmount: json["payment_amount"],
        subTotal: json["sub_total"],
        tax: json["tax"],
        discount: json["discount"],
        serviceCharge: json["service_charge"],
        total: json["total"],
        paymentMethod: json["payment_method"],
        totalItem: json["total_item"],
        idKasir: json["id_kasir"],
        namaKasir: json["nama_kasir"],
        transactionTime: json["transaction_time"] == null
            ? null
            : DateTime.parse(json["transaction_time"]),
        createdAt: json["created_at"] == null
            ? null
            : DateTime.parse(json["created_at"]),
        updatedAt: json["updated_at"] == null
            ? null
            : DateTime.parse(json["updated_at"]),
      );

  Map<String, dynamic> toMap() => {
        "id": id,
        "payment_amount": paymentAmount,
        "sub_total": subTotal,
        "tax": tax,
        "discount": discount,
        "service_charge": serviceCharge,
        "total": total,
        "payment_method": paymentMethod,
        "total_item": totalItem,
        "id_kasir": idKasir,
        "nama_kasir": namaKasir,
        "transaction_time": transactionTime?.toIso8601String(),
        "created_at": createdAt?.toIso8601String(),
        "updated_at": updatedAt?.toIso8601String(),
      };
}
