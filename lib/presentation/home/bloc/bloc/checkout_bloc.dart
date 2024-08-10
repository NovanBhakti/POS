import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_posresto_app/data/models/response/discount_response_models.dart';
import 'package:flutter_posresto_app/data/models/response/product_response_models.dart';
import 'package:flutter_posresto_app/data/models/response/service_charge_response_model.dart';
import 'package:flutter_posresto_app/data/models/response/tax_response_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../models/product_quantity.dart';

part 'checkout_event.dart';
part 'checkout_state.dart';
part 'checkout_bloc.freezed.dart';

class CheckoutBloc extends Bloc<CheckoutEvent, CheckoutState> {
  CheckoutBloc()
      : super(const _Loaded(
          [],
          [],
          null,
          null,
          null,
        )) {
    on<_AddItem>((event, emit) {
      var currentState = state as _Loaded;
      List<ProductQuantity> items = [...currentState.items];
      var index =
          items.indexWhere((element) => element.product.id == event.product.id);
      emit(_Loading());
      if (index != -1) {
        items[index] = ProductQuantity(
            product: event.product, quantity: items[index].quantity + 1);
      } else {
        items.add(ProductQuantity(product: event.product, quantity: 1));
      }
      emit(_Loaded(
        items,
        currentState.drafts,
        currentState.discount,
        currentState.tax,
        currentState.serviceCharge,
      ));
    });

    on<_RemoveItem>((event, emit) {
      var currentState = state as _Loaded;
      List<ProductQuantity> items = [...currentState.items];
      var index =
          items.indexWhere((element) => element.product.id == event.product.id);
      emit(_Loading());
      if (index != -1) {
        if (items[index].quantity > 1) {
          items[index] = ProductQuantity(
              product: event.product, quantity: items[index].quantity - 1);
        } else {
          items.removeAt(index);
        }
      }
      emit(_Loaded(items, currentState.drafts, currentState.discount,
          currentState.tax, currentState.serviceCharge));
    });

    on<_Started>((event, emit) {
      var currentState = state as _Loaded;
      emit(_Loaded([], currentState.drafts, null, null, null));
    });

    on<_AddDiscount>((event, emit) {
      var currentState = state as _Loaded;
      emit(_Loaded(currentState.items, currentState.drafts, event.discount,
          currentState.tax, currentState.serviceCharge));
    });

    on<_AddTax>((event, emit) {
      var currentState = state as _Loaded;
      emit(_Loaded(currentState.items, currentState.drafts,
          currentState.discount, event.tax, currentState.serviceCharge));
    });

    //remove tax
    on<_RemoveTax>((event, emit) {
      var currentState = state as _Loaded;
      emit(_Loaded(currentState.items, currentState.drafts,
          currentState.discount, null, currentState.serviceCharge));
    });

    on<_RemoveDiscount>((event, emit) {
      var currentState = state as _Loaded;
      emit(_Loaded(currentState.items, currentState.drafts, null,
          currentState.tax, currentState.serviceCharge));
    });

    on<_AddServiceCharge>((event, emit) {
      var currentState = state as _Loaded;
      emit(_Loaded(currentState.items, currentState.drafts,
          currentState.discount, currentState.tax, event.service));
    });
    on<_RemoveServiceCharge>((event, emit) {
      var currentState = state as _Loaded;
      emit(_Loaded(currentState.items, currentState.drafts,
          currentState.discount, currentState.tax, null));
    });
    on<_SaveToDraft>((event, emit) {
      if (state is _Loaded) {
        var currentState = state as _Loaded;
        List<ProductQuantity> items = [...currentState.items];
        List<List<ProductQuantity>> drafts = [
          ...currentState.drafts
        ]; // Ensure drafts is a list of lists

        // Add current items to drafts and then clear items
        drafts.add(items);
        items = []; // Clear current items after saving to draft

        emit(_Loaded(items, drafts, currentState.discount, currentState.tax,
            currentState.serviceCharge));
      }
    });
    on<_RemoveDraft>((event, emit) {
      if (state is _Loaded) {
        var currentState = state as _Loaded;
        List<ProductQuantity> items = List.from(currentState.items);
        List<List<ProductQuantity>> drafts = [...currentState.drafts];
        var draftItems = drafts[event.index];
        items.addAll(draftItems);
        drafts.removeAt(event.index);

        emit(_Loaded(currentState.items, drafts, currentState.discount,
            currentState.tax, currentState.serviceCharge));
      }
    });

    on<_AddItemDraft>((event, emit) {
      if (state is _Loaded) {
        var currentState = state as _Loaded;
        List<ProductQuantity> items = [...currentState.items];
        items.add(event.quantity);
        emit(_Loaded(items, currentState.drafts, currentState.discount,
            currentState.tax, currentState.serviceCharge));
      }
    });
  }
}
