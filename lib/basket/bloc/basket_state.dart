part of 'basket_bloc.dart';

@freezed
class BasketState with _$BasketState {
  const factory BasketState({
    @Default([]) List<BasketItemModel> items,
    @Default(false) bool eatingIn,
    @Default(0) int totalItems,
    @Default(0) double totalEatOutPrice,
    @Default(0) double totalEatInPrice,
  }) = _BasketState;
}
