// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'checkout_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CheckoutEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(Product product) addItem,
    required TResult Function(Product product) removeItem,
    required TResult Function(Discount discount) addDiscount,
    required TResult Function(Discount discount) removeDiscount,
    required TResult Function(Tax tax) addTax,
    required TResult Function(Tax tax) removeTax,
    required TResult Function(Service service) addServiceCharge,
    required TResult Function(Service service) removeServiceCharge,
    required TResult Function() saveToDraft,
    required TResult Function(int index) removeDraft,
    required TResult Function(Product product, ProductQuantity quantity)
        addItemDraft,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(Product product)? addItem,
    TResult? Function(Product product)? removeItem,
    TResult? Function(Discount discount)? addDiscount,
    TResult? Function(Discount discount)? removeDiscount,
    TResult? Function(Tax tax)? addTax,
    TResult? Function(Tax tax)? removeTax,
    TResult? Function(Service service)? addServiceCharge,
    TResult? Function(Service service)? removeServiceCharge,
    TResult? Function()? saveToDraft,
    TResult? Function(int index)? removeDraft,
    TResult? Function(Product product, ProductQuantity quantity)? addItemDraft,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(Product product)? addItem,
    TResult Function(Product product)? removeItem,
    TResult Function(Discount discount)? addDiscount,
    TResult Function(Discount discount)? removeDiscount,
    TResult Function(Tax tax)? addTax,
    TResult Function(Tax tax)? removeTax,
    TResult Function(Service service)? addServiceCharge,
    TResult Function(Service service)? removeServiceCharge,
    TResult Function()? saveToDraft,
    TResult Function(int index)? removeDraft,
    TResult Function(Product product, ProductQuantity quantity)? addItemDraft,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_AddItem value) addItem,
    required TResult Function(_RemoveItem value) removeItem,
    required TResult Function(_AddDiscount value) addDiscount,
    required TResult Function(_RemoveDiscount value) removeDiscount,
    required TResult Function(_AddTax value) addTax,
    required TResult Function(_RemoveTax value) removeTax,
    required TResult Function(_AddServiceCharge value) addServiceCharge,
    required TResult Function(_RemoveServiceCharge value) removeServiceCharge,
    required TResult Function(_SaveToDraft value) saveToDraft,
    required TResult Function(_RemoveDraft value) removeDraft,
    required TResult Function(_AddItemDraft value) addItemDraft,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_AddItem value)? addItem,
    TResult? Function(_RemoveItem value)? removeItem,
    TResult? Function(_AddDiscount value)? addDiscount,
    TResult? Function(_RemoveDiscount value)? removeDiscount,
    TResult? Function(_AddTax value)? addTax,
    TResult? Function(_RemoveTax value)? removeTax,
    TResult? Function(_AddServiceCharge value)? addServiceCharge,
    TResult? Function(_RemoveServiceCharge value)? removeServiceCharge,
    TResult? Function(_SaveToDraft value)? saveToDraft,
    TResult? Function(_RemoveDraft value)? removeDraft,
    TResult? Function(_AddItemDraft value)? addItemDraft,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_AddItem value)? addItem,
    TResult Function(_RemoveItem value)? removeItem,
    TResult Function(_AddDiscount value)? addDiscount,
    TResult Function(_RemoveDiscount value)? removeDiscount,
    TResult Function(_AddTax value)? addTax,
    TResult Function(_RemoveTax value)? removeTax,
    TResult Function(_AddServiceCharge value)? addServiceCharge,
    TResult Function(_RemoveServiceCharge value)? removeServiceCharge,
    TResult Function(_SaveToDraft value)? saveToDraft,
    TResult Function(_RemoveDraft value)? removeDraft,
    TResult Function(_AddItemDraft value)? addItemDraft,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CheckoutEventCopyWith<$Res> {
  factory $CheckoutEventCopyWith(
          CheckoutEvent value, $Res Function(CheckoutEvent) then) =
      _$CheckoutEventCopyWithImpl<$Res, CheckoutEvent>;
}

/// @nodoc
class _$CheckoutEventCopyWithImpl<$Res, $Val extends CheckoutEvent>
    implements $CheckoutEventCopyWith<$Res> {
  _$CheckoutEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$StartedImplCopyWith<$Res> {
  factory _$$StartedImplCopyWith(
          _$StartedImpl value, $Res Function(_$StartedImpl) then) =
      __$$StartedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StartedImplCopyWithImpl<$Res>
    extends _$CheckoutEventCopyWithImpl<$Res, _$StartedImpl>
    implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(
      _$StartedImpl _value, $Res Function(_$StartedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$StartedImpl with DiagnosticableTreeMixin implements _Started {
  const _$StartedImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CheckoutEvent.started()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'CheckoutEvent.started'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StartedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(Product product) addItem,
    required TResult Function(Product product) removeItem,
    required TResult Function(Discount discount) addDiscount,
    required TResult Function(Discount discount) removeDiscount,
    required TResult Function(Tax tax) addTax,
    required TResult Function(Tax tax) removeTax,
    required TResult Function(Service service) addServiceCharge,
    required TResult Function(Service service) removeServiceCharge,
    required TResult Function() saveToDraft,
    required TResult Function(int index) removeDraft,
    required TResult Function(Product product, ProductQuantity quantity)
        addItemDraft,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(Product product)? addItem,
    TResult? Function(Product product)? removeItem,
    TResult? Function(Discount discount)? addDiscount,
    TResult? Function(Discount discount)? removeDiscount,
    TResult? Function(Tax tax)? addTax,
    TResult? Function(Tax tax)? removeTax,
    TResult? Function(Service service)? addServiceCharge,
    TResult? Function(Service service)? removeServiceCharge,
    TResult? Function()? saveToDraft,
    TResult? Function(int index)? removeDraft,
    TResult? Function(Product product, ProductQuantity quantity)? addItemDraft,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(Product product)? addItem,
    TResult Function(Product product)? removeItem,
    TResult Function(Discount discount)? addDiscount,
    TResult Function(Discount discount)? removeDiscount,
    TResult Function(Tax tax)? addTax,
    TResult Function(Tax tax)? removeTax,
    TResult Function(Service service)? addServiceCharge,
    TResult Function(Service service)? removeServiceCharge,
    TResult Function()? saveToDraft,
    TResult Function(int index)? removeDraft,
    TResult Function(Product product, ProductQuantity quantity)? addItemDraft,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_AddItem value) addItem,
    required TResult Function(_RemoveItem value) removeItem,
    required TResult Function(_AddDiscount value) addDiscount,
    required TResult Function(_RemoveDiscount value) removeDiscount,
    required TResult Function(_AddTax value) addTax,
    required TResult Function(_RemoveTax value) removeTax,
    required TResult Function(_AddServiceCharge value) addServiceCharge,
    required TResult Function(_RemoveServiceCharge value) removeServiceCharge,
    required TResult Function(_SaveToDraft value) saveToDraft,
    required TResult Function(_RemoveDraft value) removeDraft,
    required TResult Function(_AddItemDraft value) addItemDraft,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_AddItem value)? addItem,
    TResult? Function(_RemoveItem value)? removeItem,
    TResult? Function(_AddDiscount value)? addDiscount,
    TResult? Function(_RemoveDiscount value)? removeDiscount,
    TResult? Function(_AddTax value)? addTax,
    TResult? Function(_RemoveTax value)? removeTax,
    TResult? Function(_AddServiceCharge value)? addServiceCharge,
    TResult? Function(_RemoveServiceCharge value)? removeServiceCharge,
    TResult? Function(_SaveToDraft value)? saveToDraft,
    TResult? Function(_RemoveDraft value)? removeDraft,
    TResult? Function(_AddItemDraft value)? addItemDraft,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_AddItem value)? addItem,
    TResult Function(_RemoveItem value)? removeItem,
    TResult Function(_AddDiscount value)? addDiscount,
    TResult Function(_RemoveDiscount value)? removeDiscount,
    TResult Function(_AddTax value)? addTax,
    TResult Function(_RemoveTax value)? removeTax,
    TResult Function(_AddServiceCharge value)? addServiceCharge,
    TResult Function(_RemoveServiceCharge value)? removeServiceCharge,
    TResult Function(_SaveToDraft value)? saveToDraft,
    TResult Function(_RemoveDraft value)? removeDraft,
    TResult Function(_AddItemDraft value)? addItemDraft,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements CheckoutEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$AddItemImplCopyWith<$Res> {
  factory _$$AddItemImplCopyWith(
          _$AddItemImpl value, $Res Function(_$AddItemImpl) then) =
      __$$AddItemImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Product product});
}

/// @nodoc
class __$$AddItemImplCopyWithImpl<$Res>
    extends _$CheckoutEventCopyWithImpl<$Res, _$AddItemImpl>
    implements _$$AddItemImplCopyWith<$Res> {
  __$$AddItemImplCopyWithImpl(
      _$AddItemImpl _value, $Res Function(_$AddItemImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? product = null,
  }) {
    return _then(_$AddItemImpl(
      null == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as Product,
    ));
  }
}

/// @nodoc

class _$AddItemImpl with DiagnosticableTreeMixin implements _AddItem {
  const _$AddItemImpl(this.product);

  @override
  final Product product;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CheckoutEvent.addItem(product: $product)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CheckoutEvent.addItem'))
      ..add(DiagnosticsProperty('product', product));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddItemImpl &&
            (identical(other.product, product) || other.product == product));
  }

  @override
  int get hashCode => Object.hash(runtimeType, product);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddItemImplCopyWith<_$AddItemImpl> get copyWith =>
      __$$AddItemImplCopyWithImpl<_$AddItemImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(Product product) addItem,
    required TResult Function(Product product) removeItem,
    required TResult Function(Discount discount) addDiscount,
    required TResult Function(Discount discount) removeDiscount,
    required TResult Function(Tax tax) addTax,
    required TResult Function(Tax tax) removeTax,
    required TResult Function(Service service) addServiceCharge,
    required TResult Function(Service service) removeServiceCharge,
    required TResult Function() saveToDraft,
    required TResult Function(int index) removeDraft,
    required TResult Function(Product product, ProductQuantity quantity)
        addItemDraft,
  }) {
    return addItem(product);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(Product product)? addItem,
    TResult? Function(Product product)? removeItem,
    TResult? Function(Discount discount)? addDiscount,
    TResult? Function(Discount discount)? removeDiscount,
    TResult? Function(Tax tax)? addTax,
    TResult? Function(Tax tax)? removeTax,
    TResult? Function(Service service)? addServiceCharge,
    TResult? Function(Service service)? removeServiceCharge,
    TResult? Function()? saveToDraft,
    TResult? Function(int index)? removeDraft,
    TResult? Function(Product product, ProductQuantity quantity)? addItemDraft,
  }) {
    return addItem?.call(product);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(Product product)? addItem,
    TResult Function(Product product)? removeItem,
    TResult Function(Discount discount)? addDiscount,
    TResult Function(Discount discount)? removeDiscount,
    TResult Function(Tax tax)? addTax,
    TResult Function(Tax tax)? removeTax,
    TResult Function(Service service)? addServiceCharge,
    TResult Function(Service service)? removeServiceCharge,
    TResult Function()? saveToDraft,
    TResult Function(int index)? removeDraft,
    TResult Function(Product product, ProductQuantity quantity)? addItemDraft,
    required TResult orElse(),
  }) {
    if (addItem != null) {
      return addItem(product);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_AddItem value) addItem,
    required TResult Function(_RemoveItem value) removeItem,
    required TResult Function(_AddDiscount value) addDiscount,
    required TResult Function(_RemoveDiscount value) removeDiscount,
    required TResult Function(_AddTax value) addTax,
    required TResult Function(_RemoveTax value) removeTax,
    required TResult Function(_AddServiceCharge value) addServiceCharge,
    required TResult Function(_RemoveServiceCharge value) removeServiceCharge,
    required TResult Function(_SaveToDraft value) saveToDraft,
    required TResult Function(_RemoveDraft value) removeDraft,
    required TResult Function(_AddItemDraft value) addItemDraft,
  }) {
    return addItem(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_AddItem value)? addItem,
    TResult? Function(_RemoveItem value)? removeItem,
    TResult? Function(_AddDiscount value)? addDiscount,
    TResult? Function(_RemoveDiscount value)? removeDiscount,
    TResult? Function(_AddTax value)? addTax,
    TResult? Function(_RemoveTax value)? removeTax,
    TResult? Function(_AddServiceCharge value)? addServiceCharge,
    TResult? Function(_RemoveServiceCharge value)? removeServiceCharge,
    TResult? Function(_SaveToDraft value)? saveToDraft,
    TResult? Function(_RemoveDraft value)? removeDraft,
    TResult? Function(_AddItemDraft value)? addItemDraft,
  }) {
    return addItem?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_AddItem value)? addItem,
    TResult Function(_RemoveItem value)? removeItem,
    TResult Function(_AddDiscount value)? addDiscount,
    TResult Function(_RemoveDiscount value)? removeDiscount,
    TResult Function(_AddTax value)? addTax,
    TResult Function(_RemoveTax value)? removeTax,
    TResult Function(_AddServiceCharge value)? addServiceCharge,
    TResult Function(_RemoveServiceCharge value)? removeServiceCharge,
    TResult Function(_SaveToDraft value)? saveToDraft,
    TResult Function(_RemoveDraft value)? removeDraft,
    TResult Function(_AddItemDraft value)? addItemDraft,
    required TResult orElse(),
  }) {
    if (addItem != null) {
      return addItem(this);
    }
    return orElse();
  }
}

abstract class _AddItem implements CheckoutEvent {
  const factory _AddItem(final Product product) = _$AddItemImpl;

  Product get product;
  @JsonKey(ignore: true)
  _$$AddItemImplCopyWith<_$AddItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RemoveItemImplCopyWith<$Res> {
  factory _$$RemoveItemImplCopyWith(
          _$RemoveItemImpl value, $Res Function(_$RemoveItemImpl) then) =
      __$$RemoveItemImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Product product});
}

/// @nodoc
class __$$RemoveItemImplCopyWithImpl<$Res>
    extends _$CheckoutEventCopyWithImpl<$Res, _$RemoveItemImpl>
    implements _$$RemoveItemImplCopyWith<$Res> {
  __$$RemoveItemImplCopyWithImpl(
      _$RemoveItemImpl _value, $Res Function(_$RemoveItemImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? product = null,
  }) {
    return _then(_$RemoveItemImpl(
      null == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as Product,
    ));
  }
}

/// @nodoc

class _$RemoveItemImpl with DiagnosticableTreeMixin implements _RemoveItem {
  const _$RemoveItemImpl(this.product);

  @override
  final Product product;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CheckoutEvent.removeItem(product: $product)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CheckoutEvent.removeItem'))
      ..add(DiagnosticsProperty('product', product));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RemoveItemImpl &&
            (identical(other.product, product) || other.product == product));
  }

  @override
  int get hashCode => Object.hash(runtimeType, product);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RemoveItemImplCopyWith<_$RemoveItemImpl> get copyWith =>
      __$$RemoveItemImplCopyWithImpl<_$RemoveItemImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(Product product) addItem,
    required TResult Function(Product product) removeItem,
    required TResult Function(Discount discount) addDiscount,
    required TResult Function(Discount discount) removeDiscount,
    required TResult Function(Tax tax) addTax,
    required TResult Function(Tax tax) removeTax,
    required TResult Function(Service service) addServiceCharge,
    required TResult Function(Service service) removeServiceCharge,
    required TResult Function() saveToDraft,
    required TResult Function(int index) removeDraft,
    required TResult Function(Product product, ProductQuantity quantity)
        addItemDraft,
  }) {
    return removeItem(product);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(Product product)? addItem,
    TResult? Function(Product product)? removeItem,
    TResult? Function(Discount discount)? addDiscount,
    TResult? Function(Discount discount)? removeDiscount,
    TResult? Function(Tax tax)? addTax,
    TResult? Function(Tax tax)? removeTax,
    TResult? Function(Service service)? addServiceCharge,
    TResult? Function(Service service)? removeServiceCharge,
    TResult? Function()? saveToDraft,
    TResult? Function(int index)? removeDraft,
    TResult? Function(Product product, ProductQuantity quantity)? addItemDraft,
  }) {
    return removeItem?.call(product);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(Product product)? addItem,
    TResult Function(Product product)? removeItem,
    TResult Function(Discount discount)? addDiscount,
    TResult Function(Discount discount)? removeDiscount,
    TResult Function(Tax tax)? addTax,
    TResult Function(Tax tax)? removeTax,
    TResult Function(Service service)? addServiceCharge,
    TResult Function(Service service)? removeServiceCharge,
    TResult Function()? saveToDraft,
    TResult Function(int index)? removeDraft,
    TResult Function(Product product, ProductQuantity quantity)? addItemDraft,
    required TResult orElse(),
  }) {
    if (removeItem != null) {
      return removeItem(product);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_AddItem value) addItem,
    required TResult Function(_RemoveItem value) removeItem,
    required TResult Function(_AddDiscount value) addDiscount,
    required TResult Function(_RemoveDiscount value) removeDiscount,
    required TResult Function(_AddTax value) addTax,
    required TResult Function(_RemoveTax value) removeTax,
    required TResult Function(_AddServiceCharge value) addServiceCharge,
    required TResult Function(_RemoveServiceCharge value) removeServiceCharge,
    required TResult Function(_SaveToDraft value) saveToDraft,
    required TResult Function(_RemoveDraft value) removeDraft,
    required TResult Function(_AddItemDraft value) addItemDraft,
  }) {
    return removeItem(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_AddItem value)? addItem,
    TResult? Function(_RemoveItem value)? removeItem,
    TResult? Function(_AddDiscount value)? addDiscount,
    TResult? Function(_RemoveDiscount value)? removeDiscount,
    TResult? Function(_AddTax value)? addTax,
    TResult? Function(_RemoveTax value)? removeTax,
    TResult? Function(_AddServiceCharge value)? addServiceCharge,
    TResult? Function(_RemoveServiceCharge value)? removeServiceCharge,
    TResult? Function(_SaveToDraft value)? saveToDraft,
    TResult? Function(_RemoveDraft value)? removeDraft,
    TResult? Function(_AddItemDraft value)? addItemDraft,
  }) {
    return removeItem?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_AddItem value)? addItem,
    TResult Function(_RemoveItem value)? removeItem,
    TResult Function(_AddDiscount value)? addDiscount,
    TResult Function(_RemoveDiscount value)? removeDiscount,
    TResult Function(_AddTax value)? addTax,
    TResult Function(_RemoveTax value)? removeTax,
    TResult Function(_AddServiceCharge value)? addServiceCharge,
    TResult Function(_RemoveServiceCharge value)? removeServiceCharge,
    TResult Function(_SaveToDraft value)? saveToDraft,
    TResult Function(_RemoveDraft value)? removeDraft,
    TResult Function(_AddItemDraft value)? addItemDraft,
    required TResult orElse(),
  }) {
    if (removeItem != null) {
      return removeItem(this);
    }
    return orElse();
  }
}

abstract class _RemoveItem implements CheckoutEvent {
  const factory _RemoveItem(final Product product) = _$RemoveItemImpl;

  Product get product;
  @JsonKey(ignore: true)
  _$$RemoveItemImplCopyWith<_$RemoveItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AddDiscountImplCopyWith<$Res> {
  factory _$$AddDiscountImplCopyWith(
          _$AddDiscountImpl value, $Res Function(_$AddDiscountImpl) then) =
      __$$AddDiscountImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Discount discount});
}

/// @nodoc
class __$$AddDiscountImplCopyWithImpl<$Res>
    extends _$CheckoutEventCopyWithImpl<$Res, _$AddDiscountImpl>
    implements _$$AddDiscountImplCopyWith<$Res> {
  __$$AddDiscountImplCopyWithImpl(
      _$AddDiscountImpl _value, $Res Function(_$AddDiscountImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? discount = null,
  }) {
    return _then(_$AddDiscountImpl(
      null == discount
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as Discount,
    ));
  }
}

/// @nodoc

class _$AddDiscountImpl with DiagnosticableTreeMixin implements _AddDiscount {
  const _$AddDiscountImpl(this.discount);

  @override
  final Discount discount;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CheckoutEvent.addDiscount(discount: $discount)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CheckoutEvent.addDiscount'))
      ..add(DiagnosticsProperty('discount', discount));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddDiscountImpl &&
            (identical(other.discount, discount) ||
                other.discount == discount));
  }

  @override
  int get hashCode => Object.hash(runtimeType, discount);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddDiscountImplCopyWith<_$AddDiscountImpl> get copyWith =>
      __$$AddDiscountImplCopyWithImpl<_$AddDiscountImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(Product product) addItem,
    required TResult Function(Product product) removeItem,
    required TResult Function(Discount discount) addDiscount,
    required TResult Function(Discount discount) removeDiscount,
    required TResult Function(Tax tax) addTax,
    required TResult Function(Tax tax) removeTax,
    required TResult Function(Service service) addServiceCharge,
    required TResult Function(Service service) removeServiceCharge,
    required TResult Function() saveToDraft,
    required TResult Function(int index) removeDraft,
    required TResult Function(Product product, ProductQuantity quantity)
        addItemDraft,
  }) {
    return addDiscount(discount);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(Product product)? addItem,
    TResult? Function(Product product)? removeItem,
    TResult? Function(Discount discount)? addDiscount,
    TResult? Function(Discount discount)? removeDiscount,
    TResult? Function(Tax tax)? addTax,
    TResult? Function(Tax tax)? removeTax,
    TResult? Function(Service service)? addServiceCharge,
    TResult? Function(Service service)? removeServiceCharge,
    TResult? Function()? saveToDraft,
    TResult? Function(int index)? removeDraft,
    TResult? Function(Product product, ProductQuantity quantity)? addItemDraft,
  }) {
    return addDiscount?.call(discount);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(Product product)? addItem,
    TResult Function(Product product)? removeItem,
    TResult Function(Discount discount)? addDiscount,
    TResult Function(Discount discount)? removeDiscount,
    TResult Function(Tax tax)? addTax,
    TResult Function(Tax tax)? removeTax,
    TResult Function(Service service)? addServiceCharge,
    TResult Function(Service service)? removeServiceCharge,
    TResult Function()? saveToDraft,
    TResult Function(int index)? removeDraft,
    TResult Function(Product product, ProductQuantity quantity)? addItemDraft,
    required TResult orElse(),
  }) {
    if (addDiscount != null) {
      return addDiscount(discount);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_AddItem value) addItem,
    required TResult Function(_RemoveItem value) removeItem,
    required TResult Function(_AddDiscount value) addDiscount,
    required TResult Function(_RemoveDiscount value) removeDiscount,
    required TResult Function(_AddTax value) addTax,
    required TResult Function(_RemoveTax value) removeTax,
    required TResult Function(_AddServiceCharge value) addServiceCharge,
    required TResult Function(_RemoveServiceCharge value) removeServiceCharge,
    required TResult Function(_SaveToDraft value) saveToDraft,
    required TResult Function(_RemoveDraft value) removeDraft,
    required TResult Function(_AddItemDraft value) addItemDraft,
  }) {
    return addDiscount(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_AddItem value)? addItem,
    TResult? Function(_RemoveItem value)? removeItem,
    TResult? Function(_AddDiscount value)? addDiscount,
    TResult? Function(_RemoveDiscount value)? removeDiscount,
    TResult? Function(_AddTax value)? addTax,
    TResult? Function(_RemoveTax value)? removeTax,
    TResult? Function(_AddServiceCharge value)? addServiceCharge,
    TResult? Function(_RemoveServiceCharge value)? removeServiceCharge,
    TResult? Function(_SaveToDraft value)? saveToDraft,
    TResult? Function(_RemoveDraft value)? removeDraft,
    TResult? Function(_AddItemDraft value)? addItemDraft,
  }) {
    return addDiscount?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_AddItem value)? addItem,
    TResult Function(_RemoveItem value)? removeItem,
    TResult Function(_AddDiscount value)? addDiscount,
    TResult Function(_RemoveDiscount value)? removeDiscount,
    TResult Function(_AddTax value)? addTax,
    TResult Function(_RemoveTax value)? removeTax,
    TResult Function(_AddServiceCharge value)? addServiceCharge,
    TResult Function(_RemoveServiceCharge value)? removeServiceCharge,
    TResult Function(_SaveToDraft value)? saveToDraft,
    TResult Function(_RemoveDraft value)? removeDraft,
    TResult Function(_AddItemDraft value)? addItemDraft,
    required TResult orElse(),
  }) {
    if (addDiscount != null) {
      return addDiscount(this);
    }
    return orElse();
  }
}

abstract class _AddDiscount implements CheckoutEvent {
  const factory _AddDiscount(final Discount discount) = _$AddDiscountImpl;

  Discount get discount;
  @JsonKey(ignore: true)
  _$$AddDiscountImplCopyWith<_$AddDiscountImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RemoveDiscountImplCopyWith<$Res> {
  factory _$$RemoveDiscountImplCopyWith(_$RemoveDiscountImpl value,
          $Res Function(_$RemoveDiscountImpl) then) =
      __$$RemoveDiscountImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Discount discount});
}

/// @nodoc
class __$$RemoveDiscountImplCopyWithImpl<$Res>
    extends _$CheckoutEventCopyWithImpl<$Res, _$RemoveDiscountImpl>
    implements _$$RemoveDiscountImplCopyWith<$Res> {
  __$$RemoveDiscountImplCopyWithImpl(
      _$RemoveDiscountImpl _value, $Res Function(_$RemoveDiscountImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? discount = null,
  }) {
    return _then(_$RemoveDiscountImpl(
      null == discount
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as Discount,
    ));
  }
}

/// @nodoc

class _$RemoveDiscountImpl
    with DiagnosticableTreeMixin
    implements _RemoveDiscount {
  const _$RemoveDiscountImpl(this.discount);

  @override
  final Discount discount;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CheckoutEvent.removeDiscount(discount: $discount)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CheckoutEvent.removeDiscount'))
      ..add(DiagnosticsProperty('discount', discount));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RemoveDiscountImpl &&
            (identical(other.discount, discount) ||
                other.discount == discount));
  }

  @override
  int get hashCode => Object.hash(runtimeType, discount);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RemoveDiscountImplCopyWith<_$RemoveDiscountImpl> get copyWith =>
      __$$RemoveDiscountImplCopyWithImpl<_$RemoveDiscountImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(Product product) addItem,
    required TResult Function(Product product) removeItem,
    required TResult Function(Discount discount) addDiscount,
    required TResult Function(Discount discount) removeDiscount,
    required TResult Function(Tax tax) addTax,
    required TResult Function(Tax tax) removeTax,
    required TResult Function(Service service) addServiceCharge,
    required TResult Function(Service service) removeServiceCharge,
    required TResult Function() saveToDraft,
    required TResult Function(int index) removeDraft,
    required TResult Function(Product product, ProductQuantity quantity)
        addItemDraft,
  }) {
    return removeDiscount(discount);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(Product product)? addItem,
    TResult? Function(Product product)? removeItem,
    TResult? Function(Discount discount)? addDiscount,
    TResult? Function(Discount discount)? removeDiscount,
    TResult? Function(Tax tax)? addTax,
    TResult? Function(Tax tax)? removeTax,
    TResult? Function(Service service)? addServiceCharge,
    TResult? Function(Service service)? removeServiceCharge,
    TResult? Function()? saveToDraft,
    TResult? Function(int index)? removeDraft,
    TResult? Function(Product product, ProductQuantity quantity)? addItemDraft,
  }) {
    return removeDiscount?.call(discount);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(Product product)? addItem,
    TResult Function(Product product)? removeItem,
    TResult Function(Discount discount)? addDiscount,
    TResult Function(Discount discount)? removeDiscount,
    TResult Function(Tax tax)? addTax,
    TResult Function(Tax tax)? removeTax,
    TResult Function(Service service)? addServiceCharge,
    TResult Function(Service service)? removeServiceCharge,
    TResult Function()? saveToDraft,
    TResult Function(int index)? removeDraft,
    TResult Function(Product product, ProductQuantity quantity)? addItemDraft,
    required TResult orElse(),
  }) {
    if (removeDiscount != null) {
      return removeDiscount(discount);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_AddItem value) addItem,
    required TResult Function(_RemoveItem value) removeItem,
    required TResult Function(_AddDiscount value) addDiscount,
    required TResult Function(_RemoveDiscount value) removeDiscount,
    required TResult Function(_AddTax value) addTax,
    required TResult Function(_RemoveTax value) removeTax,
    required TResult Function(_AddServiceCharge value) addServiceCharge,
    required TResult Function(_RemoveServiceCharge value) removeServiceCharge,
    required TResult Function(_SaveToDraft value) saveToDraft,
    required TResult Function(_RemoveDraft value) removeDraft,
    required TResult Function(_AddItemDraft value) addItemDraft,
  }) {
    return removeDiscount(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_AddItem value)? addItem,
    TResult? Function(_RemoveItem value)? removeItem,
    TResult? Function(_AddDiscount value)? addDiscount,
    TResult? Function(_RemoveDiscount value)? removeDiscount,
    TResult? Function(_AddTax value)? addTax,
    TResult? Function(_RemoveTax value)? removeTax,
    TResult? Function(_AddServiceCharge value)? addServiceCharge,
    TResult? Function(_RemoveServiceCharge value)? removeServiceCharge,
    TResult? Function(_SaveToDraft value)? saveToDraft,
    TResult? Function(_RemoveDraft value)? removeDraft,
    TResult? Function(_AddItemDraft value)? addItemDraft,
  }) {
    return removeDiscount?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_AddItem value)? addItem,
    TResult Function(_RemoveItem value)? removeItem,
    TResult Function(_AddDiscount value)? addDiscount,
    TResult Function(_RemoveDiscount value)? removeDiscount,
    TResult Function(_AddTax value)? addTax,
    TResult Function(_RemoveTax value)? removeTax,
    TResult Function(_AddServiceCharge value)? addServiceCharge,
    TResult Function(_RemoveServiceCharge value)? removeServiceCharge,
    TResult Function(_SaveToDraft value)? saveToDraft,
    TResult Function(_RemoveDraft value)? removeDraft,
    TResult Function(_AddItemDraft value)? addItemDraft,
    required TResult orElse(),
  }) {
    if (removeDiscount != null) {
      return removeDiscount(this);
    }
    return orElse();
  }
}

abstract class _RemoveDiscount implements CheckoutEvent {
  const factory _RemoveDiscount(final Discount discount) = _$RemoveDiscountImpl;

  Discount get discount;
  @JsonKey(ignore: true)
  _$$RemoveDiscountImplCopyWith<_$RemoveDiscountImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AddTaxImplCopyWith<$Res> {
  factory _$$AddTaxImplCopyWith(
          _$AddTaxImpl value, $Res Function(_$AddTaxImpl) then) =
      __$$AddTaxImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Tax tax});
}

/// @nodoc
class __$$AddTaxImplCopyWithImpl<$Res>
    extends _$CheckoutEventCopyWithImpl<$Res, _$AddTaxImpl>
    implements _$$AddTaxImplCopyWith<$Res> {
  __$$AddTaxImplCopyWithImpl(
      _$AddTaxImpl _value, $Res Function(_$AddTaxImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tax = null,
  }) {
    return _then(_$AddTaxImpl(
      null == tax
          ? _value.tax
          : tax // ignore: cast_nullable_to_non_nullable
              as Tax,
    ));
  }
}

/// @nodoc

class _$AddTaxImpl with DiagnosticableTreeMixin implements _AddTax {
  const _$AddTaxImpl(this.tax);

  @override
  final Tax tax;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CheckoutEvent.addTax(tax: $tax)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CheckoutEvent.addTax'))
      ..add(DiagnosticsProperty('tax', tax));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddTaxImpl &&
            (identical(other.tax, tax) || other.tax == tax));
  }

  @override
  int get hashCode => Object.hash(runtimeType, tax);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddTaxImplCopyWith<_$AddTaxImpl> get copyWith =>
      __$$AddTaxImplCopyWithImpl<_$AddTaxImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(Product product) addItem,
    required TResult Function(Product product) removeItem,
    required TResult Function(Discount discount) addDiscount,
    required TResult Function(Discount discount) removeDiscount,
    required TResult Function(Tax tax) addTax,
    required TResult Function(Tax tax) removeTax,
    required TResult Function(Service service) addServiceCharge,
    required TResult Function(Service service) removeServiceCharge,
    required TResult Function() saveToDraft,
    required TResult Function(int index) removeDraft,
    required TResult Function(Product product, ProductQuantity quantity)
        addItemDraft,
  }) {
    return addTax(tax);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(Product product)? addItem,
    TResult? Function(Product product)? removeItem,
    TResult? Function(Discount discount)? addDiscount,
    TResult? Function(Discount discount)? removeDiscount,
    TResult? Function(Tax tax)? addTax,
    TResult? Function(Tax tax)? removeTax,
    TResult? Function(Service service)? addServiceCharge,
    TResult? Function(Service service)? removeServiceCharge,
    TResult? Function()? saveToDraft,
    TResult? Function(int index)? removeDraft,
    TResult? Function(Product product, ProductQuantity quantity)? addItemDraft,
  }) {
    return addTax?.call(tax);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(Product product)? addItem,
    TResult Function(Product product)? removeItem,
    TResult Function(Discount discount)? addDiscount,
    TResult Function(Discount discount)? removeDiscount,
    TResult Function(Tax tax)? addTax,
    TResult Function(Tax tax)? removeTax,
    TResult Function(Service service)? addServiceCharge,
    TResult Function(Service service)? removeServiceCharge,
    TResult Function()? saveToDraft,
    TResult Function(int index)? removeDraft,
    TResult Function(Product product, ProductQuantity quantity)? addItemDraft,
    required TResult orElse(),
  }) {
    if (addTax != null) {
      return addTax(tax);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_AddItem value) addItem,
    required TResult Function(_RemoveItem value) removeItem,
    required TResult Function(_AddDiscount value) addDiscount,
    required TResult Function(_RemoveDiscount value) removeDiscount,
    required TResult Function(_AddTax value) addTax,
    required TResult Function(_RemoveTax value) removeTax,
    required TResult Function(_AddServiceCharge value) addServiceCharge,
    required TResult Function(_RemoveServiceCharge value) removeServiceCharge,
    required TResult Function(_SaveToDraft value) saveToDraft,
    required TResult Function(_RemoveDraft value) removeDraft,
    required TResult Function(_AddItemDraft value) addItemDraft,
  }) {
    return addTax(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_AddItem value)? addItem,
    TResult? Function(_RemoveItem value)? removeItem,
    TResult? Function(_AddDiscount value)? addDiscount,
    TResult? Function(_RemoveDiscount value)? removeDiscount,
    TResult? Function(_AddTax value)? addTax,
    TResult? Function(_RemoveTax value)? removeTax,
    TResult? Function(_AddServiceCharge value)? addServiceCharge,
    TResult? Function(_RemoveServiceCharge value)? removeServiceCharge,
    TResult? Function(_SaveToDraft value)? saveToDraft,
    TResult? Function(_RemoveDraft value)? removeDraft,
    TResult? Function(_AddItemDraft value)? addItemDraft,
  }) {
    return addTax?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_AddItem value)? addItem,
    TResult Function(_RemoveItem value)? removeItem,
    TResult Function(_AddDiscount value)? addDiscount,
    TResult Function(_RemoveDiscount value)? removeDiscount,
    TResult Function(_AddTax value)? addTax,
    TResult Function(_RemoveTax value)? removeTax,
    TResult Function(_AddServiceCharge value)? addServiceCharge,
    TResult Function(_RemoveServiceCharge value)? removeServiceCharge,
    TResult Function(_SaveToDraft value)? saveToDraft,
    TResult Function(_RemoveDraft value)? removeDraft,
    TResult Function(_AddItemDraft value)? addItemDraft,
    required TResult orElse(),
  }) {
    if (addTax != null) {
      return addTax(this);
    }
    return orElse();
  }
}

abstract class _AddTax implements CheckoutEvent {
  const factory _AddTax(final Tax tax) = _$AddTaxImpl;

  Tax get tax;
  @JsonKey(ignore: true)
  _$$AddTaxImplCopyWith<_$AddTaxImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RemoveTaxImplCopyWith<$Res> {
  factory _$$RemoveTaxImplCopyWith(
          _$RemoveTaxImpl value, $Res Function(_$RemoveTaxImpl) then) =
      __$$RemoveTaxImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Tax tax});
}

/// @nodoc
class __$$RemoveTaxImplCopyWithImpl<$Res>
    extends _$CheckoutEventCopyWithImpl<$Res, _$RemoveTaxImpl>
    implements _$$RemoveTaxImplCopyWith<$Res> {
  __$$RemoveTaxImplCopyWithImpl(
      _$RemoveTaxImpl _value, $Res Function(_$RemoveTaxImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tax = null,
  }) {
    return _then(_$RemoveTaxImpl(
      null == tax
          ? _value.tax
          : tax // ignore: cast_nullable_to_non_nullable
              as Tax,
    ));
  }
}

/// @nodoc

class _$RemoveTaxImpl with DiagnosticableTreeMixin implements _RemoveTax {
  const _$RemoveTaxImpl(this.tax);

  @override
  final Tax tax;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CheckoutEvent.removeTax(tax: $tax)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CheckoutEvent.removeTax'))
      ..add(DiagnosticsProperty('tax', tax));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RemoveTaxImpl &&
            (identical(other.tax, tax) || other.tax == tax));
  }

  @override
  int get hashCode => Object.hash(runtimeType, tax);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RemoveTaxImplCopyWith<_$RemoveTaxImpl> get copyWith =>
      __$$RemoveTaxImplCopyWithImpl<_$RemoveTaxImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(Product product) addItem,
    required TResult Function(Product product) removeItem,
    required TResult Function(Discount discount) addDiscount,
    required TResult Function(Discount discount) removeDiscount,
    required TResult Function(Tax tax) addTax,
    required TResult Function(Tax tax) removeTax,
    required TResult Function(Service service) addServiceCharge,
    required TResult Function(Service service) removeServiceCharge,
    required TResult Function() saveToDraft,
    required TResult Function(int index) removeDraft,
    required TResult Function(Product product, ProductQuantity quantity)
        addItemDraft,
  }) {
    return removeTax(tax);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(Product product)? addItem,
    TResult? Function(Product product)? removeItem,
    TResult? Function(Discount discount)? addDiscount,
    TResult? Function(Discount discount)? removeDiscount,
    TResult? Function(Tax tax)? addTax,
    TResult? Function(Tax tax)? removeTax,
    TResult? Function(Service service)? addServiceCharge,
    TResult? Function(Service service)? removeServiceCharge,
    TResult? Function()? saveToDraft,
    TResult? Function(int index)? removeDraft,
    TResult? Function(Product product, ProductQuantity quantity)? addItemDraft,
  }) {
    return removeTax?.call(tax);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(Product product)? addItem,
    TResult Function(Product product)? removeItem,
    TResult Function(Discount discount)? addDiscount,
    TResult Function(Discount discount)? removeDiscount,
    TResult Function(Tax tax)? addTax,
    TResult Function(Tax tax)? removeTax,
    TResult Function(Service service)? addServiceCharge,
    TResult Function(Service service)? removeServiceCharge,
    TResult Function()? saveToDraft,
    TResult Function(int index)? removeDraft,
    TResult Function(Product product, ProductQuantity quantity)? addItemDraft,
    required TResult orElse(),
  }) {
    if (removeTax != null) {
      return removeTax(tax);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_AddItem value) addItem,
    required TResult Function(_RemoveItem value) removeItem,
    required TResult Function(_AddDiscount value) addDiscount,
    required TResult Function(_RemoveDiscount value) removeDiscount,
    required TResult Function(_AddTax value) addTax,
    required TResult Function(_RemoveTax value) removeTax,
    required TResult Function(_AddServiceCharge value) addServiceCharge,
    required TResult Function(_RemoveServiceCharge value) removeServiceCharge,
    required TResult Function(_SaveToDraft value) saveToDraft,
    required TResult Function(_RemoveDraft value) removeDraft,
    required TResult Function(_AddItemDraft value) addItemDraft,
  }) {
    return removeTax(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_AddItem value)? addItem,
    TResult? Function(_RemoveItem value)? removeItem,
    TResult? Function(_AddDiscount value)? addDiscount,
    TResult? Function(_RemoveDiscount value)? removeDiscount,
    TResult? Function(_AddTax value)? addTax,
    TResult? Function(_RemoveTax value)? removeTax,
    TResult? Function(_AddServiceCharge value)? addServiceCharge,
    TResult? Function(_RemoveServiceCharge value)? removeServiceCharge,
    TResult? Function(_SaveToDraft value)? saveToDraft,
    TResult? Function(_RemoveDraft value)? removeDraft,
    TResult? Function(_AddItemDraft value)? addItemDraft,
  }) {
    return removeTax?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_AddItem value)? addItem,
    TResult Function(_RemoveItem value)? removeItem,
    TResult Function(_AddDiscount value)? addDiscount,
    TResult Function(_RemoveDiscount value)? removeDiscount,
    TResult Function(_AddTax value)? addTax,
    TResult Function(_RemoveTax value)? removeTax,
    TResult Function(_AddServiceCharge value)? addServiceCharge,
    TResult Function(_RemoveServiceCharge value)? removeServiceCharge,
    TResult Function(_SaveToDraft value)? saveToDraft,
    TResult Function(_RemoveDraft value)? removeDraft,
    TResult Function(_AddItemDraft value)? addItemDraft,
    required TResult orElse(),
  }) {
    if (removeTax != null) {
      return removeTax(this);
    }
    return orElse();
  }
}

abstract class _RemoveTax implements CheckoutEvent {
  const factory _RemoveTax(final Tax tax) = _$RemoveTaxImpl;

  Tax get tax;
  @JsonKey(ignore: true)
  _$$RemoveTaxImplCopyWith<_$RemoveTaxImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AddServiceChargeImplCopyWith<$Res> {
  factory _$$AddServiceChargeImplCopyWith(_$AddServiceChargeImpl value,
          $Res Function(_$AddServiceChargeImpl) then) =
      __$$AddServiceChargeImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Service service});
}

/// @nodoc
class __$$AddServiceChargeImplCopyWithImpl<$Res>
    extends _$CheckoutEventCopyWithImpl<$Res, _$AddServiceChargeImpl>
    implements _$$AddServiceChargeImplCopyWith<$Res> {
  __$$AddServiceChargeImplCopyWithImpl(_$AddServiceChargeImpl _value,
      $Res Function(_$AddServiceChargeImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? service = null,
  }) {
    return _then(_$AddServiceChargeImpl(
      null == service
          ? _value.service
          : service // ignore: cast_nullable_to_non_nullable
              as Service,
    ));
  }
}

/// @nodoc

class _$AddServiceChargeImpl
    with DiagnosticableTreeMixin
    implements _AddServiceCharge {
  const _$AddServiceChargeImpl(this.service);

  @override
  final Service service;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CheckoutEvent.addServiceCharge(service: $service)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CheckoutEvent.addServiceCharge'))
      ..add(DiagnosticsProperty('service', service));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddServiceChargeImpl &&
            (identical(other.service, service) || other.service == service));
  }

  @override
  int get hashCode => Object.hash(runtimeType, service);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddServiceChargeImplCopyWith<_$AddServiceChargeImpl> get copyWith =>
      __$$AddServiceChargeImplCopyWithImpl<_$AddServiceChargeImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(Product product) addItem,
    required TResult Function(Product product) removeItem,
    required TResult Function(Discount discount) addDiscount,
    required TResult Function(Discount discount) removeDiscount,
    required TResult Function(Tax tax) addTax,
    required TResult Function(Tax tax) removeTax,
    required TResult Function(Service service) addServiceCharge,
    required TResult Function(Service service) removeServiceCharge,
    required TResult Function() saveToDraft,
    required TResult Function(int index) removeDraft,
    required TResult Function(Product product, ProductQuantity quantity)
        addItemDraft,
  }) {
    return addServiceCharge(service);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(Product product)? addItem,
    TResult? Function(Product product)? removeItem,
    TResult? Function(Discount discount)? addDiscount,
    TResult? Function(Discount discount)? removeDiscount,
    TResult? Function(Tax tax)? addTax,
    TResult? Function(Tax tax)? removeTax,
    TResult? Function(Service service)? addServiceCharge,
    TResult? Function(Service service)? removeServiceCharge,
    TResult? Function()? saveToDraft,
    TResult? Function(int index)? removeDraft,
    TResult? Function(Product product, ProductQuantity quantity)? addItemDraft,
  }) {
    return addServiceCharge?.call(service);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(Product product)? addItem,
    TResult Function(Product product)? removeItem,
    TResult Function(Discount discount)? addDiscount,
    TResult Function(Discount discount)? removeDiscount,
    TResult Function(Tax tax)? addTax,
    TResult Function(Tax tax)? removeTax,
    TResult Function(Service service)? addServiceCharge,
    TResult Function(Service service)? removeServiceCharge,
    TResult Function()? saveToDraft,
    TResult Function(int index)? removeDraft,
    TResult Function(Product product, ProductQuantity quantity)? addItemDraft,
    required TResult orElse(),
  }) {
    if (addServiceCharge != null) {
      return addServiceCharge(service);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_AddItem value) addItem,
    required TResult Function(_RemoveItem value) removeItem,
    required TResult Function(_AddDiscount value) addDiscount,
    required TResult Function(_RemoveDiscount value) removeDiscount,
    required TResult Function(_AddTax value) addTax,
    required TResult Function(_RemoveTax value) removeTax,
    required TResult Function(_AddServiceCharge value) addServiceCharge,
    required TResult Function(_RemoveServiceCharge value) removeServiceCharge,
    required TResult Function(_SaveToDraft value) saveToDraft,
    required TResult Function(_RemoveDraft value) removeDraft,
    required TResult Function(_AddItemDraft value) addItemDraft,
  }) {
    return addServiceCharge(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_AddItem value)? addItem,
    TResult? Function(_RemoveItem value)? removeItem,
    TResult? Function(_AddDiscount value)? addDiscount,
    TResult? Function(_RemoveDiscount value)? removeDiscount,
    TResult? Function(_AddTax value)? addTax,
    TResult? Function(_RemoveTax value)? removeTax,
    TResult? Function(_AddServiceCharge value)? addServiceCharge,
    TResult? Function(_RemoveServiceCharge value)? removeServiceCharge,
    TResult? Function(_SaveToDraft value)? saveToDraft,
    TResult? Function(_RemoveDraft value)? removeDraft,
    TResult? Function(_AddItemDraft value)? addItemDraft,
  }) {
    return addServiceCharge?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_AddItem value)? addItem,
    TResult Function(_RemoveItem value)? removeItem,
    TResult Function(_AddDiscount value)? addDiscount,
    TResult Function(_RemoveDiscount value)? removeDiscount,
    TResult Function(_AddTax value)? addTax,
    TResult Function(_RemoveTax value)? removeTax,
    TResult Function(_AddServiceCharge value)? addServiceCharge,
    TResult Function(_RemoveServiceCharge value)? removeServiceCharge,
    TResult Function(_SaveToDraft value)? saveToDraft,
    TResult Function(_RemoveDraft value)? removeDraft,
    TResult Function(_AddItemDraft value)? addItemDraft,
    required TResult orElse(),
  }) {
    if (addServiceCharge != null) {
      return addServiceCharge(this);
    }
    return orElse();
  }
}

abstract class _AddServiceCharge implements CheckoutEvent {
  const factory _AddServiceCharge(final Service service) =
      _$AddServiceChargeImpl;

  Service get service;
  @JsonKey(ignore: true)
  _$$AddServiceChargeImplCopyWith<_$AddServiceChargeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RemoveServiceChargeImplCopyWith<$Res> {
  factory _$$RemoveServiceChargeImplCopyWith(_$RemoveServiceChargeImpl value,
          $Res Function(_$RemoveServiceChargeImpl) then) =
      __$$RemoveServiceChargeImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Service service});
}

/// @nodoc
class __$$RemoveServiceChargeImplCopyWithImpl<$Res>
    extends _$CheckoutEventCopyWithImpl<$Res, _$RemoveServiceChargeImpl>
    implements _$$RemoveServiceChargeImplCopyWith<$Res> {
  __$$RemoveServiceChargeImplCopyWithImpl(_$RemoveServiceChargeImpl _value,
      $Res Function(_$RemoveServiceChargeImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? service = null,
  }) {
    return _then(_$RemoveServiceChargeImpl(
      null == service
          ? _value.service
          : service // ignore: cast_nullable_to_non_nullable
              as Service,
    ));
  }
}

/// @nodoc

class _$RemoveServiceChargeImpl
    with DiagnosticableTreeMixin
    implements _RemoveServiceCharge {
  const _$RemoveServiceChargeImpl(this.service);

  @override
  final Service service;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CheckoutEvent.removeServiceCharge(service: $service)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CheckoutEvent.removeServiceCharge'))
      ..add(DiagnosticsProperty('service', service));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RemoveServiceChargeImpl &&
            (identical(other.service, service) || other.service == service));
  }

  @override
  int get hashCode => Object.hash(runtimeType, service);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RemoveServiceChargeImplCopyWith<_$RemoveServiceChargeImpl> get copyWith =>
      __$$RemoveServiceChargeImplCopyWithImpl<_$RemoveServiceChargeImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(Product product) addItem,
    required TResult Function(Product product) removeItem,
    required TResult Function(Discount discount) addDiscount,
    required TResult Function(Discount discount) removeDiscount,
    required TResult Function(Tax tax) addTax,
    required TResult Function(Tax tax) removeTax,
    required TResult Function(Service service) addServiceCharge,
    required TResult Function(Service service) removeServiceCharge,
    required TResult Function() saveToDraft,
    required TResult Function(int index) removeDraft,
    required TResult Function(Product product, ProductQuantity quantity)
        addItemDraft,
  }) {
    return removeServiceCharge(service);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(Product product)? addItem,
    TResult? Function(Product product)? removeItem,
    TResult? Function(Discount discount)? addDiscount,
    TResult? Function(Discount discount)? removeDiscount,
    TResult? Function(Tax tax)? addTax,
    TResult? Function(Tax tax)? removeTax,
    TResult? Function(Service service)? addServiceCharge,
    TResult? Function(Service service)? removeServiceCharge,
    TResult? Function()? saveToDraft,
    TResult? Function(int index)? removeDraft,
    TResult? Function(Product product, ProductQuantity quantity)? addItemDraft,
  }) {
    return removeServiceCharge?.call(service);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(Product product)? addItem,
    TResult Function(Product product)? removeItem,
    TResult Function(Discount discount)? addDiscount,
    TResult Function(Discount discount)? removeDiscount,
    TResult Function(Tax tax)? addTax,
    TResult Function(Tax tax)? removeTax,
    TResult Function(Service service)? addServiceCharge,
    TResult Function(Service service)? removeServiceCharge,
    TResult Function()? saveToDraft,
    TResult Function(int index)? removeDraft,
    TResult Function(Product product, ProductQuantity quantity)? addItemDraft,
    required TResult orElse(),
  }) {
    if (removeServiceCharge != null) {
      return removeServiceCharge(service);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_AddItem value) addItem,
    required TResult Function(_RemoveItem value) removeItem,
    required TResult Function(_AddDiscount value) addDiscount,
    required TResult Function(_RemoveDiscount value) removeDiscount,
    required TResult Function(_AddTax value) addTax,
    required TResult Function(_RemoveTax value) removeTax,
    required TResult Function(_AddServiceCharge value) addServiceCharge,
    required TResult Function(_RemoveServiceCharge value) removeServiceCharge,
    required TResult Function(_SaveToDraft value) saveToDraft,
    required TResult Function(_RemoveDraft value) removeDraft,
    required TResult Function(_AddItemDraft value) addItemDraft,
  }) {
    return removeServiceCharge(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_AddItem value)? addItem,
    TResult? Function(_RemoveItem value)? removeItem,
    TResult? Function(_AddDiscount value)? addDiscount,
    TResult? Function(_RemoveDiscount value)? removeDiscount,
    TResult? Function(_AddTax value)? addTax,
    TResult? Function(_RemoveTax value)? removeTax,
    TResult? Function(_AddServiceCharge value)? addServiceCharge,
    TResult? Function(_RemoveServiceCharge value)? removeServiceCharge,
    TResult? Function(_SaveToDraft value)? saveToDraft,
    TResult? Function(_RemoveDraft value)? removeDraft,
    TResult? Function(_AddItemDraft value)? addItemDraft,
  }) {
    return removeServiceCharge?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_AddItem value)? addItem,
    TResult Function(_RemoveItem value)? removeItem,
    TResult Function(_AddDiscount value)? addDiscount,
    TResult Function(_RemoveDiscount value)? removeDiscount,
    TResult Function(_AddTax value)? addTax,
    TResult Function(_RemoveTax value)? removeTax,
    TResult Function(_AddServiceCharge value)? addServiceCharge,
    TResult Function(_RemoveServiceCharge value)? removeServiceCharge,
    TResult Function(_SaveToDraft value)? saveToDraft,
    TResult Function(_RemoveDraft value)? removeDraft,
    TResult Function(_AddItemDraft value)? addItemDraft,
    required TResult orElse(),
  }) {
    if (removeServiceCharge != null) {
      return removeServiceCharge(this);
    }
    return orElse();
  }
}

abstract class _RemoveServiceCharge implements CheckoutEvent {
  const factory _RemoveServiceCharge(final Service service) =
      _$RemoveServiceChargeImpl;

  Service get service;
  @JsonKey(ignore: true)
  _$$RemoveServiceChargeImplCopyWith<_$RemoveServiceChargeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SaveToDraftImplCopyWith<$Res> {
  factory _$$SaveToDraftImplCopyWith(
          _$SaveToDraftImpl value, $Res Function(_$SaveToDraftImpl) then) =
      __$$SaveToDraftImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SaveToDraftImplCopyWithImpl<$Res>
    extends _$CheckoutEventCopyWithImpl<$Res, _$SaveToDraftImpl>
    implements _$$SaveToDraftImplCopyWith<$Res> {
  __$$SaveToDraftImplCopyWithImpl(
      _$SaveToDraftImpl _value, $Res Function(_$SaveToDraftImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SaveToDraftImpl with DiagnosticableTreeMixin implements _SaveToDraft {
  const _$SaveToDraftImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CheckoutEvent.saveToDraft()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'CheckoutEvent.saveToDraft'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SaveToDraftImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(Product product) addItem,
    required TResult Function(Product product) removeItem,
    required TResult Function(Discount discount) addDiscount,
    required TResult Function(Discount discount) removeDiscount,
    required TResult Function(Tax tax) addTax,
    required TResult Function(Tax tax) removeTax,
    required TResult Function(Service service) addServiceCharge,
    required TResult Function(Service service) removeServiceCharge,
    required TResult Function() saveToDraft,
    required TResult Function(int index) removeDraft,
    required TResult Function(Product product, ProductQuantity quantity)
        addItemDraft,
  }) {
    return saveToDraft();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(Product product)? addItem,
    TResult? Function(Product product)? removeItem,
    TResult? Function(Discount discount)? addDiscount,
    TResult? Function(Discount discount)? removeDiscount,
    TResult? Function(Tax tax)? addTax,
    TResult? Function(Tax tax)? removeTax,
    TResult? Function(Service service)? addServiceCharge,
    TResult? Function(Service service)? removeServiceCharge,
    TResult? Function()? saveToDraft,
    TResult? Function(int index)? removeDraft,
    TResult? Function(Product product, ProductQuantity quantity)? addItemDraft,
  }) {
    return saveToDraft?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(Product product)? addItem,
    TResult Function(Product product)? removeItem,
    TResult Function(Discount discount)? addDiscount,
    TResult Function(Discount discount)? removeDiscount,
    TResult Function(Tax tax)? addTax,
    TResult Function(Tax tax)? removeTax,
    TResult Function(Service service)? addServiceCharge,
    TResult Function(Service service)? removeServiceCharge,
    TResult Function()? saveToDraft,
    TResult Function(int index)? removeDraft,
    TResult Function(Product product, ProductQuantity quantity)? addItemDraft,
    required TResult orElse(),
  }) {
    if (saveToDraft != null) {
      return saveToDraft();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_AddItem value) addItem,
    required TResult Function(_RemoveItem value) removeItem,
    required TResult Function(_AddDiscount value) addDiscount,
    required TResult Function(_RemoveDiscount value) removeDiscount,
    required TResult Function(_AddTax value) addTax,
    required TResult Function(_RemoveTax value) removeTax,
    required TResult Function(_AddServiceCharge value) addServiceCharge,
    required TResult Function(_RemoveServiceCharge value) removeServiceCharge,
    required TResult Function(_SaveToDraft value) saveToDraft,
    required TResult Function(_RemoveDraft value) removeDraft,
    required TResult Function(_AddItemDraft value) addItemDraft,
  }) {
    return saveToDraft(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_AddItem value)? addItem,
    TResult? Function(_RemoveItem value)? removeItem,
    TResult? Function(_AddDiscount value)? addDiscount,
    TResult? Function(_RemoveDiscount value)? removeDiscount,
    TResult? Function(_AddTax value)? addTax,
    TResult? Function(_RemoveTax value)? removeTax,
    TResult? Function(_AddServiceCharge value)? addServiceCharge,
    TResult? Function(_RemoveServiceCharge value)? removeServiceCharge,
    TResult? Function(_SaveToDraft value)? saveToDraft,
    TResult? Function(_RemoveDraft value)? removeDraft,
    TResult? Function(_AddItemDraft value)? addItemDraft,
  }) {
    return saveToDraft?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_AddItem value)? addItem,
    TResult Function(_RemoveItem value)? removeItem,
    TResult Function(_AddDiscount value)? addDiscount,
    TResult Function(_RemoveDiscount value)? removeDiscount,
    TResult Function(_AddTax value)? addTax,
    TResult Function(_RemoveTax value)? removeTax,
    TResult Function(_AddServiceCharge value)? addServiceCharge,
    TResult Function(_RemoveServiceCharge value)? removeServiceCharge,
    TResult Function(_SaveToDraft value)? saveToDraft,
    TResult Function(_RemoveDraft value)? removeDraft,
    TResult Function(_AddItemDraft value)? addItemDraft,
    required TResult orElse(),
  }) {
    if (saveToDraft != null) {
      return saveToDraft(this);
    }
    return orElse();
  }
}

abstract class _SaveToDraft implements CheckoutEvent {
  const factory _SaveToDraft() = _$SaveToDraftImpl;
}

/// @nodoc
abstract class _$$RemoveDraftImplCopyWith<$Res> {
  factory _$$RemoveDraftImplCopyWith(
          _$RemoveDraftImpl value, $Res Function(_$RemoveDraftImpl) then) =
      __$$RemoveDraftImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int index});
}

/// @nodoc
class __$$RemoveDraftImplCopyWithImpl<$Res>
    extends _$CheckoutEventCopyWithImpl<$Res, _$RemoveDraftImpl>
    implements _$$RemoveDraftImplCopyWith<$Res> {
  __$$RemoveDraftImplCopyWithImpl(
      _$RemoveDraftImpl _value, $Res Function(_$RemoveDraftImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = null,
  }) {
    return _then(_$RemoveDraftImpl(
      null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$RemoveDraftImpl with DiagnosticableTreeMixin implements _RemoveDraft {
  const _$RemoveDraftImpl(this.index);

  @override
  final int index;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CheckoutEvent.removeDraft(index: $index)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CheckoutEvent.removeDraft'))
      ..add(DiagnosticsProperty('index', index));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RemoveDraftImpl &&
            (identical(other.index, index) || other.index == index));
  }

  @override
  int get hashCode => Object.hash(runtimeType, index);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RemoveDraftImplCopyWith<_$RemoveDraftImpl> get copyWith =>
      __$$RemoveDraftImplCopyWithImpl<_$RemoveDraftImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(Product product) addItem,
    required TResult Function(Product product) removeItem,
    required TResult Function(Discount discount) addDiscount,
    required TResult Function(Discount discount) removeDiscount,
    required TResult Function(Tax tax) addTax,
    required TResult Function(Tax tax) removeTax,
    required TResult Function(Service service) addServiceCharge,
    required TResult Function(Service service) removeServiceCharge,
    required TResult Function() saveToDraft,
    required TResult Function(int index) removeDraft,
    required TResult Function(Product product, ProductQuantity quantity)
        addItemDraft,
  }) {
    return removeDraft(index);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(Product product)? addItem,
    TResult? Function(Product product)? removeItem,
    TResult? Function(Discount discount)? addDiscount,
    TResult? Function(Discount discount)? removeDiscount,
    TResult? Function(Tax tax)? addTax,
    TResult? Function(Tax tax)? removeTax,
    TResult? Function(Service service)? addServiceCharge,
    TResult? Function(Service service)? removeServiceCharge,
    TResult? Function()? saveToDraft,
    TResult? Function(int index)? removeDraft,
    TResult? Function(Product product, ProductQuantity quantity)? addItemDraft,
  }) {
    return removeDraft?.call(index);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(Product product)? addItem,
    TResult Function(Product product)? removeItem,
    TResult Function(Discount discount)? addDiscount,
    TResult Function(Discount discount)? removeDiscount,
    TResult Function(Tax tax)? addTax,
    TResult Function(Tax tax)? removeTax,
    TResult Function(Service service)? addServiceCharge,
    TResult Function(Service service)? removeServiceCharge,
    TResult Function()? saveToDraft,
    TResult Function(int index)? removeDraft,
    TResult Function(Product product, ProductQuantity quantity)? addItemDraft,
    required TResult orElse(),
  }) {
    if (removeDraft != null) {
      return removeDraft(index);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_AddItem value) addItem,
    required TResult Function(_RemoveItem value) removeItem,
    required TResult Function(_AddDiscount value) addDiscount,
    required TResult Function(_RemoveDiscount value) removeDiscount,
    required TResult Function(_AddTax value) addTax,
    required TResult Function(_RemoveTax value) removeTax,
    required TResult Function(_AddServiceCharge value) addServiceCharge,
    required TResult Function(_RemoveServiceCharge value) removeServiceCharge,
    required TResult Function(_SaveToDraft value) saveToDraft,
    required TResult Function(_RemoveDraft value) removeDraft,
    required TResult Function(_AddItemDraft value) addItemDraft,
  }) {
    return removeDraft(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_AddItem value)? addItem,
    TResult? Function(_RemoveItem value)? removeItem,
    TResult? Function(_AddDiscount value)? addDiscount,
    TResult? Function(_RemoveDiscount value)? removeDiscount,
    TResult? Function(_AddTax value)? addTax,
    TResult? Function(_RemoveTax value)? removeTax,
    TResult? Function(_AddServiceCharge value)? addServiceCharge,
    TResult? Function(_RemoveServiceCharge value)? removeServiceCharge,
    TResult? Function(_SaveToDraft value)? saveToDraft,
    TResult? Function(_RemoveDraft value)? removeDraft,
    TResult? Function(_AddItemDraft value)? addItemDraft,
  }) {
    return removeDraft?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_AddItem value)? addItem,
    TResult Function(_RemoveItem value)? removeItem,
    TResult Function(_AddDiscount value)? addDiscount,
    TResult Function(_RemoveDiscount value)? removeDiscount,
    TResult Function(_AddTax value)? addTax,
    TResult Function(_RemoveTax value)? removeTax,
    TResult Function(_AddServiceCharge value)? addServiceCharge,
    TResult Function(_RemoveServiceCharge value)? removeServiceCharge,
    TResult Function(_SaveToDraft value)? saveToDraft,
    TResult Function(_RemoveDraft value)? removeDraft,
    TResult Function(_AddItemDraft value)? addItemDraft,
    required TResult orElse(),
  }) {
    if (removeDraft != null) {
      return removeDraft(this);
    }
    return orElse();
  }
}

abstract class _RemoveDraft implements CheckoutEvent {
  const factory _RemoveDraft(final int index) = _$RemoveDraftImpl;

  int get index;
  @JsonKey(ignore: true)
  _$$RemoveDraftImplCopyWith<_$RemoveDraftImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AddItemDraftImplCopyWith<$Res> {
  factory _$$AddItemDraftImplCopyWith(
          _$AddItemDraftImpl value, $Res Function(_$AddItemDraftImpl) then) =
      __$$AddItemDraftImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Product product, ProductQuantity quantity});
}

/// @nodoc
class __$$AddItemDraftImplCopyWithImpl<$Res>
    extends _$CheckoutEventCopyWithImpl<$Res, _$AddItemDraftImpl>
    implements _$$AddItemDraftImplCopyWith<$Res> {
  __$$AddItemDraftImplCopyWithImpl(
      _$AddItemDraftImpl _value, $Res Function(_$AddItemDraftImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? product = null,
    Object? quantity = null,
  }) {
    return _then(_$AddItemDraftImpl(
      null == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as Product,
      null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as ProductQuantity,
    ));
  }
}

/// @nodoc

class _$AddItemDraftImpl with DiagnosticableTreeMixin implements _AddItemDraft {
  const _$AddItemDraftImpl(this.product, this.quantity);

  @override
  final Product product;
  @override
  final ProductQuantity quantity;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CheckoutEvent.addItemDraft(product: $product, quantity: $quantity)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CheckoutEvent.addItemDraft'))
      ..add(DiagnosticsProperty('product', product))
      ..add(DiagnosticsProperty('quantity', quantity));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddItemDraftImpl &&
            (identical(other.product, product) || other.product == product) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity));
  }

  @override
  int get hashCode => Object.hash(runtimeType, product, quantity);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddItemDraftImplCopyWith<_$AddItemDraftImpl> get copyWith =>
      __$$AddItemDraftImplCopyWithImpl<_$AddItemDraftImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(Product product) addItem,
    required TResult Function(Product product) removeItem,
    required TResult Function(Discount discount) addDiscount,
    required TResult Function(Discount discount) removeDiscount,
    required TResult Function(Tax tax) addTax,
    required TResult Function(Tax tax) removeTax,
    required TResult Function(Service service) addServiceCharge,
    required TResult Function(Service service) removeServiceCharge,
    required TResult Function() saveToDraft,
    required TResult Function(int index) removeDraft,
    required TResult Function(Product product, ProductQuantity quantity)
        addItemDraft,
  }) {
    return addItemDraft(product, quantity);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(Product product)? addItem,
    TResult? Function(Product product)? removeItem,
    TResult? Function(Discount discount)? addDiscount,
    TResult? Function(Discount discount)? removeDiscount,
    TResult? Function(Tax tax)? addTax,
    TResult? Function(Tax tax)? removeTax,
    TResult? Function(Service service)? addServiceCharge,
    TResult? Function(Service service)? removeServiceCharge,
    TResult? Function()? saveToDraft,
    TResult? Function(int index)? removeDraft,
    TResult? Function(Product product, ProductQuantity quantity)? addItemDraft,
  }) {
    return addItemDraft?.call(product, quantity);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(Product product)? addItem,
    TResult Function(Product product)? removeItem,
    TResult Function(Discount discount)? addDiscount,
    TResult Function(Discount discount)? removeDiscount,
    TResult Function(Tax tax)? addTax,
    TResult Function(Tax tax)? removeTax,
    TResult Function(Service service)? addServiceCharge,
    TResult Function(Service service)? removeServiceCharge,
    TResult Function()? saveToDraft,
    TResult Function(int index)? removeDraft,
    TResult Function(Product product, ProductQuantity quantity)? addItemDraft,
    required TResult orElse(),
  }) {
    if (addItemDraft != null) {
      return addItemDraft(product, quantity);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_AddItem value) addItem,
    required TResult Function(_RemoveItem value) removeItem,
    required TResult Function(_AddDiscount value) addDiscount,
    required TResult Function(_RemoveDiscount value) removeDiscount,
    required TResult Function(_AddTax value) addTax,
    required TResult Function(_RemoveTax value) removeTax,
    required TResult Function(_AddServiceCharge value) addServiceCharge,
    required TResult Function(_RemoveServiceCharge value) removeServiceCharge,
    required TResult Function(_SaveToDraft value) saveToDraft,
    required TResult Function(_RemoveDraft value) removeDraft,
    required TResult Function(_AddItemDraft value) addItemDraft,
  }) {
    return addItemDraft(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_AddItem value)? addItem,
    TResult? Function(_RemoveItem value)? removeItem,
    TResult? Function(_AddDiscount value)? addDiscount,
    TResult? Function(_RemoveDiscount value)? removeDiscount,
    TResult? Function(_AddTax value)? addTax,
    TResult? Function(_RemoveTax value)? removeTax,
    TResult? Function(_AddServiceCharge value)? addServiceCharge,
    TResult? Function(_RemoveServiceCharge value)? removeServiceCharge,
    TResult? Function(_SaveToDraft value)? saveToDraft,
    TResult? Function(_RemoveDraft value)? removeDraft,
    TResult? Function(_AddItemDraft value)? addItemDraft,
  }) {
    return addItemDraft?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_AddItem value)? addItem,
    TResult Function(_RemoveItem value)? removeItem,
    TResult Function(_AddDiscount value)? addDiscount,
    TResult Function(_RemoveDiscount value)? removeDiscount,
    TResult Function(_AddTax value)? addTax,
    TResult Function(_RemoveTax value)? removeTax,
    TResult Function(_AddServiceCharge value)? addServiceCharge,
    TResult Function(_RemoveServiceCharge value)? removeServiceCharge,
    TResult Function(_SaveToDraft value)? saveToDraft,
    TResult Function(_RemoveDraft value)? removeDraft,
    TResult Function(_AddItemDraft value)? addItemDraft,
    required TResult orElse(),
  }) {
    if (addItemDraft != null) {
      return addItemDraft(this);
    }
    return orElse();
  }
}

abstract class _AddItemDraft implements CheckoutEvent {
  const factory _AddItemDraft(
          final Product product, final ProductQuantity quantity) =
      _$AddItemDraftImpl;

  Product get product;
  ProductQuantity get quantity;
  @JsonKey(ignore: true)
  _$$AddItemDraftImplCopyWith<_$AddItemDraftImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CheckoutState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            List<ProductQuantity> items,
            List<List<ProductQuantity>> drafts,
            Discount? discount,
            Tax? tax,
            Service? serviceCharge)
        loaded,
    required TResult Function(String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(
            List<ProductQuantity> items,
            List<List<ProductQuantity>> drafts,
            Discount? discount,
            Tax? tax,
            Service? serviceCharge)?
        loaded,
    TResult? Function(String message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
            List<ProductQuantity> items,
            List<List<ProductQuantity>> drafts,
            Discount? discount,
            Tax? tax,
            Service? serviceCharge)?
        loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CheckoutStateCopyWith<$Res> {
  factory $CheckoutStateCopyWith(
          CheckoutState value, $Res Function(CheckoutState) then) =
      _$CheckoutStateCopyWithImpl<$Res, CheckoutState>;
}

/// @nodoc
class _$CheckoutStateCopyWithImpl<$Res, $Val extends CheckoutState>
    implements $CheckoutStateCopyWith<$Res> {
  _$CheckoutStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$CheckoutStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialImpl with DiagnosticableTreeMixin implements _Initial {
  const _$InitialImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CheckoutState.initial()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'CheckoutState.initial'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            List<ProductQuantity> items,
            List<List<ProductQuantity>> drafts,
            Discount? discount,
            Tax? tax,
            Service? serviceCharge)
        loaded,
    required TResult Function(String message) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(
            List<ProductQuantity> items,
            List<List<ProductQuantity>> drafts,
            Discount? discount,
            Tax? tax,
            Service? serviceCharge)?
        loaded,
    TResult? Function(String message)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
            List<ProductQuantity> items,
            List<List<ProductQuantity>> drafts,
            Discount? discount,
            Tax? tax,
            Service? serviceCharge)?
        loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements CheckoutState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$LoadingImplCopyWith<$Res> {
  factory _$$LoadingImplCopyWith(
          _$LoadingImpl value, $Res Function(_$LoadingImpl) then) =
      __$$LoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingImplCopyWithImpl<$Res>
    extends _$CheckoutStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadingImpl with DiagnosticableTreeMixin implements _Loading {
  const _$LoadingImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CheckoutState.loading()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'CheckoutState.loading'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            List<ProductQuantity> items,
            List<List<ProductQuantity>> drafts,
            Discount? discount,
            Tax? tax,
            Service? serviceCharge)
        loaded,
    required TResult Function(String message) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(
            List<ProductQuantity> items,
            List<List<ProductQuantity>> drafts,
            Discount? discount,
            Tax? tax,
            Service? serviceCharge)?
        loaded,
    TResult? Function(String message)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
            List<ProductQuantity> items,
            List<List<ProductQuantity>> drafts,
            Discount? discount,
            Tax? tax,
            Service? serviceCharge)?
        loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements CheckoutState {
  const factory _Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$LoadedImplCopyWith<$Res> {
  factory _$$LoadedImplCopyWith(
          _$LoadedImpl value, $Res Function(_$LoadedImpl) then) =
      __$$LoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {List<ProductQuantity> items,
      List<List<ProductQuantity>> drafts,
      Discount? discount,
      Tax? tax,
      Service? serviceCharge});
}

/// @nodoc
class __$$LoadedImplCopyWithImpl<$Res>
    extends _$CheckoutStateCopyWithImpl<$Res, _$LoadedImpl>
    implements _$$LoadedImplCopyWith<$Res> {
  __$$LoadedImplCopyWithImpl(
      _$LoadedImpl _value, $Res Function(_$LoadedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? items = null,
    Object? drafts = null,
    Object? discount = freezed,
    Object? tax = freezed,
    Object? serviceCharge = freezed,
  }) {
    return _then(_$LoadedImpl(
      null == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<ProductQuantity>,
      null == drafts
          ? _value._drafts
          : drafts // ignore: cast_nullable_to_non_nullable
              as List<List<ProductQuantity>>,
      freezed == discount
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as Discount?,
      freezed == tax
          ? _value.tax
          : tax // ignore: cast_nullable_to_non_nullable
              as Tax?,
      freezed == serviceCharge
          ? _value.serviceCharge
          : serviceCharge // ignore: cast_nullable_to_non_nullable
              as Service?,
    ));
  }
}

/// @nodoc

class _$LoadedImpl with DiagnosticableTreeMixin implements _Loaded {
  const _$LoadedImpl(
      final List<ProductQuantity> items,
      final List<List<ProductQuantity>> drafts,
      this.discount,
      this.tax,
      this.serviceCharge)
      : _items = items,
        _drafts = drafts;

  final List<ProductQuantity> _items;
  @override
  List<ProductQuantity> get items {
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  final List<List<ProductQuantity>> _drafts;
  @override
  List<List<ProductQuantity>> get drafts {
    if (_drafts is EqualUnmodifiableListView) return _drafts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_drafts);
  }

  @override
  final Discount? discount;
  @override
  final Tax? tax;
  @override
  final Service? serviceCharge;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CheckoutState.loaded(items: $items, drafts: $drafts, discount: $discount, tax: $tax, serviceCharge: $serviceCharge)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CheckoutState.loaded'))
      ..add(DiagnosticsProperty('items', items))
      ..add(DiagnosticsProperty('drafts', drafts))
      ..add(DiagnosticsProperty('discount', discount))
      ..add(DiagnosticsProperty('tax', tax))
      ..add(DiagnosticsProperty('serviceCharge', serviceCharge));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadedImpl &&
            const DeepCollectionEquality().equals(other._items, _items) &&
            const DeepCollectionEquality().equals(other._drafts, _drafts) &&
            (identical(other.discount, discount) ||
                other.discount == discount) &&
            (identical(other.tax, tax) || other.tax == tax) &&
            (identical(other.serviceCharge, serviceCharge) ||
                other.serviceCharge == serviceCharge));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_items),
      const DeepCollectionEquality().hash(_drafts),
      discount,
      tax,
      serviceCharge);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadedImplCopyWith<_$LoadedImpl> get copyWith =>
      __$$LoadedImplCopyWithImpl<_$LoadedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            List<ProductQuantity> items,
            List<List<ProductQuantity>> drafts,
            Discount? discount,
            Tax? tax,
            Service? serviceCharge)
        loaded,
    required TResult Function(String message) error,
  }) {
    return loaded(items, drafts, discount, tax, serviceCharge);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(
            List<ProductQuantity> items,
            List<List<ProductQuantity>> drafts,
            Discount? discount,
            Tax? tax,
            Service? serviceCharge)?
        loaded,
    TResult? Function(String message)? error,
  }) {
    return loaded?.call(items, drafts, discount, tax, serviceCharge);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
            List<ProductQuantity> items,
            List<List<ProductQuantity>> drafts,
            Discount? discount,
            Tax? tax,
            Service? serviceCharge)?
        loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(items, drafts, discount, tax, serviceCharge);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _Loaded implements CheckoutState {
  const factory _Loaded(
      final List<ProductQuantity> items,
      final List<List<ProductQuantity>> drafts,
      final Discount? discount,
      final Tax? tax,
      final Service? serviceCharge) = _$LoadedImpl;

  List<ProductQuantity> get items;
  List<List<ProductQuantity>> get drafts;
  Discount? get discount;
  Tax? get tax;
  Service? get serviceCharge;
  @JsonKey(ignore: true)
  _$$LoadedImplCopyWith<_$LoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ErrorImplCopyWith<$Res> {
  factory _$$ErrorImplCopyWith(
          _$ErrorImpl value, $Res Function(_$ErrorImpl) then) =
      __$$ErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$ErrorImplCopyWithImpl<$Res>
    extends _$CheckoutStateCopyWithImpl<$Res, _$ErrorImpl>
    implements _$$ErrorImplCopyWith<$Res> {
  __$$ErrorImplCopyWithImpl(
      _$ErrorImpl _value, $Res Function(_$ErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$ErrorImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ErrorImpl with DiagnosticableTreeMixin implements _Error {
  const _$ErrorImpl(this.message);

  @override
  final String message;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CheckoutState.error(message: $message)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CheckoutState.error'))
      ..add(DiagnosticsProperty('message', message));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      __$$ErrorImplCopyWithImpl<_$ErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            List<ProductQuantity> items,
            List<List<ProductQuantity>> drafts,
            Discount? discount,
            Tax? tax,
            Service? serviceCharge)
        loaded,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(
            List<ProductQuantity> items,
            List<List<ProductQuantity>> drafts,
            Discount? discount,
            Tax? tax,
            Service? serviceCharge)?
        loaded,
    TResult? Function(String message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
            List<ProductQuantity> items,
            List<List<ProductQuantity>> drafts,
            Discount? discount,
            Tax? tax,
            Service? serviceCharge)?
        loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements CheckoutState {
  const factory _Error(final String message) = _$ErrorImpl;

  String get message;
  @JsonKey(ignore: true)
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
