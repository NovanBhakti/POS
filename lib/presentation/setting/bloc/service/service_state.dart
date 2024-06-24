part of 'service_bloc.dart';

@freezed
class ServiceState with _$ServiceState {
  const factory ServiceState.initial() = _Initial;
  const factory ServiceState.loading() = _Loading;
  const factory ServiceState.loaded(List<Service> service) = _Loaded;
  const factory ServiceState.error(String message) = _Error;
}
