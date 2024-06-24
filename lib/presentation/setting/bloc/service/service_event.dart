part of 'service_bloc.dart';

@freezed
class ServiceEvent with _$ServiceEvent {
  const factory ServiceEvent.started() = _Started;
  const factory ServiceEvent.addService() = _AddService;
}
