import 'package:api/src/services/products/products.service.dart';
import 'package:chopper/chopper.dart';

/// Helper class to create an [Api] instance.
class Api extends ChopperService {
  /// Creates an [Api] instance.
  Api.create({required ChopperClient client})
      : products = ProductsService.create(client) {
    super.client = client;
  }

  /// Handles all product related http requests.
  final ProductsService products;

  @override
  Type get definitionType => Api;
}
