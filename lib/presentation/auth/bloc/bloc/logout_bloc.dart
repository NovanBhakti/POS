// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:bloc/bloc.dart';
import 'package:flutter_posresto_app/data/datasources/auth_remote_datasource.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'logout_bloc.freezed.dart';
part 'logout_event.dart';
part 'logout_state.dart';

class LogoutBloc extends Bloc<LogoutEvent, LogoutState> {
  final AuthRemoteDataSource authRemoteDatasource;
  LogoutBloc(
    this.authRemoteDatasource,
  ) : super(_Initial()) {
    on<_Logout>((event, emit) async {
      emit(const _Loading());
      final result = await AuthRemoteDataSource().logout();
      result.fold(
        (error) => emit(_Error(error)),
        (success) => emit(const _Success()),
      );
    });
  }
}
