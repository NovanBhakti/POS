import 'package:bloc/bloc.dart';
import 'package:flutter_posresto_app/data/datasources/tax_remote_datasource.dart';
import 'package:flutter_posresto_app/data/models/response/tax_response_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'tax_event.dart';
part 'tax_state.dart';
part 'tax_bloc.freezed.dart';

class TaxBloc extends Bloc<TaxEvent, TaxState> {
  final TaxRemoteDatasource taxRemoteDatasource;
  TaxBloc(this.taxRemoteDatasource) : super(_Initial()) {
    on<_AddTax>((event, emit) async {
      emit(const _Loading());
      final result = await taxRemoteDatasource.getTax();
      result.fold(
        (l) => emit(_Error(l)),
        (r) => emit(_Loaded(r.data!)),
      );
    });
  }
}
