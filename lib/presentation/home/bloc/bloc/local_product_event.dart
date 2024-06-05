part of 'local_product_bloc.dart';

@freezed
class LocalProductEvent with _$LocalProductEvent {
  const factory LocalProductEvent.started() = _Started;
  const factory LocalProductEvent.getLocalProduct() = _GetLocalProduct;
  const factory LocalProductEvent.searchLocalProduct(String query) =
      _SearchLocalProduct;
  const factory LocalProductEvent.getLocalOrder() = _GetLocalOrder;
}
