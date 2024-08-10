import 'dart:convert'; // Tambahkan impor ini
import 'package:dartz/dartz.dart';
import 'package:flutter_posresto_app/core/constants/variables.dart';
import 'package:flutter_posresto_app/data/datasources/auth_local_datasource.dart';
import 'package:flutter_posresto_app/data/models/response/order_response_models.dart';
import 'package:flutter_posresto_app/presentation/home/models/order_model.dart';
import 'package:http/http.dart' as http;

class OrderRemoteDatasource {
  Future<bool> saveOrder(OrderModel orderModel) async {
    final authData = await AuthLocalDatasource().getAuthData();
    final response = await http.post(
        Uri.parse('${variables.baseUrl}/api/save-order'),
        body: orderModel.toJson(),
        headers: {
          'Authorization': 'Bearer ${authData.token}',
          'accept': 'application/json',
          'content-type': 'application/json'
        });
    if (response.statusCode == 200) {
      return true;
    } else {
      return false;
    }
  }

  Future<Either<String, OrderResponseModel>> getOrders() async {
    final authData = await AuthLocalDatasource().getAuthData();
    final response =
        await http.get(Uri.parse('${variables.baseUrl}/api/orders'), headers: {
      'Authorization': 'Bearer ${authData.token}',
      'accept': 'application/json',
      'content-type': 'application/json'
    });
    if (response.statusCode == 200) {
      return Right(OrderResponseModel.fromJson(response.body));
    } else {
      return Left('Failed to get orders');
    }
  }

  Future<dynamic> getOrderHistory() async {
    final authData = await AuthLocalDatasource().getAuthData();
    final response =
        await http.get(Uri.parse('${variables.baseUrl}/api/orders'), headers: {
      'Authorization': 'Bearer ${authData.token}',
      'accept': 'application/json',
      'content-type': 'application/json'
    });
    if (response.statusCode == 200) {
      return jsonDecode(response.body);
    } else {
      return null;
    }
  }

  Future<dynamic> getOrderItems(String orderId) async {
    final authData = await AuthLocalDatasource().getAuthData();
    final response = await http.get(
        Uri.parse('${variables.baseUrl}/api/orders/$orderId/items'),
        headers: {
          'Authorization': 'Bearer ${authData.token}',
          'accept': 'application/json',
          'content-type': 'application/json'
        });
    if (response.statusCode == 200) {
      return jsonDecode(response.body);
    } else {
      throw Exception('Failed to load order items');
    }
  }

  Future<dynamic> getOrdersWithItems() async {
    final response =
        await http.get(Uri.parse('${variables.baseUrl}/orders-with-items'));
    if (response.statusCode == 200) {
      return jsonDecode(response.body);
    } else {
      throw Exception('Failed to load orders with items');
    }
  }
}
