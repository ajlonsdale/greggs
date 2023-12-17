// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'products.service.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

// ignore_for_file: type=lint
final class _$ProductsService extends ProductsService {
  _$ProductsService([ChopperClient? client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final definitionType = ProductsService;

  @override
  Future<Response<ProductModel>> findProduct() {
    final Uri $url = Uri.parse('/products');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<ProductModel, ProductModel>($request);
  }
}
