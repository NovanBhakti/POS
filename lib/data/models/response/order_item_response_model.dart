import 'dart:convert';

class OrderItemResponseModel {
  final String? status;
  final List<OrderItem>? data;

  OrderItemResponseModel({
    this.status,
    this.data,
  });

  factory OrderItemResponseModel.fromJson(String str) =>
      OrderItemResponseModel.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory OrderItemResponseModel.fromMap(Map<String, dynamic> json) =>
      OrderItemResponseModel(
        status: json["status"],
        data: json["data"] == null
            ? []
            : List<OrderItem>.from(
                json["data"]!.map((x) => OrderItem.fromMap(x))),
      );

  Map<String, dynamic> toMap() => {
        "status": status,
        "data":
            data == null ? [] : List<dynamic>.from(data!.map((x) => x.toMap())),
      };
}

class OrderItem {
  final int? id;
  final int? orderId;
  final int? productId;
  final int? quantity;
  final int? price;
  final DateTime? createdAt;
  final DateTime? updatedAt;

  OrderItem({
    this.id,
    this.orderId,
    this.productId,
    this.quantity,
    this.price,
    this.createdAt,
    this.updatedAt,
  });

  factory OrderItem.fromJson(String str) => OrderItem.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory OrderItem.fromMap(Map<String, dynamic> json) => OrderItem(
        id: json["id"],
        orderId: json["order_id"],
        productId: json["product_id"],
        quantity: json["quantity"],
        price: json["price"],
        createdAt: json["created_at"] == null
            ? null
            : DateTime.parse(json["created_at"]),
        updatedAt: json["updated_at"] == null
            ? null
            : DateTime.parse(json["updated_at"]),
      );

  Map<String, dynamic> toMap() => {
        "id": id,
        "order_id": orderId,
        "product_id": productId,
        "quantity": quantity,
        "price": price,
        "created_at": createdAt?.toIso8601String(),
        "updated_at": updatedAt?.toIso8601String(),
      };
}
