import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_posresto_app/data/datasources/product_local_datasource.dart';
import 'package:flutter_posresto_app/data/models/response/product_response_models.dart';
import 'package:flutter_posresto_app/presentation/home/models/order_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'local_product_event.dart';
part 'local_product_state.dart';
part 'local_product_bloc.freezed.dart';

class LocalProductBloc extends Bloc<LocalProductEvent, LocalProductState> {
  final ProductLocalDatasource productLocalDatasource;
  LocalProductBloc(
    this.productLocalDatasource,
  ) : super(_Initial()) {
    on<_GetLocalProduct>((event, emit) async {
      emit(_Loading());
      final result = await productLocalDatasource.getProducts();
      emit(_Loaded(result));
    });

    on<_SearchLocalProduct>((event, emit) async {
      emit(_Loading());
      final result = await productLocalDatasource.searchProducts(event.query);
      emit(_Loaded(result));
    });

    on<_GetLocalOrder>((event, emit) async {
      emit(_Loading());
      final result = await productLocalDatasource.getOrders();
      emit(_LoadedOrder(result));
    });
  }
}
