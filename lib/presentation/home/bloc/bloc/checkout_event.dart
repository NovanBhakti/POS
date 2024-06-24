part of 'checkout_bloc.dart';

@freezed
class CheckoutEvent with _$CheckoutEvent {
  const factory CheckoutEvent.started() = _Started;
  //add item
  const factory CheckoutEvent.addItem(Product product) = _AddItem;
  //remove item
  const factory CheckoutEvent.removeItem(Product product) = _RemoveItem;

  //add discount
  const factory CheckoutEvent.addDiscount(Discount discount) = _AddDiscount;

  //remove discount
  const factory CheckoutEvent.removeDiscount(Discount discount) =
      _RemoveDiscount;
  //add tax
  const factory CheckoutEvent.addTax(Tax tax) = _AddTax;
  //remove tax
  const factory CheckoutEvent.removeTax(Tax tax) = _RemoveTax;
  //add service charge
  const factory CheckoutEvent.addServiceCharge(Service service) =
      _AddServiceCharge;
  //remove service charge
  const factory CheckoutEvent.removeServiceCharge(Service service) =
      _RemoveServiceCharge;
  const factory CheckoutEvent.saveToDraft() = _SaveToDraft;
  //remove draft
  const factory CheckoutEvent.removeDraft(int index) = _RemoveDraft;
  //add item draft
  const factory CheckoutEvent.addItemDraft(
      Product product, ProductQuantity quantity) = _AddItemDraft;
}
