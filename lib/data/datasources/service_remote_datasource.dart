import 'package:dartz/dartz.dart';
import 'package:flutter_posresto_app/core/constants/variables.dart';
import 'package:flutter_posresto_app/data/datasources/auth_local_datasource.dart';
import 'package:flutter_posresto_app/data/models/response/service_charge_response_model.dart';
import 'package:http/http.dart' as http;

class ServiceRemoteDatasource {
  Future<Either<String, ServiceResponseModel>> getService() async {
    final url = Uri.parse('${variables.baseUrl}/api/service-charges');
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
      return Right(ServiceResponseModel.fromJson(response.body));
    } else {
      return const Left('Failed to get discounts');
    }
  }
}
