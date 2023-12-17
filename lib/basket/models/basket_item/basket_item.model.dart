import 'package:api/api.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'basket_item.model.freezed.dart';

@freezed
class BasketItemModel with _$BasketItemModel {
  const factory BasketItemModel({
    required ProductModel product,
    @Default(1) int quantity,
  }) = _BasketItemModel;
}
