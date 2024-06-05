import 'package:dartz/dartz.dart';
import 'package:flutter_posresto_app/core/constants/variables.dart';
import 'package:flutter_posresto_app/data/datasources/auth_local_datasource.dart';
import 'package:flutter_posresto_app/data/models/response/discount_response_models.dart';
import 'package:http/http.dart' as http;

class DiscountRemoteDatasource {
  Future<Either<String, DiscountResponseModel>> getDiscounts() async {
    final url = Uri.parse('${variables.baseUrl}/api/discounts');
    final authData = await AuthLocalDatasource().getAuthData();
    final response = await http.get(
      url,
      headers: {
        'Authorization': 'Bearer ${authData.token}',
        'accept': 'application/json',
        'content-type': 'application/json',
      },
    );
    if (response.statusCode == 200) {
      return Right(DiscountResponseModel.fromJson(response.body));
    } else {
      return const Left('Failed to get discounts');
    }
  }
}
