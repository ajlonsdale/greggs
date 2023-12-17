// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'basket_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$BasketEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() orderCancelled,
    required TResult Function(bool value) eatingLocationChanged,
    required TResult Function(BasketItemModel item) basketItemAdded,
    required TResult Function(String articleCode, int quantity) quantityChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? orderCancelled,
    TResult? Function(bool value)? eatingLocationChanged,
    TResult? Function(BasketItemModel item)? basketItemAdded,
    TResult? Function(String articleCode, int quantity)? quantityChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? orderCancelled,
    TResult Function(bool value)? eatingLocationChanged,
    TResult Function(BasketItemModel item)? basketItemAdded,
    TResult Function(String articleCode, int quantity)? quantityChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_OrderCancelled value) orderCancelled,
    required TResult Function(_EatingLocationChanged value)
        eatingLocationChanged,
    required TResult Function(_BasketItemAdded value) basketItemAdded,
    required TResult Function(_QuantityChanged value) quantityChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_OrderCancelled value)? orderCancelled,
    TResult? Function(_EatingLocationChanged value)? eatingLocationChanged,
    TResult? Function(_BasketItemAdded value)? basketItemAdded,
    TResult? Function(_QuantityChanged value)? quantityChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_OrderCancelled value)? orderCancelled,
    TResult Function(_EatingLocationChanged value)? eatingLocationChanged,
    TResult Function(_BasketItemAdded value)? basketItemAdded,
    TResult Function(_QuantityChanged value)? quantityChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BasketEventCopyWith<$Res> {
  factory $BasketEventCopyWith(
          BasketEvent value, $Res Function(BasketEvent) then) =
      _$BasketEventCopyWithImpl<$Res, BasketEvent>;
}

/// @nodoc
class _$BasketEventCopyWithImpl<$Res, $Val extends BasketEvent>
    implements $BasketEventCopyWith<$Res> {
  _$BasketEventCopyWithImpl(this._value, this._then);

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
    extends _$BasketEventCopyWithImpl<$Res, _$StartedImpl>
    implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(
      _$StartedImpl _value, $Res Function(_$StartedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$StartedImpl implements _Started {
  const _$StartedImpl();

  @override
  String toString() {
    return 'BasketEvent.started()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StartedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() orderCancelled,
    required TResult Function(bool value) eatingLocationChanged,
    required TResult Function(BasketItemModel item) basketItemAdded,
    required TResult Function(String articleCode, int quantity) quantityChanged,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? orderCancelled,
    TResult? Function(bool value)? eatingLocationChanged,
    TResult? Function(BasketItemModel item)? basketItemAdded,
    TResult? Function(String articleCode, int quantity)? quantityChanged,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? orderCancelled,
    TResult Function(bool value)? eatingLocationChanged,
    TResult Function(BasketItemModel item)? basketItemAdded,
    TResult Function(String articleCode, int quantity)? quantityChanged,
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
    required TResult Function(_OrderCancelled value) orderCancelled,
    required TResult Function(_EatingLocationChanged value)
        eatingLocationChanged,
    required TResult Function(_BasketItemAdded value) basketItemAdded,
    required TResult Function(_QuantityChanged value) quantityChanged,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_OrderCancelled value)? orderCancelled,
    TResult? Function(_EatingLocationChanged value)? eatingLocationChanged,
    TResult? Function(_BasketItemAdded value)? basketItemAdded,
    TResult? Function(_QuantityChanged value)? quantityChanged,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_OrderCancelled value)? orderCancelled,
    TResult Function(_EatingLocationChanged value)? eatingLocationChanged,
    TResult Function(_BasketItemAdded value)? basketItemAdded,
    TResult Function(_QuantityChanged value)? quantityChanged,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements BasketEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$OrderCancelledImplCopyWith<$Res> {
  factory _$$OrderCancelledImplCopyWith(_$OrderCancelledImpl value,
          $Res Function(_$OrderCancelledImpl) then) =
      __$$OrderCancelledImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$OrderCancelledImplCopyWithImpl<$Res>
    extends _$BasketEventCopyWithImpl<$Res, _$OrderCancelledImpl>
    implements _$$OrderCancelledImplCopyWith<$Res> {
  __$$OrderCancelledImplCopyWithImpl(
      _$OrderCancelledImpl _value, $Res Function(_$OrderCancelledImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$OrderCancelledImpl implements _OrderCancelled {
  const _$OrderCancelledImpl();

  @override
  String toString() {
    return 'BasketEvent.orderCancelled()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$OrderCancelledImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() orderCancelled,
    required TResult Function(bool value) eatingLocationChanged,
    required TResult Function(BasketItemModel item) basketItemAdded,
    required TResult Function(String articleCode, int quantity) quantityChanged,
  }) {
    return orderCancelled();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? orderCancelled,
    TResult? Function(bool value)? eatingLocationChanged,
    TResult? Function(BasketItemModel item)? basketItemAdded,
    TResult? Function(String articleCode, int quantity)? quantityChanged,
  }) {
    return orderCancelled?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? orderCancelled,
    TResult Function(bool value)? eatingLocationChanged,
    TResult Function(BasketItemModel item)? basketItemAdded,
    TResult Function(String articleCode, int quantity)? quantityChanged,
    required TResult orElse(),
  }) {
    if (orderCancelled != null) {
      return orderCancelled();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_OrderCancelled value) orderCancelled,
    required TResult Function(_EatingLocationChanged value)
        eatingLocationChanged,
    required TResult Function(_BasketItemAdded value) basketItemAdded,
    required TResult Function(_QuantityChanged value) quantityChanged,
  }) {
    return orderCancelled(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_OrderCancelled value)? orderCancelled,
    TResult? Function(_EatingLocationChanged value)? eatingLocationChanged,
    TResult? Function(_BasketItemAdded value)? basketItemAdded,
    TResult? Function(_QuantityChanged value)? quantityChanged,
  }) {
    return orderCancelled?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_OrderCancelled value)? orderCancelled,
    TResult Function(_EatingLocationChanged value)? eatingLocationChanged,
    TResult Function(_BasketItemAdded value)? basketItemAdded,
    TResult Function(_QuantityChanged value)? quantityChanged,
    required TResult orElse(),
  }) {
    if (orderCancelled != null) {
      return orderCancelled(this);
    }
    return orElse();
  }
}

abstract class _OrderCancelled implements BasketEvent {
  const factory _OrderCancelled() = _$OrderCancelledImpl;
}

/// @nodoc
abstract class _$$EatingLocationChangedImplCopyWith<$Res> {
  factory _$$EatingLocationChangedImplCopyWith(
          _$EatingLocationChangedImpl value,
          $Res Function(_$EatingLocationChangedImpl) then) =
      __$$EatingLocationChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({bool value});
}

/// @nodoc
class __$$EatingLocationChangedImplCopyWithImpl<$Res>
    extends _$BasketEventCopyWithImpl<$Res, _$EatingLocationChangedImpl>
    implements _$$EatingLocationChangedImplCopyWith<$Res> {
  __$$EatingLocationChangedImplCopyWithImpl(_$EatingLocationChangedImpl _value,
      $Res Function(_$EatingLocationChangedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_$EatingLocationChangedImpl(
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$EatingLocationChangedImpl implements _EatingLocationChanged {
  const _$EatingLocationChangedImpl({required this.value});

  @override
  final bool value;

  @override
  String toString() {
    return 'BasketEvent.eatingLocationChanged(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EatingLocationChangedImpl &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EatingLocationChangedImplCopyWith<_$EatingLocationChangedImpl>
      get copyWith => __$$EatingLocationChangedImplCopyWithImpl<
          _$EatingLocationChangedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() orderCancelled,
    required TResult Function(bool value) eatingLocationChanged,
    required TResult Function(BasketItemModel item) basketItemAdded,
    required TResult Function(String articleCode, int quantity) quantityChanged,
  }) {
    return eatingLocationChanged(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? orderCancelled,
    TResult? Function(bool value)? eatingLocationChanged,
    TResult? Function(BasketItemModel item)? basketItemAdded,
    TResult? Function(String articleCode, int quantity)? quantityChanged,
  }) {
    return eatingLocationChanged?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? orderCancelled,
    TResult Function(bool value)? eatingLocationChanged,
    TResult Function(BasketItemModel item)? basketItemAdded,
    TResult Function(String articleCode, int quantity)? quantityChanged,
    required TResult orElse(),
  }) {
    if (eatingLocationChanged != null) {
      return eatingLocationChanged(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_OrderCancelled value) orderCancelled,
    required TResult Function(_EatingLocationChanged value)
        eatingLocationChanged,
    required TResult Function(_BasketItemAdded value) basketItemAdded,
    required TResult Function(_QuantityChanged value) quantityChanged,
  }) {
    return eatingLocationChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_OrderCancelled value)? orderCancelled,
    TResult? Function(_EatingLocationChanged value)? eatingLocationChanged,
    TResult? Function(_BasketItemAdded value)? basketItemAdded,
    TResult? Function(_QuantityChanged value)? quantityChanged,
  }) {
    return eatingLocationChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_OrderCancelled value)? orderCancelled,
    TResult Function(_EatingLocationChanged value)? eatingLocationChanged,
    TResult Function(_BasketItemAdded value)? basketItemAdded,
    TResult Function(_QuantityChanged value)? quantityChanged,
    required TResult orElse(),
  }) {
    if (eatingLocationChanged != null) {
      return eatingLocationChanged(this);
    }
    return orElse();
  }
}

abstract class _EatingLocationChanged implements BasketEvent {
  const factory _EatingLocationChanged({required final bool value}) =
      _$EatingLocationChangedImpl;

  bool get value;
  @JsonKey(ignore: true)
  _$$EatingLocationChangedImplCopyWith<_$EatingLocationChangedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$BasketItemAddedImplCopyWith<$Res> {
  factory _$$BasketItemAddedImplCopyWith(_$BasketItemAddedImpl value,
          $Res Function(_$BasketItemAddedImpl) then) =
      __$$BasketItemAddedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({BasketItemModel item});

  $BasketItemModelCopyWith<$Res> get item;
}

/// @nodoc
class __$$BasketItemAddedImplCopyWithImpl<$Res>
    extends _$BasketEventCopyWithImpl<$Res, _$BasketItemAddedImpl>
    implements _$$BasketItemAddedImplCopyWith<$Res> {
  __$$BasketItemAddedImplCopyWithImpl(
      _$BasketItemAddedImpl _value, $Res Function(_$BasketItemAddedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? item = null,
  }) {
    return _then(_$BasketItemAddedImpl(
      item: null == item
          ? _value.item
          : item // ignore: cast_nullable_to_non_nullable
              as BasketItemModel,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $BasketItemModelCopyWith<$Res> get item {
    return $BasketItemModelCopyWith<$Res>(_value.item, (value) {
      return _then(_value.copyWith(item: value));
    });
  }
}

/// @nodoc

class _$BasketItemAddedImpl implements _BasketItemAdded {
  const _$BasketItemAddedImpl({required this.item});

  @override
  final BasketItemModel item;

  @override
  String toString() {
    return 'BasketEvent.basketItemAdded(item: $item)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BasketItemAddedImpl &&
            (identical(other.item, item) || other.item == item));
  }

  @override
  int get hashCode => Object.hash(runtimeType, item);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BasketItemAddedImplCopyWith<_$BasketItemAddedImpl> get copyWith =>
      __$$BasketItemAddedImplCopyWithImpl<_$BasketItemAddedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() orderCancelled,
    required TResult Function(bool value) eatingLocationChanged,
    required TResult Function(BasketItemModel item) basketItemAdded,
    required TResult Function(String articleCode, int quantity) quantityChanged,
  }) {
    return basketItemAdded(item);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? orderCancelled,
    TResult? Function(bool value)? eatingLocationChanged,
    TResult? Function(BasketItemModel item)? basketItemAdded,
    TResult? Function(String articleCode, int quantity)? quantityChanged,
  }) {
    return basketItemAdded?.call(item);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? orderCancelled,
    TResult Function(bool value)? eatingLocationChanged,
    TResult Function(BasketItemModel item)? basketItemAdded,
    TResult Function(String articleCode, int quantity)? quantityChanged,
    required TResult orElse(),
  }) {
    if (basketItemAdded != null) {
      return basketItemAdded(item);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_OrderCancelled value) orderCancelled,
    required TResult Function(_EatingLocationChanged value)
        eatingLocationChanged,
    required TResult Function(_BasketItemAdded value) basketItemAdded,
    required TResult Function(_QuantityChanged value) quantityChanged,
  }) {
    return basketItemAdded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_OrderCancelled value)? orderCancelled,
    TResult? Function(_EatingLocationChanged value)? eatingLocationChanged,
    TResult? Function(_BasketItemAdded value)? basketItemAdded,
    TResult? Function(_QuantityChanged value)? quantityChanged,
  }) {
    return basketItemAdded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_OrderCancelled value)? orderCancelled,
    TResult Function(_EatingLocationChanged value)? eatingLocationChanged,
    TResult Function(_BasketItemAdded value)? basketItemAdded,
    TResult Function(_QuantityChanged value)? quantityChanged,
    required TResult orElse(),
  }) {
    if (basketItemAdded != null) {
      return basketItemAdded(this);
    }
    return orElse();
  }
}

abstract class _BasketItemAdded implements BasketEvent {
  const factory _BasketItemAdded({required final BasketItemModel item}) =
      _$BasketItemAddedImpl;

  BasketItemModel get item;
  @JsonKey(ignore: true)
  _$$BasketItemAddedImplCopyWith<_$BasketItemAddedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$QuantityChangedImplCopyWith<$Res> {
  factory _$$QuantityChangedImplCopyWith(_$QuantityChangedImpl value,
          $Res Function(_$QuantityChangedImpl) then) =
      __$$QuantityChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String articleCode, int quantity});
}

/// @nodoc
class __$$QuantityChangedImplCopyWithImpl<$Res>
    extends _$BasketEventCopyWithImpl<$Res, _$QuantityChangedImpl>
    implements _$$QuantityChangedImplCopyWith<$Res> {
  __$$QuantityChangedImplCopyWithImpl(
      _$QuantityChangedImpl _value, $Res Function(_$QuantityChangedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? articleCode = null,
    Object? quantity = null,
  }) {
    return _then(_$QuantityChangedImpl(
      articleCode: null == articleCode
          ? _value.articleCode
          : articleCode // ignore: cast_nullable_to_non_nullable
              as String,
      quantity: null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$QuantityChangedImpl implements _QuantityChanged {
  const _$QuantityChangedImpl(
      {required this.articleCode, required this.quantity});

  /// The unique identifier for the product.
  @override
  final String articleCode;

  /// The amount to adjust the quantity by.
  /// Pass Negative numbers to decrease the quantity.
  @override
  final int quantity;

  @override
  String toString() {
    return 'BasketEvent.quantityChanged(articleCode: $articleCode, quantity: $quantity)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QuantityChangedImpl &&
            (identical(other.articleCode, articleCode) ||
                other.articleCode == articleCode) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity));
  }

  @override
  int get hashCode => Object.hash(runtimeType, articleCode, quantity);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$QuantityChangedImplCopyWith<_$QuantityChangedImpl> get copyWith =>
      __$$QuantityChangedImplCopyWithImpl<_$QuantityChangedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() orderCancelled,
    required TResult Function(bool value) eatingLocationChanged,
    required TResult Function(BasketItemModel item) basketItemAdded,
    required TResult Function(String articleCode, int quantity) quantityChanged,
  }) {
    return quantityChanged(articleCode, quantity);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? orderCancelled,
    TResult? Function(bool value)? eatingLocationChanged,
    TResult? Function(BasketItemModel item)? basketItemAdded,
    TResult? Function(String articleCode, int quantity)? quantityChanged,
  }) {
    return quantityChanged?.call(articleCode, quantity);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? orderCancelled,
    TResult Function(bool value)? eatingLocationChanged,
    TResult Function(BasketItemModel item)? basketItemAdded,
    TResult Function(String articleCode, int quantity)? quantityChanged,
    required TResult orElse(),
  }) {
    if (quantityChanged != null) {
      return quantityChanged(articleCode, quantity);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_OrderCancelled value) orderCancelled,
    required TResult Function(_EatingLocationChanged value)
        eatingLocationChanged,
    required TResult Function(_BasketItemAdded value) basketItemAdded,
    required TResult Function(_QuantityChanged value) quantityChanged,
  }) {
    return quantityChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_OrderCancelled value)? orderCancelled,
    TResult? Function(_EatingLocationChanged value)? eatingLocationChanged,
    TResult? Function(_BasketItemAdded value)? basketItemAdded,
    TResult? Function(_QuantityChanged value)? quantityChanged,
  }) {
    return quantityChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_OrderCancelled value)? orderCancelled,
    TResult Function(_EatingLocationChanged value)? eatingLocationChanged,
    TResult Function(_BasketItemAdded value)? basketItemAdded,
    TResult Function(_QuantityChanged value)? quantityChanged,
    required TResult orElse(),
  }) {
    if (quantityChanged != null) {
      return quantityChanged(this);
    }
    return orElse();
  }
}

abstract class _QuantityChanged implements BasketEvent {
  const factory _QuantityChanged(
      {required final String articleCode,
      required final int quantity}) = _$QuantityChangedImpl;

  /// The unique identifier for the product.
  String get articleCode;

  /// The amount to adjust the quantity by.
  /// Pass Negative numbers to decrease the quantity.
  int get quantity;
  @JsonKey(ignore: true)
  _$$QuantityChangedImplCopyWith<_$QuantityChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$BasketState {
  List<BasketItemModel> get items => throw _privateConstructorUsedError;
  bool get eatingIn => throw _privateConstructorUsedError;
  int get totalItems => throw _privateConstructorUsedError;
  double get totalEatOutPrice => throw _privateConstructorUsedError;
  double get totalEatInPrice => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BasketStateCopyWith<BasketState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BasketStateCopyWith<$Res> {
  factory $BasketStateCopyWith(
          BasketState value, $Res Function(BasketState) then) =
      _$BasketStateCopyWithImpl<$Res, BasketState>;
  @useResult
  $Res call(
      {List<BasketItemModel> items,
      bool eatingIn,
      int totalItems,
      double totalEatOutPrice,
      double totalEatInPrice});
}

/// @nodoc
class _$BasketStateCopyWithImpl<$Res, $Val extends BasketState>
    implements $BasketStateCopyWith<$Res> {
  _$BasketStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? items = null,
    Object? eatingIn = null,
    Object? totalItems = null,
    Object? totalEatOutPrice = null,
    Object? totalEatInPrice = null,
  }) {
    return _then(_value.copyWith(
      items: null == items
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<BasketItemModel>,
      eatingIn: null == eatingIn
          ? _value.eatingIn
          : eatingIn // ignore: cast_nullable_to_non_nullable
              as bool,
      totalItems: null == totalItems
          ? _value.totalItems
          : totalItems // ignore: cast_nullable_to_non_nullable
              as int,
      totalEatOutPrice: null == totalEatOutPrice
          ? _value.totalEatOutPrice
          : totalEatOutPrice // ignore: cast_nullable_to_non_nullable
              as double,
      totalEatInPrice: null == totalEatInPrice
          ? _value.totalEatInPrice
          : totalEatInPrice // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BasketStateImplCopyWith<$Res>
    implements $BasketStateCopyWith<$Res> {
  factory _$$BasketStateImplCopyWith(
          _$BasketStateImpl value, $Res Function(_$BasketStateImpl) then) =
      __$$BasketStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<BasketItemModel> items,
      bool eatingIn,
      int totalItems,
      double totalEatOutPrice,
      double totalEatInPrice});
}

/// @nodoc
class __$$BasketStateImplCopyWithImpl<$Res>
    extends _$BasketStateCopyWithImpl<$Res, _$BasketStateImpl>
    implements _$$BasketStateImplCopyWith<$Res> {
  __$$BasketStateImplCopyWithImpl(
      _$BasketStateImpl _value, $Res Function(_$BasketStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? items = null,
    Object? eatingIn = null,
    Object? totalItems = null,
    Object? totalEatOutPrice = null,
    Object? totalEatInPrice = null,
  }) {
    return _then(_$BasketStateImpl(
      items: null == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<BasketItemModel>,
      eatingIn: null == eatingIn
          ? _value.eatingIn
          : eatingIn // ignore: cast_nullable_to_non_nullable
              as bool,
      totalItems: null == totalItems
          ? _value.totalItems
          : totalItems // ignore: cast_nullable_to_non_nullable
              as int,
      totalEatOutPrice: null == totalEatOutPrice
          ? _value.totalEatOutPrice
          : totalEatOutPrice // ignore: cast_nullable_to_non_nullable
              as double,
      totalEatInPrice: null == totalEatInPrice
          ? _value.totalEatInPrice
          : totalEatInPrice // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$BasketStateImpl implements _BasketState {
  const _$BasketStateImpl(
      {final List<BasketItemModel> items = const [],
      this.eatingIn = false,
      this.totalItems = 0,
      this.totalEatOutPrice = 0,
      this.totalEatInPrice = 0})
      : _items = items;

  final List<BasketItemModel> _items;
  @override
  @JsonKey()
  List<BasketItemModel> get items {
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @override
  @JsonKey()
  final bool eatingIn;
  @override
  @JsonKey()
  final int totalItems;
  @override
  @JsonKey()
  final double totalEatOutPrice;
  @override
  @JsonKey()
  final double totalEatInPrice;

  @override
  String toString() {
    return 'BasketState(items: $items, eatingIn: $eatingIn, totalItems: $totalItems, totalEatOutPrice: $totalEatOutPrice, totalEatInPrice: $totalEatInPrice)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BasketStateImpl &&
            const DeepCollectionEquality().equals(other._items, _items) &&
            (identical(other.eatingIn, eatingIn) ||
                other.eatingIn == eatingIn) &&
            (identical(other.totalItems, totalItems) ||
                other.totalItems == totalItems) &&
            (identical(other.totalEatOutPrice, totalEatOutPrice) ||
                other.totalEatOutPrice == totalEatOutPrice) &&
            (identical(other.totalEatInPrice, totalEatInPrice) ||
                other.totalEatInPrice == totalEatInPrice));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_items),
      eatingIn,
      totalItems,
      totalEatOutPrice,
      totalEatInPrice);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BasketStateImplCopyWith<_$BasketStateImpl> get copyWith =>
      __$$BasketStateImplCopyWithImpl<_$BasketStateImpl>(this, _$identity);
}

abstract class _BasketState implements BasketState {
  const factory _BasketState(
      {final List<BasketItemModel> items,
      final bool eatingIn,
      final int totalItems,
      final double totalEatOutPrice,
      final double totalEatInPrice}) = _$BasketStateImpl;

  @override
  List<BasketItemModel> get items;
  @override
  bool get eatingIn;
  @override
  int get totalItems;
  @override
  double get totalEatOutPrice;
  @override
  double get totalEatInPrice;
  @override
  @JsonKey(ignore: true)
  _$$BasketStateImplCopyWith<_$BasketStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
