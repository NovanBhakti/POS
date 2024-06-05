part of 'discount_bloc.dart';

@freezed
class DiscountEvent with _$DiscountEvent {
  const factory DiscountEvent.started() = _Started;
  //get discount
  const factory DiscountEvent.getDiscount() = _GetDiscount;
}
