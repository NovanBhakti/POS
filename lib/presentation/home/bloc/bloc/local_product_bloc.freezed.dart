// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'local_product_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$LocalProductEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() getLocalProduct,
    required TResult Function(String query) searchLocalProduct,
    required TResult Function() getLocalOrder,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getLocalProduct,
    TResult? Function(String query)? searchLocalProduct,
    TResult? Function()? getLocalOrder,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getLocalProduct,
    TResult Function(String query)? searchLocalProduct,
    TResult Function()? getLocalOrder,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetLocalProduct value) getLocalProduct,
    required TResult Function(_SearchLocalProduct value) searchLocalProduct,
    required TResult Function(_GetLocalOrder value) getLocalOrder,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetLocalProduct value)? getLocalProduct,
    TResult? Function(_SearchLocalProduct value)? searchLocalProduct,
    TResult? Function(_GetLocalOrder value)? getLocalOrder,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetLocalProduct value)? getLocalProduct,
    TResult Function(_SearchLocalProduct value)? searchLocalProduct,
    TResult Function(_GetLocalOrder value)? getLocalOrder,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocalProductEventCopyWith<$Res> {
  factory $LocalProductEventCopyWith(
          LocalProductEvent value, $Res Function(LocalProductEvent) then) =
      _$LocalProductEventCopyWithImpl<$Res, LocalProductEvent>;
}

/// @nodoc
class _$LocalProductEventCopyWithImpl<$Res, $Val extends LocalProductEvent>
    implements $LocalProductEventCopyWith<$Res> {
  _$LocalProductEventCopyWithImpl(this._value, this._then);

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
    extends _$LocalProductEventCopyWithImpl<$Res, _$StartedImpl>
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
    return 'LocalProductEvent.started()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'LocalProductEvent.started'));
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
    required TResult Function() getLocalProduct,
    required TResult Function(String query) searchLocalProduct,
    required TResult Function() getLocalOrder,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getLocalProduct,
    TResult? Function(String query)? searchLocalProduct,
    TResult? Function()? getLocalOrder,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getLocalProduct,
    TResult Function(String query)? searchLocalProduct,
    TResult Function()? getLocalOrder,
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
    required TResult Function(_GetLocalProduct value) getLocalProduct,
    required TResult Function(_SearchLocalProduct value) searchLocalProduct,
    required TResult Function(_GetLocalOrder value) getLocalOrder,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetLocalProduct value)? getLocalProduct,
    TResult? Function(_SearchLocalProduct value)? searchLocalProduct,
    TResult? Function(_GetLocalOrder value)? getLocalOrder,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetLocalProduct value)? getLocalProduct,
    TResult Function(_SearchLocalProduct value)? searchLocalProduct,
    TResult Function(_GetLocalOrder value)? getLocalOrder,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements LocalProductEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$GetLocalProductImplCopyWith<$Res> {
  factory _$$GetLocalProductImplCopyWith(_$GetLocalProductImpl value,
          $Res Function(_$GetLocalProductImpl) then) =
      __$$GetLocalProductImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetLocalProductImplCopyWithImpl<$Res>
    extends _$LocalProductEventCopyWithImpl<$Res, _$GetLocalProductImpl>
    implements _$$GetLocalProductImplCopyWith<$Res> {
  __$$GetLocalProductImplCopyWithImpl(
      _$GetLocalProductImpl _value, $Res Function(_$GetLocalProductImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetLocalProductImpl
    with DiagnosticableTreeMixin
    implements _GetLocalProduct {
  const _$GetLocalProductImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'LocalProductEvent.getLocalProduct()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
        .add(DiagnosticsProperty('type', 'LocalProductEvent.getLocalProduct'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetLocalProductImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() getLocalProduct,
    required TResult Function(String query) searchLocalProduct,
    required TResult Function() getLocalOrder,
  }) {
    return getLocalProduct();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getLocalProduct,
    TResult? Function(String query)? searchLocalProduct,
    TResult? Function()? getLocalOrder,
  }) {
    return getLocalProduct?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getLocalProduct,
    TResult Function(String query)? searchLocalProduct,
    TResult Function()? getLocalOrder,
    required TResult orElse(),
  }) {
    if (getLocalProduct != null) {
      return getLocalProduct();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetLocalProduct value) getLocalProduct,
    required TResult Function(_SearchLocalProduct value) searchLocalProduct,
    required TResult Function(_GetLocalOrder value) getLocalOrder,
  }) {
    return getLocalProduct(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetLocalProduct value)? getLocalProduct,
    TResult? Function(_SearchLocalProduct value)? searchLocalProduct,
    TResult? Function(_GetLocalOrder value)? getLocalOrder,
  }) {
    return getLocalProduct?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetLocalProduct value)? getLocalProduct,
    TResult Function(_SearchLocalProduct value)? searchLocalProduct,
    TResult Function(_GetLocalOrder value)? getLocalOrder,
    required TResult orElse(),
  }) {
    if (getLocalProduct != null) {
      return getLocalProduct(this);
    }
    return orElse();
  }
}

abstract class _GetLocalProduct implements LocalProductEvent {
  const factory _GetLocalProduct() = _$GetLocalProductImpl;
}

/// @nodoc
abstract class _$$SearchLocalProductImplCopyWith<$Res> {
  factory _$$SearchLocalProductImplCopyWith(_$SearchLocalProductImpl value,
          $Res Function(_$SearchLocalProductImpl) then) =
      __$$SearchLocalProductImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String query});
}

/// @nodoc
class __$$SearchLocalProductImplCopyWithImpl<$Res>
    extends _$LocalProductEventCopyWithImpl<$Res, _$SearchLocalProductImpl>
    implements _$$SearchLocalProductImplCopyWith<$Res> {
  __$$SearchLocalProductImplCopyWithImpl(_$SearchLocalProductImpl _value,
      $Res Function(_$SearchLocalProductImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? query = null,
  }) {
    return _then(_$SearchLocalProductImpl(
      null == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SearchLocalProductImpl
    with DiagnosticableTreeMixin
    implements _SearchLocalProduct {
  const _$SearchLocalProductImpl(this.query);

  @override
  final String query;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'LocalProductEvent.searchLocalProduct(query: $query)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'LocalProductEvent.searchLocalProduct'))
      ..add(DiagnosticsProperty('query', query));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchLocalProductImpl &&
            (identical(other.query, query) || other.query == query));
  }

  @override
  int get hashCode => Object.hash(runtimeType, query);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchLocalProductImplCopyWith<_$SearchLocalProductImpl> get copyWith =>
      __$$SearchLocalProductImplCopyWithImpl<_$SearchLocalProductImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() getLocalProduct,
    required TResult Function(String query) searchLocalProduct,
    required TResult Function() getLocalOrder,
  }) {
    return searchLocalProduct(query);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getLocalProduct,
    TResult? Function(String query)? searchLocalProduct,
    TResult? Function()? getLocalOrder,
  }) {
    return searchLocalProduct?.call(query);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getLocalProduct,
    TResult Function(String query)? searchLocalProduct,
    TResult Function()? getLocalOrder,
    required TResult orElse(),
  }) {
    if (searchLocalProduct != null) {
      return searchLocalProduct(query);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetLocalProduct value) getLocalProduct,
    required TResult Function(_SearchLocalProduct value) searchLocalProduct,
    required TResult Function(_GetLocalOrder value) getLocalOrder,
  }) {
    return searchLocalProduct(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetLocalProduct value)? getLocalProduct,
    TResult? Function(_SearchLocalProduct value)? searchLocalProduct,
    TResult? Function(_GetLocalOrder value)? getLocalOrder,
  }) {
    return searchLocalProduct?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetLocalProduct value)? getLocalProduct,
    TResult Function(_SearchLocalProduct value)? searchLocalProduct,
    TResult Function(_GetLocalOrder value)? getLocalOrder,
    required TResult orElse(),
  }) {
    if (searchLocalProduct != null) {
      return searchLocalProduct(this);
    }
    return orElse();
  }
}

abstract class _SearchLocalProduct implements LocalProductEvent {
  const factory _SearchLocalProduct(final String query) =
      _$SearchLocalProductImpl;

  String get query;
  @JsonKey(ignore: true)
  _$$SearchLocalProductImplCopyWith<_$SearchLocalProductImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetLocalOrderImplCopyWith<$Res> {
  factory _$$GetLocalOrderImplCopyWith(
          _$GetLocalOrderImpl value, $Res Function(_$GetLocalOrderImpl) then) =
      __$$GetLocalOrderImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetLocalOrderImplCopyWithImpl<$Res>
    extends _$LocalProductEventCopyWithImpl<$Res, _$GetLocalOrderImpl>
    implements _$$GetLocalOrderImplCopyWith<$Res> {
  __$$GetLocalOrderImplCopyWithImpl(
      _$GetLocalOrderImpl _value, $Res Function(_$GetLocalOrderImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetLocalOrderImpl
    with DiagnosticableTreeMixin
    implements _GetLocalOrder {
  const _$GetLocalOrderImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'LocalProductEvent.getLocalOrder()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
        .add(DiagnosticsProperty('type', 'LocalProductEvent.getLocalOrder'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetLocalOrderImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() getLocalProduct,
    required TResult Function(String query) searchLocalProduct,
    required TResult Function() getLocalOrder,
  }) {
    return getLocalOrder();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getLocalProduct,
    TResult? Function(String query)? searchLocalProduct,
    TResult? Function()? getLocalOrder,
  }) {
    return getLocalOrder?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getLocalProduct,
    TResult Function(String query)? searchLocalProduct,
    TResult Function()? getLocalOrder,
    required TResult orElse(),
  }) {
    if (getLocalOrder != null) {
      return getLocalOrder();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetLocalProduct value) getLocalProduct,
    required TResult Function(_SearchLocalProduct value) searchLocalProduct,
    required TResult Function(_GetLocalOrder value) getLocalOrder,
  }) {
    return getLocalOrder(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetLocalProduct value)? getLocalProduct,
    TResult? Function(_SearchLocalProduct value)? searchLocalProduct,
    TResult? Function(_GetLocalOrder value)? getLocalOrder,
  }) {
    return getLocalOrder?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetLocalProduct value)? getLocalProduct,
    TResult Function(_SearchLocalProduct value)? searchLocalProduct,
    TResult Function(_GetLocalOrder value)? getLocalOrder,
    required TResult orElse(),
  }) {
    if (getLocalOrder != null) {
      return getLocalOrder(this);
    }
    return orElse();
  }
}

abstract class _GetLocalOrder implements LocalProductEvent {
  const factory _GetLocalOrder() = _$GetLocalOrderImpl;
}

/// @nodoc
mixin _$LocalProductState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Product> products) loaded,
    required TResult Function(List<OrderModel> order) loadedOrder,
    required TResult Function(String message) error,
    required TResult Function() searching,
    required TResult Function(List<Product> searchResults) searched,
    required TResult Function(String message) searchError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Product> products)? loaded,
    TResult? Function(List<OrderModel> order)? loadedOrder,
    TResult? Function(String message)? error,
    TResult? Function()? searching,
    TResult? Function(List<Product> searchResults)? searched,
    TResult? Function(String message)? searchError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Product> products)? loaded,
    TResult Function(List<OrderModel> order)? loadedOrder,
    TResult Function(String message)? error,
    TResult Function()? searching,
    TResult Function(List<Product> searchResults)? searched,
    TResult Function(String message)? searchError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_LoadedOrder value) loadedOrder,
    required TResult Function(_Error value) error,
    required TResult Function(_Searching value) searching,
    required TResult Function(_Searched value) searched,
    required TResult Function(_SearchError value) searchError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_LoadedOrder value)? loadedOrder,
    TResult? Function(_Error value)? error,
    TResult? Function(_Searching value)? searching,
    TResult? Function(_Searched value)? searched,
    TResult? Function(_SearchError value)? searchError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_LoadedOrder value)? loadedOrder,
    TResult Function(_Error value)? error,
    TResult Function(_Searching value)? searching,
    TResult Function(_Searched value)? searched,
    TResult Function(_SearchError value)? searchError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocalProductStateCopyWith<$Res> {
  factory $LocalProductStateCopyWith(
          LocalProductState value, $Res Function(LocalProductState) then) =
      _$LocalProductStateCopyWithImpl<$Res, LocalProductState>;
}

/// @nodoc
class _$LocalProductStateCopyWithImpl<$Res, $Val extends LocalProductState>
    implements $LocalProductStateCopyWith<$Res> {
  _$LocalProductStateCopyWithImpl(this._value, this._then);

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
    extends _$LocalProductStateCopyWithImpl<$Res, _$InitialImpl>
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
    return 'LocalProductState.initial()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'LocalProductState.initial'));
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
    required TResult Function(List<Product> products) loaded,
    required TResult Function(List<OrderModel> order) loadedOrder,
    required TResult Function(String message) error,
    required TResult Function() searching,
    required TResult Function(List<Product> searchResults) searched,
    required TResult Function(String message) searchError,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Product> products)? loaded,
    TResult? Function(List<OrderModel> order)? loadedOrder,
    TResult? Function(String message)? error,
    TResult? Function()? searching,
    TResult? Function(List<Product> searchResults)? searched,
    TResult? Function(String message)? searchError,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Product> products)? loaded,
    TResult Function(List<OrderModel> order)? loadedOrder,
    TResult Function(String message)? error,
    TResult Function()? searching,
    TResult Function(List<Product> searchResults)? searched,
    TResult Function(String message)? searchError,
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
    required TResult Function(_LoadedOrder value) loadedOrder,
    required TResult Function(_Error value) error,
    required TResult Function(_Searching value) searching,
    required TResult Function(_Searched value) searched,
    required TResult Function(_SearchError value) searchError,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_LoadedOrder value)? loadedOrder,
    TResult? Function(_Error value)? error,
    TResult? Function(_Searching value)? searching,
    TResult? Function(_Searched value)? searched,
    TResult? Function(_SearchError value)? searchError,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_LoadedOrder value)? loadedOrder,
    TResult Function(_Error value)? error,
    TResult Function(_Searching value)? searching,
    TResult Function(_Searched value)? searched,
    TResult Function(_SearchError value)? searchError,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements LocalProductState {
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
    extends _$LocalProductStateCopyWithImpl<$Res, _$LoadingImpl>
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
    return 'LocalProductState.loading()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'LocalProductState.loading'));
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
    required TResult Function(List<Product> products) loaded,
    required TResult Function(List<OrderModel> order) loadedOrder,
    required TResult Function(String message) error,
    required TResult Function() searching,
    required TResult Function(List<Product> searchResults) searched,
    required TResult Function(String message) searchError,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Product> products)? loaded,
    TResult? Function(List<OrderModel> order)? loadedOrder,
    TResult? Function(String message)? error,
    TResult? Function()? searching,
    TResult? Function(List<Product> searchResults)? searched,
    TResult? Function(String message)? searchError,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Product> products)? loaded,
    TResult Function(List<OrderModel> order)? loadedOrder,
    TResult Function(String message)? error,
    TResult Function()? searching,
    TResult Function(List<Product> searchResults)? searched,
    TResult Function(String message)? searchError,
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
    required TResult Function(_LoadedOrder value) loadedOrder,
    required TResult Function(_Error value) error,
    required TResult Function(_Searching value) searching,
    required TResult Function(_Searched value) searched,
    required TResult Function(_SearchError value) searchError,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_LoadedOrder value)? loadedOrder,
    TResult? Function(_Error value)? error,
    TResult? Function(_Searching value)? searching,
    TResult? Function(_Searched value)? searched,
    TResult? Function(_SearchError value)? searchError,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_LoadedOrder value)? loadedOrder,
    TResult Function(_Error value)? error,
    TResult Function(_Searching value)? searching,
    TResult Function(_Searched value)? searched,
    TResult Function(_SearchError value)? searchError,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements LocalProductState {
  const factory _Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$LoadedImplCopyWith<$Res> {
  factory _$$LoadedImplCopyWith(
          _$LoadedImpl value, $Res Function(_$LoadedImpl) then) =
      __$$LoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Product> products});
}

/// @nodoc
class __$$LoadedImplCopyWithImpl<$Res>
    extends _$LocalProductStateCopyWithImpl<$Res, _$LoadedImpl>
    implements _$$LoadedImplCopyWith<$Res> {
  __$$LoadedImplCopyWithImpl(
      _$LoadedImpl _value, $Res Function(_$LoadedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? products = null,
  }) {
    return _then(_$LoadedImpl(
      null == products
          ? _value._products
          : products // ignore: cast_nullable_to_non_nullable
              as List<Product>,
    ));
  }
}

/// @nodoc

class _$LoadedImpl with DiagnosticableTreeMixin implements _Loaded {
  const _$LoadedImpl(final List<Product> products) : _products = products;

  final List<Product> _products;
  @override
  List<Product> get products {
    if (_products is EqualUnmodifiableListView) return _products;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_products);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'LocalProductState.loaded(products: $products)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'LocalProductState.loaded'))
      ..add(DiagnosticsProperty('products', products));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadedImpl &&
            const DeepCollectionEquality().equals(other._products, _products));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_products));

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
    required TResult Function(List<Product> products) loaded,
    required TResult Function(List<OrderModel> order) loadedOrder,
    required TResult Function(String message) error,
    required TResult Function() searching,
    required TResult Function(List<Product> searchResults) searched,
    required TResult Function(String message) searchError,
  }) {
    return loaded(products);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Product> products)? loaded,
    TResult? Function(List<OrderModel> order)? loadedOrder,
    TResult? Function(String message)? error,
    TResult? Function()? searching,
    TResult? Function(List<Product> searchResults)? searched,
    TResult? Function(String message)? searchError,
  }) {
    return loaded?.call(products);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Product> products)? loaded,
    TResult Function(List<OrderModel> order)? loadedOrder,
    TResult Function(String message)? error,
    TResult Function()? searching,
    TResult Function(List<Product> searchResults)? searched,
    TResult Function(String message)? searchError,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(products);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_LoadedOrder value) loadedOrder,
    required TResult Function(_Error value) error,
    required TResult Function(_Searching value) searching,
    required TResult Function(_Searched value) searched,
    required TResult Function(_SearchError value) searchError,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_LoadedOrder value)? loadedOrder,
    TResult? Function(_Error value)? error,
    TResult? Function(_Searching value)? searching,
    TResult? Function(_Searched value)? searched,
    TResult? Function(_SearchError value)? searchError,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_LoadedOrder value)? loadedOrder,
    TResult Function(_Error value)? error,
    TResult Function(_Searching value)? searching,
    TResult Function(_Searched value)? searched,
    TResult Function(_SearchError value)? searchError,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _Loaded implements LocalProductState {
  const factory _Loaded(final List<Product> products) = _$LoadedImpl;

  List<Product> get products;
  @JsonKey(ignore: true)
  _$$LoadedImplCopyWith<_$LoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadedOrderImplCopyWith<$Res> {
  factory _$$LoadedOrderImplCopyWith(
          _$LoadedOrderImpl value, $Res Function(_$LoadedOrderImpl) then) =
      __$$LoadedOrderImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<OrderModel> order});
}

/// @nodoc
class __$$LoadedOrderImplCopyWithImpl<$Res>
    extends _$LocalProductStateCopyWithImpl<$Res, _$LoadedOrderImpl>
    implements _$$LoadedOrderImplCopyWith<$Res> {
  __$$LoadedOrderImplCopyWithImpl(
      _$LoadedOrderImpl _value, $Res Function(_$LoadedOrderImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? order = null,
  }) {
    return _then(_$LoadedOrderImpl(
      null == order
          ? _value._order
          : order // ignore: cast_nullable_to_non_nullable
              as List<OrderModel>,
    ));
  }
}

/// @nodoc

class _$LoadedOrderImpl with DiagnosticableTreeMixin implements _LoadedOrder {
  const _$LoadedOrderImpl(final List<OrderModel> order) : _order = order;

  final List<OrderModel> _order;
  @override
  List<OrderModel> get order {
    if (_order is EqualUnmodifiableListView) return _order;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_order);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'LocalProductState.loadedOrder(order: $order)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'LocalProductState.loadedOrder'))
      ..add(DiagnosticsProperty('order', order));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadedOrderImpl &&
            const DeepCollectionEquality().equals(other._order, _order));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_order));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadedOrderImplCopyWith<_$LoadedOrderImpl> get copyWith =>
      __$$LoadedOrderImplCopyWithImpl<_$LoadedOrderImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Product> products) loaded,
    required TResult Function(List<OrderModel> order) loadedOrder,
    required TResult Function(String message) error,
    required TResult Function() searching,
    required TResult Function(List<Product> searchResults) searched,
    required TResult Function(String message) searchError,
  }) {
    return loadedOrder(order);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Product> products)? loaded,
    TResult? Function(List<OrderModel> order)? loadedOrder,
    TResult? Function(String message)? error,
    TResult? Function()? searching,
    TResult? Function(List<Product> searchResults)? searched,
    TResult? Function(String message)? searchError,
  }) {
    return loadedOrder?.call(order);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Product> products)? loaded,
    TResult Function(List<OrderModel> order)? loadedOrder,
    TResult Function(String message)? error,
    TResult Function()? searching,
    TResult Function(List<Product> searchResults)? searched,
    TResult Function(String message)? searchError,
    required TResult orElse(),
  }) {
    if (loadedOrder != null) {
      return loadedOrder(order);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_LoadedOrder value) loadedOrder,
    required TResult Function(_Error value) error,
    required TResult Function(_Searching value) searching,
    required TResult Function(_Searched value) searched,
    required TResult Function(_SearchError value) searchError,
  }) {
    return loadedOrder(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_LoadedOrder value)? loadedOrder,
    TResult? Function(_Error value)? error,
    TResult? Function(_Searching value)? searching,
    TResult? Function(_Searched value)? searched,
    TResult? Function(_SearchError value)? searchError,
  }) {
    return loadedOrder?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_LoadedOrder value)? loadedOrder,
    TResult Function(_Error value)? error,
    TResult Function(_Searching value)? searching,
    TResult Function(_Searched value)? searched,
    TResult Function(_SearchError value)? searchError,
    required TResult orElse(),
  }) {
    if (loadedOrder != null) {
      return loadedOrder(this);
    }
    return orElse();
  }
}

abstract class _LoadedOrder implements LocalProductState {
  const factory _LoadedOrder(final List<OrderModel> order) = _$LoadedOrderImpl;

  List<OrderModel> get order;
  @JsonKey(ignore: true)
  _$$LoadedOrderImplCopyWith<_$LoadedOrderImpl> get copyWith =>
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
    extends _$LocalProductStateCopyWithImpl<$Res, _$ErrorImpl>
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
    return 'LocalProductState.error(message: $message)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'LocalProductState.error'))
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
    required TResult Function(List<Product> products) loaded,
    required TResult Function(List<OrderModel> order) loadedOrder,
    required TResult Function(String message) error,
    required TResult Function() searching,
    required TResult Function(List<Product> searchResults) searched,
    required TResult Function(String message) searchError,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Product> products)? loaded,
    TResult? Function(List<OrderModel> order)? loadedOrder,
    TResult? Function(String message)? error,
    TResult? Function()? searching,
    TResult? Function(List<Product> searchResults)? searched,
    TResult? Function(String message)? searchError,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Product> products)? loaded,
    TResult Function(List<OrderModel> order)? loadedOrder,
    TResult Function(String message)? error,
    TResult Function()? searching,
    TResult Function(List<Product> searchResults)? searched,
    TResult Function(String message)? searchError,
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
    required TResult Function(_LoadedOrder value) loadedOrder,
    required TResult Function(_Error value) error,
    required TResult Function(_Searching value) searching,
    required TResult Function(_Searched value) searched,
    required TResult Function(_SearchError value) searchError,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_LoadedOrder value)? loadedOrder,
    TResult? Function(_Error value)? error,
    TResult? Function(_Searching value)? searching,
    TResult? Function(_Searched value)? searched,
    TResult? Function(_SearchError value)? searchError,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_LoadedOrder value)? loadedOrder,
    TResult Function(_Error value)? error,
    TResult Function(_Searching value)? searching,
    TResult Function(_Searched value)? searched,
    TResult Function(_SearchError value)? searchError,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements LocalProductState {
  const factory _Error(final String message) = _$ErrorImpl;

  String get message;
  @JsonKey(ignore: true)
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SearchingImplCopyWith<$Res> {
  factory _$$SearchingImplCopyWith(
          _$SearchingImpl value, $Res Function(_$SearchingImpl) then) =
      __$$SearchingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SearchingImplCopyWithImpl<$Res>
    extends _$LocalProductStateCopyWithImpl<$Res, _$SearchingImpl>
    implements _$$SearchingImplCopyWith<$Res> {
  __$$SearchingImplCopyWithImpl(
      _$SearchingImpl _value, $Res Function(_$SearchingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SearchingImpl with DiagnosticableTreeMixin implements _Searching {
  const _$SearchingImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'LocalProductState.searching()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'LocalProductState.searching'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SearchingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Product> products) loaded,
    required TResult Function(List<OrderModel> order) loadedOrder,
    required TResult Function(String message) error,
    required TResult Function() searching,
    required TResult Function(List<Product> searchResults) searched,
    required TResult Function(String message) searchError,
  }) {
    return searching();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Product> products)? loaded,
    TResult? Function(List<OrderModel> order)? loadedOrder,
    TResult? Function(String message)? error,
    TResult? Function()? searching,
    TResult? Function(List<Product> searchResults)? searched,
    TResult? Function(String message)? searchError,
  }) {
    return searching?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Product> products)? loaded,
    TResult Function(List<OrderModel> order)? loadedOrder,
    TResult Function(String message)? error,
    TResult Function()? searching,
    TResult Function(List<Product> searchResults)? searched,
    TResult Function(String message)? searchError,
    required TResult orElse(),
  }) {
    if (searching != null) {
      return searching();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_LoadedOrder value) loadedOrder,
    required TResult Function(_Error value) error,
    required TResult Function(_Searching value) searching,
    required TResult Function(_Searched value) searched,
    required TResult Function(_SearchError value) searchError,
  }) {
    return searching(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_LoadedOrder value)? loadedOrder,
    TResult? Function(_Error value)? error,
    TResult? Function(_Searching value)? searching,
    TResult? Function(_Searched value)? searched,
    TResult? Function(_SearchError value)? searchError,
  }) {
    return searching?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_LoadedOrder value)? loadedOrder,
    TResult Function(_Error value)? error,
    TResult Function(_Searching value)? searching,
    TResult Function(_Searched value)? searched,
    TResult Function(_SearchError value)? searchError,
    required TResult orElse(),
  }) {
    if (searching != null) {
      return searching(this);
    }
    return orElse();
  }
}

abstract class _Searching implements LocalProductState {
  const factory _Searching() = _$SearchingImpl;
}

/// @nodoc
abstract class _$$SearchedImplCopyWith<$Res> {
  factory _$$SearchedImplCopyWith(
          _$SearchedImpl value, $Res Function(_$SearchedImpl) then) =
      __$$SearchedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Product> searchResults});
}

/// @nodoc
class __$$SearchedImplCopyWithImpl<$Res>
    extends _$LocalProductStateCopyWithImpl<$Res, _$SearchedImpl>
    implements _$$SearchedImplCopyWith<$Res> {
  __$$SearchedImplCopyWithImpl(
      _$SearchedImpl _value, $Res Function(_$SearchedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? searchResults = null,
  }) {
    return _then(_$SearchedImpl(
      null == searchResults
          ? _value._searchResults
          : searchResults // ignore: cast_nullable_to_non_nullable
              as List<Product>,
    ));
  }
}

/// @nodoc

class _$SearchedImpl with DiagnosticableTreeMixin implements _Searched {
  const _$SearchedImpl(final List<Product> searchResults)
      : _searchResults = searchResults;

  final List<Product> _searchResults;
  @override
  List<Product> get searchResults {
    if (_searchResults is EqualUnmodifiableListView) return _searchResults;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_searchResults);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'LocalProductState.searched(searchResults: $searchResults)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'LocalProductState.searched'))
      ..add(DiagnosticsProperty('searchResults', searchResults));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchedImpl &&
            const DeepCollectionEquality()
                .equals(other._searchResults, _searchResults));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_searchResults));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchedImplCopyWith<_$SearchedImpl> get copyWith =>
      __$$SearchedImplCopyWithImpl<_$SearchedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Product> products) loaded,
    required TResult Function(List<OrderModel> order) loadedOrder,
    required TResult Function(String message) error,
    required TResult Function() searching,
    required TResult Function(List<Product> searchResults) searched,
    required TResult Function(String message) searchError,
  }) {
    return searched(searchResults);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Product> products)? loaded,
    TResult? Function(List<OrderModel> order)? loadedOrder,
    TResult? Function(String message)? error,
    TResult? Function()? searching,
    TResult? Function(List<Product> searchResults)? searched,
    TResult? Function(String message)? searchError,
  }) {
    return searched?.call(searchResults);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Product> products)? loaded,
    TResult Function(List<OrderModel> order)? loadedOrder,
    TResult Function(String message)? error,
    TResult Function()? searching,
    TResult Function(List<Product> searchResults)? searched,
    TResult Function(String message)? searchError,
    required TResult orElse(),
  }) {
    if (searched != null) {
      return searched(searchResults);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_LoadedOrder value) loadedOrder,
    required TResult Function(_Error value) error,
    required TResult Function(_Searching value) searching,
    required TResult Function(_Searched value) searched,
    required TResult Function(_SearchError value) searchError,
  }) {
    return searched(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_LoadedOrder value)? loadedOrder,
    TResult? Function(_Error value)? error,
    TResult? Function(_Searching value)? searching,
    TResult? Function(_Searched value)? searched,
    TResult? Function(_SearchError value)? searchError,
  }) {
    return searched?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_LoadedOrder value)? loadedOrder,
    TResult Function(_Error value)? error,
    TResult Function(_Searching value)? searching,
    TResult Function(_Searched value)? searched,
    TResult Function(_SearchError value)? searchError,
    required TResult orElse(),
  }) {
    if (searched != null) {
      return searched(this);
    }
    return orElse();
  }
}

abstract class _Searched implements LocalProductState {
  const factory _Searched(final List<Product> searchResults) = _$SearchedImpl;

  List<Product> get searchResults;
  @JsonKey(ignore: true)
  _$$SearchedImplCopyWith<_$SearchedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SearchErrorImplCopyWith<$Res> {
  factory _$$SearchErrorImplCopyWith(
          _$SearchErrorImpl value, $Res Function(_$SearchErrorImpl) then) =
      __$$SearchErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$SearchErrorImplCopyWithImpl<$Res>
    extends _$LocalProductStateCopyWithImpl<$Res, _$SearchErrorImpl>
    implements _$$SearchErrorImplCopyWith<$Res> {
  __$$SearchErrorImplCopyWithImpl(
      _$SearchErrorImpl _value, $Res Function(_$SearchErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$SearchErrorImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SearchErrorImpl with DiagnosticableTreeMixin implements _SearchError {
  const _$SearchErrorImpl(this.message);

  @override
  final String message;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'LocalProductState.searchError(message: $message)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'LocalProductState.searchError'))
      ..add(DiagnosticsProperty('message', message));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchErrorImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchErrorImplCopyWith<_$SearchErrorImpl> get copyWith =>
      __$$SearchErrorImplCopyWithImpl<_$SearchErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Product> products) loaded,
    required TResult Function(List<OrderModel> order) loadedOrder,
    required TResult Function(String message) error,
    required TResult Function() searching,
    required TResult Function(List<Product> searchResults) searched,
    required TResult Function(String message) searchError,
  }) {
    return searchError(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Product> products)? loaded,
    TResult? Function(List<OrderModel> order)? loadedOrder,
    TResult? Function(String message)? error,
    TResult? Function()? searching,
    TResult? Function(List<Product> searchResults)? searched,
    TResult? Function(String message)? searchError,
  }) {
    return searchError?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Product> products)? loaded,
    TResult Function(List<OrderModel> order)? loadedOrder,
    TResult Function(String message)? error,
    TResult Function()? searching,
    TResult Function(List<Product> searchResults)? searched,
    TResult Function(String message)? searchError,
    required TResult orElse(),
  }) {
    if (searchError != null) {
      return searchError(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_LoadedOrder value) loadedOrder,
    required TResult Function(_Error value) error,
    required TResult Function(_Searching value) searching,
    required TResult Function(_Searched value) searched,
    required TResult Function(_SearchError value) searchError,
  }) {
    return searchError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_LoadedOrder value)? loadedOrder,
    TResult? Function(_Error value)? error,
    TResult? Function(_Searching value)? searching,
    TResult? Function(_Searched value)? searched,
    TResult? Function(_SearchError value)? searchError,
  }) {
    return searchError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_LoadedOrder value)? loadedOrder,
    TResult Function(_Error value)? error,
    TResult Function(_Searching value)? searching,
    TResult Function(_Searched value)? searched,
    TResult Function(_SearchError value)? searchError,
    required TResult orElse(),
  }) {
    if (searchError != null) {
      return searchError(this);
    }
    return orElse();
  }
}

abstract class _SearchError implements LocalProductState {
  const factory _SearchError(final String message) = _$SearchErrorImpl;

  String get message;
  @JsonKey(ignore: true)
  _$$SearchErrorImplCopyWith<_$SearchErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
