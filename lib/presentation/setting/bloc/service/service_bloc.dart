import 'package:bloc/bloc.dart';
import 'package:flutter_posresto_app/data/datasources/service_remote_datasource.dart';
import 'package:flutter_posresto_app/data/models/response/service_charge_response_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'service_event.dart';
part 'service_state.dart';
part 'service_bloc.freezed.dart';

class ServiceBloc extends Bloc<ServiceEvent, ServiceState> {
  final ServiceRemoteDatasource serviceRemoteDatasource;
  ServiceBloc(this.serviceRemoteDatasource) : super(_Initial()) {
    on<_AddService>((event, emit) async {
      emit(const _Loading());
      final result = await serviceRemoteDatasource.getService();
      result.fold(
        (l) => emit(_Error(l)),
        (r) => emit(_Loaded(r.data!)),
      );
    });
  }
}
