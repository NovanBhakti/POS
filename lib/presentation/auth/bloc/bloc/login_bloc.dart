import 'package:bloc/bloc.dart';
import 'package:flutter_posresto_app/data/datasources/auth_remote_datasource.dart';
import 'package:flutter_posresto_app/data/models/response/auth_response_models.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_event.dart';
part 'login_state.dart';
part 'login_bloc.freezed.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  final AuthRemoteDataSource authRemoteDataSource;
  LoginBloc(
    this.authRemoteDataSource,
  ) : super(const _Initial()) {
    on<_Login>((event, emit) async {
      emit(const _Loading());
      await Future.delayed(const Duration(seconds: 2, milliseconds: 500));
      final result =
          await authRemoteDataSource.login(event.email, event.password);
      result.fold(
        (error) => emit(_Error(error)),
        (success) => emit(_Success(success)),
      );
    });
  }
}
