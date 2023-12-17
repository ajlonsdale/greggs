part of 'basket_bloc.dart';

@freezed
class BasketEvent with _$BasketEvent {
  const factory BasketEvent.started() = _Started;

  const factory BasketEvent.orderCancelled() = _OrderCancelled;

  const factory BasketEvent.eatingLocationChanged({required bool value}) =
      _EatingLocationChanged;

  const factory BasketEvent.basketItemAdded({
    required BasketItemModel item,
  }) = _BasketItemAdded;

  const factory BasketEvent.quantityChanged({
    /// The unique identifier for the product.
    required String articleCode,

    /// The amount to adjust the quantity by.
    /// Pass Negative numbers to decrease the quantity.
    required int quantity,
  }) = _QuantityChanged;
}
