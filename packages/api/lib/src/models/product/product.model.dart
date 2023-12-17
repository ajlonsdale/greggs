import 'package:freezed_annotation/freezed_annotation.dart';

part 'product.model.freezed.dart';

part 'product.model.g.dart';

/// {@template product_model}
/// Stores all product related information.
/// {@endtemplate}
@freezed
class ProductModel with _$ProductModel {
  /// {@macro product_model}
  const factory ProductModel({
    required String articleCode,
    required String shopCode,
    required DateTime availableFrom,
    required DateTime availableUntil,
    required double eatOutPrice,
    required double eatInPrice,
    required String articleName,
    required List<String> dayParts,
    required String internalDescription,
    required String customerDescription,
    required String imageUri,
    required String thumbnailUri,
  }) = _ProductModel;

  const ProductModel._();

  /// Serializes JSON into [ProductModel]
  factory ProductModel.fromJson(Map<String, dynamic> json) =>
      _$ProductModelFromJson(json);

  /// Whether the product is a breakfast menu item
  bool get isBreakfastItem => dayParts.contains('Breakfast');

  /// Whether the product is a lunch menu item
  bool get isLunchItem => dayParts.contains('Lunch');

  /// Whether the product is an eveneing menu item
  bool get isEveningItem => dayParts.contains('Evening');
}
