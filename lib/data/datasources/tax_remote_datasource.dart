import 'package:dartz/dartz.dart';
import 'package:flutter_posresto_app/core/constants/variables.dart';
import 'package:flutter_posresto_app/data/datasources/auth_local_datasource.dart';
import 'package:flutter_posresto_app/data/models/response/tax_response_model.dart';
import 'package:http/http.dart' as http;

class TaxRemoteDatasource {
  Future<Either<String, TaxResponseModel>> getTax() async {
    final url = Uri.parse('${variables.baseUrl}/api/taxes');
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
      return Right(TaxResponseModel.fromJson(response.body));
    } else {
      return const Left('Failed to get discounts');
    }
  }
}
