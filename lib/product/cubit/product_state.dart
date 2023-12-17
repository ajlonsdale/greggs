part of 'product_cubit.dart';

@freezed
class ProductState with _$ProductState {
  const factory ProductState({
    @Default(false) bool isLoading,
    @Default(false) bool isError,
    ProductModel? product,
  }) = _ProductState;
}
