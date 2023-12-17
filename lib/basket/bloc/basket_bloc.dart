import 'package:bloc/bloc.dart';
import 'package:collection/collection.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:greggs/basket/models/basket_item/basket_item.model.dart';

part 'basket_bloc.freezed.dart';
part 'basket_event.dart';
part 'basket_state.dart';

class BasketBloc extends Bloc<BasketEvent, BasketState> {
  BasketBloc() : super(const BasketState()) {
    on<_BasketItemAdded>(_basketItemAdded);
    on<_QuantityChanged>(_quantityChanged);
    on<_OrderCancelled>(_orderCancelled);
    on<_EatingLocationChanged>(_eatingLocationChanged);
  }

  void _basketItemAdded(_BasketItemAdded event, Emitter<BasketState> emit) {
    var items = state.items;

    final existingProductIndex = items.indexWhere(
      (item) => item.product.articleCode == event.item.product.articleCode,
    );

    if (existingProductIndex >= 0) {
      items = items.mapIndexed((index, item) {
        if (index == existingProductIndex) {
          return item.copyWith(quantity: item.quantity + event.item.quantity);
        }
        return item;
      }).toList();
    } else {
      items = [...state.items, event.item];
    }

    emit(
      state.copyWith(
        items: items,
        totalItems: state.totalItems + event.item.quantity,
        totalEatOutPrice: _calculateEatOutPrice(items),
        totalEatInPrice: _calculateEatInPrice(items),
      ),
    );
  }

  void _quantityChanged(
    _QuantityChanged event,
    Emitter<BasketState> emit,
  ) {
    final items = state.items.map((item) {
      if (item.product.articleCode == event.articleCode) {
        return item.copyWith(quantity: item.quantity + event.quantity);
      }
      return item;
    }).toList()
      ..removeWhere((item) => item.quantity == 0);

    emit(
      state.copyWith(
        items: items,
        totalItems: state.totalItems + event.quantity,
        totalEatOutPrice: _calculateEatOutPrice(items),
        totalEatInPrice: _calculateEatInPrice(items),
      ),
    );
  }

  void _orderCancelled(
    _OrderCancelled event,
    Emitter<BasketState> emit,
  ) {
    emit(const BasketState());
  }

  void _eatingLocationChanged(
    _EatingLocationChanged event,
    Emitter<BasketState> emit,
  ) =>
      emit(state.copyWith(eatingIn: event.value));

  double _calculateEatOutPrice(List<BasketItemModel> items) {
    return items.fold(
      0,
      (prev, curr) => (curr.product.eatOutPrice * curr.quantity) + prev,
    );
  }

  double _calculateEatInPrice(List<BasketItemModel> items) {
    return items.fold(
      0,
      (prev, curr) => (curr.product.eatInPrice * curr.quantity) + prev,
    );
  }
}
