// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'basket_item.model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$BasketItemModel {
  ProductModel get product => throw _privateConstructorUsedError;
  int get quantity => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BasketItemModelCopyWith<BasketItemModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BasketItemModelCopyWith<$Res> {
  factory $BasketItemModelCopyWith(
          BasketItemModel value, $Res Function(BasketItemModel) then) =
      _$BasketItemModelCopyWithImpl<$Res, BasketItemModel>;
  @useResult
  $Res call({ProductModel product, int quantity});

  $ProductModelCopyWith<$Res> get product;
}

/// @nodoc
class _$BasketItemModelCopyWithImpl<$Res, $Val extends BasketItemModel>
    implements $BasketItemModelCopyWith<$Res> {
  _$BasketItemModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? product = null,
    Object? quantity = null,
  }) {
    return _then(_value.copyWith(
      product: null == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as ProductModel,
      quantity: null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ProductModelCopyWith<$Res> get product {
    return $ProductModelCopyWith<$Res>(_value.product, (value) {
      return _then(_value.copyWith(product: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$BasketItemModelImplCopyWith<$Res>
    implements $BasketItemModelCopyWith<$Res> {
  factory _$$BasketItemModelImplCopyWith(_$BasketItemModelImpl value,
          $Res Function(_$BasketItemModelImpl) then) =
      __$$BasketItemModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ProductModel product, int quantity});

  @override
  $ProductModelCopyWith<$Res> get product;
}

/// @nodoc
class __$$BasketItemModelImplCopyWithImpl<$Res>
    extends _$BasketItemModelCopyWithImpl<$Res, _$BasketItemModelImpl>
    implements _$$BasketItemModelImplCopyWith<$Res> {
  __$$BasketItemModelImplCopyWithImpl(
      _$BasketItemModelImpl _value, $Res Function(_$BasketItemModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? product = null,
    Object? quantity = null,
  }) {
    return _then(_$BasketItemModelImpl(
      product: null == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as ProductModel,
      quantity: null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$BasketItemModelImpl implements _BasketItemModel {
  const _$BasketItemModelImpl({required this.product, this.quantity = 1});

  @override
  final ProductModel product;
  @override
  @JsonKey()
  final int quantity;

  @override
  String toString() {
    return 'BasketItemModel(product: $product, quantity: $quantity)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BasketItemModelImpl &&
            (identical(other.product, product) || other.product == product) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity));
  }

  @override
  int get hashCode => Object.hash(runtimeType, product, quantity);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BasketItemModelImplCopyWith<_$BasketItemModelImpl> get copyWith =>
      __$$BasketItemModelImplCopyWithImpl<_$BasketItemModelImpl>(
          this, _$identity);
}

abstract class _BasketItemModel implements BasketItemModel {
  const factory _BasketItemModel(
      {required final ProductModel product,
      final int quantity}) = _$BasketItemModelImpl;

  @override
  ProductModel get product;
  @override
  int get quantity;
  @override
  @JsonKey(ignore: true)
  _$$BasketItemModelImplCopyWith<_$BasketItemModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
