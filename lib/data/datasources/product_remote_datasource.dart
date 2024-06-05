import 'package:dartz/dartz.dart';
import 'package:flutter_posresto_app/data/models/response/product_response_models.dart';
import 'package:http/http.dart' as http;

import '../../core/constants/variables.dart';
import 'auth_local_datasource.dart';

class ProductRemoteDatasource {
  Future<Either<String, ProductResponseModel>> getProducts() async {
    final url = Uri.parse('${variables.baseUrl}/api/products');
    final authData = await AuthLocalDatasource().getAuthData();
    final response = await http.get(url, headers: {
      'Authorization': 'Bearer ${authData.token}',
      'Accept': 'application/json',
    });

    if (response.statusCode == 200) {
      return Right(ProductResponseModel.fromJson(response.body));
    } else {
      return const Left('Failed to get products');
    }
  }
}
