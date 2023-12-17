import 'dart:async';

import 'package:api/api.dart';

/// {@template products_repository}
/// Handles all product data and should sit between your domain and
/// presentation layers.
/// {@endtemplate}
class ProductsRepository {
  /// {@macro products_repository}
  const ProductsRepository({required ProductsService productsService})
      : _productsService = productsService;

  final ProductsService _productsService;

  /// Returns a [ProductModel]
  FutureOr<ProductModel> findProduct() async {
    final response = await _productsService.findProduct();
    if (response.statusCode != 200) {
      throw FindProductException(message: response.error.toString());
    }

    if (response.body == null) {
      throw const FindProductException(
        message: 'Response body of http request is null',
      );
    }

    return response.body!;
  }
}

/// {@template find_product_exception}
/// Exception to be thrown upon [ProductsRepository.findProduct] errors.
/// {@endtemplate}
class FindProductException implements Exception {
  /// {@macro find_product_exception}
  const FindProductException({required this.message});

  /// The message containing the error
  final String message;
}
