import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_posresto_app/data/datasources/order_remote_datasource.dart';
import 'package:flutter_posresto_app/data/datasources/product_remote_datasource.dart';
import 'package:intl/intl.dart';

class Test extends StatefulWidget {
  const Test({super.key});

  @override
  State<Test> createState() => _TestState();
}

class _TestState extends State<Test> {
  final OrderRemoteDatasource _orderRemoteDatasource = OrderRemoteDatasource();
  final ProductRemoteDatasource _productRemoteDatasource =
      ProductRemoteDatasource();

  // Method to fetch orders
  Future<List<dynamic>> fetchOrders() async {
    final orders = await _orderRemoteDatasource.getOrderHistory();
    return orders != null ? orders['data'] : [];
  }

  // Method to fetch order items by orderId
  Future<List<dynamic>> fetchOrderItems(String orderId) async {
    final orderItems =
        await _orderRemoteDatasource.getOrderItems(orderId.toString());
    return orderItems != null ? orderItems['data'] : [];
  }

  // Method to fetch product name by productId
  Future<String> fetchProductName(String productId) async {
    try {
      final product = await _productRemoteDatasource
          .getProductsOrders(productId.toString());
      return product != null ? product['name'] : 'Unknown';
    } catch (e) {
      print('Error fetching product name: $e');
      return 'Unknown';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Order History'),
      ),
      body: FutureBuilder<List<dynamic>>(
        future: fetchOrders(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
            return Center(child: Text('No orders found'));
          } else {
            return ListView.builder(
              itemCount: snapshot.data!.length,
              itemBuilder: (context, index) {
                final order = snapshot.data![index];
                return ExpansionTile(
                  title: Text('ORDER${order['id']}'),
                  subtitle: Text(DateFormat('dd-MM-yyyy hh:mm:ss')
                      .format(DateTime.parse(order['transaction_time']))),
                  children: [
                    FutureBuilder<List<dynamic>>(
                      future: fetchOrderItems(order['id'].toString()),
                      builder: (context, itemSnapshot) {
                        if (itemSnapshot.connectionState ==
                            ConnectionState.waiting) {
                          return Center(child: CircularProgressIndicator());
                        } else if (itemSnapshot.hasError) {
                          return Center(
                              child: Text('Error: ${itemSnapshot.error}'));
                        } else if (!itemSnapshot.hasData ||
                            itemSnapshot.data!.isEmpty) {
                          return Center(
                              child: Text('No items found for this order'));
                        } else {
                          return Column(
                            children: itemSnapshot.data!.map<Widget>((item) {
                              return FutureBuilder<String>(
                                future: fetchProductName(
                                    item['product_id'].toString()),
                                builder: (context, productNameSnapshot) {
                                  if (productNameSnapshot.connectionState ==
                                      ConnectionState.waiting) {
                                    return ListTile(
                                      title: Text(
                                          'Product ID: ${item['product_id']}'),
                                      subtitle: Text('Loading product name...'),
                                    );
                                  } else if (productNameSnapshot.hasError) {
                                    return ListTile(
                                      title: Text(
                                          'Product ID: ${item['product_id']}'),
                                      subtitle:
                                          Text('Error loading product name'),
                                    );
                                  } else {
                                    return ListTile(
                                      title: Text(
                                          'Product Name: ${productNameSnapshot.data}'),
                                      subtitle: Text(
                                          'Quantity: ${item['quantity']}, Price: ${item['price']}'),
                                    );
                                  }
                                },
                              );
                            }).toList(),
                          );
                        }
                      },
                    ),
                  ],
                );
              },
            );
          }
        },
      ),
    );
  }
}
